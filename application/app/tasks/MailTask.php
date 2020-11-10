<?php

declare (strict_types = 1);

use Phalcon\Mvc\Model\Query\Builder;

class MailTask extends Phalcon\CLI\Task
{
    public function mainAction()
    {
        $users = new Builder();
        $users
            ->columns([
                "Users.id",
                "Users.email",
                "Timezones.value",
                "currentTime" => "date_format(CONVERT_TZ(now(), 'GMT', Timezones.value),'%H:%i')",
            ])
            ->addFrom(
                Users::class
            )->leftJoin(
            Timezones::class,
            "Timezones.id = Users.timezone"
        )->where(
        "date_format(CONVERT_TZ(now(), 'GMT', Timezones.value),'%H:%i') = '09:00'"
        );
        $userList = $users->getQuery()->execute();
        foreach ($userList as $user) {
            $this->sendMail($user->email, $this->getWeathers($user->id));
        }
    }

    private function sendMail($email, $message)
    {
        echo "E-mail has been sent to : " . $email . "\n";
        foreach ($message as $m) {
            echo "City : " . $m->city . " | Temperature : " . $m->temperature."\n";
        }
    }

    public function getWeathers($user_id)
    {
        $weathers = new Builder();
        $weathers
        ->columns([
            'WeatherList.temperature',
            'Cities.city',
        ])
        ->addFrom(
            UserWeatherList::class
        )->leftJoin(
            WeatherList::class,
            "WeatherList.city = UserWeatherList.city"
        )->leftJoin(
            Cities::class,
            "Cities.id = UserWeatherList.city"
        )->where(
            "UserWeatherList.user_id = ".$user_id." AND WeatherList.date = curdate()"
        );
        return $weathers->getQuery()->execute();
    }

}
