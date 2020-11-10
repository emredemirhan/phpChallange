<?php

declare(strict_types=1);

use Phalcon\Mvc\Model\Query\Builder;

class NotificationTask extends Phalcon\CLI\Task
{
    public function mainAction()
    {
        $users = new Builder();
        $users
        ->columns([
            "Users.id",
            "Users.tokennot",
            "Users.email",
            "Timezones.value",
            "currentTime" => "date_format(CONVERT_TZ(now(), 'GMT', Timezones.value),'%H:%i')"
        ])
        ->addFrom(
           Users::class
       )->leftJoin(
           Timezones::class,
           "Timezones.id = Users.timezone"
       );/*->where(
           "date_format(CONVERT_TZ(now(), 'GMT', Timezones.value),'%H:%i') = '09:00'"
       )*/
       $userList = $users->getQuery()->execute();
       forEach($userList as $user){
            $this->sendNotification($user->tokennot,$user->email,MailTask::getWeathers($user->id));
       }
    }

    private function sendNotification($not,$email,$message){
        echo "Notification has been sent to : ".$not."(".$email.")\n";
        foreach ($message as $m) {
            echo "City : " . $m->city . " | Temperature : " . $m->temperature."\n";
        }
    }
    

}