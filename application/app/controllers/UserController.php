<?php
declare (strict_types = 1);

use Firebase\JWT\JWT;

class UserController extends ControllerBase
{

    public function registerAction()
    {
        if (true === $this->request->isPost()) {
            $user = new Users();
            $pass = $this->request->getPost('password');
            $user->assign(
                $_POST,
                [
                    'email',
                    'password',
                    'phone',
                    'city',
                    'timezone',
                    'language',
                    'os',
                ]
            );
            $random = new \Phalcon\Security\Random();
            $user->password = $this->security->hash($pass);
            $user->tokennot = $random->hex(13);
            try {
                if (false === $user->save()) {
                    $messages = $user->getMessages();
                    $m = "";
                    foreach ($messages as $message) {
                        $m = $m . $message->getMessage();
                    }
                    return array('message' => 'Error creating user: ' . $m, 'StatusCode' => 409);
                } else {
                    $this->response->setStatusCode(201, 'Created');
                    return array('message' => 'User created.');
                }
            } catch (PDOException $e) {
                return array('message' => $e->getMessage(), 'code' => $e->getCode());
            }
        } else {
            return array("message" => "Only POST method is allowed", "StatusCode" => 405);
        }
    }

    public function loginAction()
    {
        if (true === $this->request->isPost()) {
            $email = $this->request->getPost("email");
            $password = $this->request->getPost('password');
            $user = Users::findFirstByEmail($email);

            if ($user) {
                if ($this->security->checkHash($password, $user->password)) {
                    $key = base64_decode($this->config->jwt->key);
                    $time = time();
                    $expires = $time;
                    $token = [
                        'iss' => $this->request->getURI(),
                        'iat' => $time,
                        'exp' => $expires + $this->config->jwt->expire,
                        'data' => [
                            'id' => $user->id,
                            'email' => $user->email,
                        ],
                    ];
                    $jwt = JWT::encode($token, $key);

                    return array('message' => 'Login successful. Token is valid for ' . $this->config->jwt->expire . " seconds.", 'token' => $jwt);
                } else {
                    return array('message' => 'Wrong username/password combination.', "StatusCode" => 401);
                }
            } else {
                return array('message' => 'Wrong username/password combination.', "StatusCode" => 401);
            }
        } else {
            return array("message" => "Only POST method is allowed", "StatusCode" => 405);
        }
    }

    public function updateProfileAction()
    {
        if (true === $this->request->isPost()) {
            $user = Users::findFirst(array('id' => $this->user->data->id));
            $pass = $this->request->getPost('password');
            $user->assign(
                $_POST,
                [
                    'email',
                    'password',
                    'phone',
                    'city',
                    'timezone',
                    'language',
                    'os',
                ]
            );

            $allowedFileFormats = array(
                'image/jpeg' => 'jpg',
                'image/png' => 'png',
            );

            if ($this->request->hasFiles()) {
                $files = $this->request->getUploadedFiles();
                foreach ($files as $file) {
                    if ($file->getKey() == "profile_photo") {
                        if (array_key_exists($file->getRealType(), $allowedFileFormats)) {
                            if ($file->getSize() > 512000) {
                                return array("error" => "This file size for profile photo exceeds maximum value. It should be smaller than 512KB.", "StatusCode" => 400);
                            } else {
                                $user->profile_photo = base64_encode(file_get_contents($file->getTempName()));
                            }
                        } else {
                            return array("error" => "This file type for profile photo is not supported. Consider using jpeg or png", "StatusCode" => 400);
                        }
                    }
                }
            }
            if ($pass) {
                $user->password = $this->security->hash($pass);
            }
            if (!$user->save()) {
                return array('error' => $user->getMessages());
            } else {
                return array('message' => "Profile has been updated successfully");
            }
        } else {
            return array("message" => "Only POST method is allowed", "StatusCode" => 405);
        }
    }

    public function activateGiftAction()
    {
        if (true === $this->request->isPost()) {
            $giftCode = $this->request->getPost('giftCode');
            if (!$giftCode) {
                return array('message' => "Gift code cannot be empty", 'StatusCode' => 400);
            } else {
                $validCode = GiftCodes::findFirst(
                    [
                        'conditions' => 'code = :code: AND used = 0',
                        'bind' => [
                            'code' => $giftCode,
                        ],
                    ]
                );
                if (!$validCode) {
                    return array('message' => "Gift code is not valid or already used.", 'StatusCode' => 400);
                } else {
                    $user = Users::findFirstByEmail($this->user->data->email);
                    if ($user->subscription == "free") {
                        return array('message' => "You already used a gift code for your account.");
                    } else {
                        $validCode->used = 1;
                        $validCode->update();
                        $user->subscription = "free";
                        $user->update();
                        return array('message' => "Gift code accepted. Your account's (" . $user->email . ") subscription type changed from paid to free");
                    }
                }
            }
        } else {
            return array("message" => "Only POST method is allowed", "StatusCode" => 405);
        }
    }

    public function getCitiesAction()
    {
        try {
            $cities = new Cities();
            $city_list = $cities->find(array('columns' => 'id, city'));
            if (count($city_list) == 0) {
                return array('message' => 'No cities found in the database', "StatusCode" => 404);
            } else {
                return array('data' => $city_list);
            }
        } catch (Exception $e) {
            return array('message' => $e->getMessage(), 'code' => $e->getCode());
        }
    }

    public function getLanguagesAction()
    {
        try {
            $langs = new Languages();
            $lang_list = $langs->find();
            if (count($lang_list) == 0) {
                return array('message' => 'No languages found in the database', "StatusCode" => 404);
            } else {
                return array('data' => $lang_list);
            }
        } catch (Exception $e) {
            return array('message' => $e->getMessage(), 'code' => $e->getCode());
        }
    }

    public function getTimezonesAction()
    {
        try {
            $times = new Timezones();
            $times_list = $times->find(array('columns' => 'id,timezone'));
            if (count($times_list) == 0) {
                return array('message' => 'No timezone is found in the database', "StatusCode" => 404);
            } else {
                return array('data' => $times_list);
            }
        } catch (Exception $e) {
            return array('message' => $e->getMessage(), 'code' => $e->getCode());
        }
    }

    public function addCityToProfileAction($city_id = null)
    {
        if ($city_id) {
            $user = Users::findFirstByEmail($this->user->data->email);
            $ifExist = UserWeatherList::find(
                [
                    'conditions' => 'user_id = :user_id: and city = :city:',
                    'bind' => [
                        'user_id' => $user->id,
                        'city' => $city_id,
                    ],
                ]
            );
            if (count($ifExist) == 0) {
                try {
                    $city = Cities::findFirstById($city_id);
                    $newCity = new UserWeatherList();
                    $newCity->city = $city_id;
                    $newCity->user_id = $user->id;
                    $newCity->save();
                    return array('message' => $city->city . " city has been added to your profile successfully.");
                } catch (Exception $e) {
                    return array('error' => $e->getMessage());
                }
            } else {
                return array('error' => "This city is already added to your profile.", 'StatusCode' => 400);
            }
        } else {
            return array('error' => 'You must specify a city id value.', 'StatusCode' => 400);
        }
    }

    public function removeCityFromProfileAction($city_id = null)
    {
        if ($city_id) {
            $user = Users::findFirstByEmail($this->user->data->email);
            $ifExist = UserWeatherList::findFirst(
                [
                    'conditions' => 'user_id = :user_id: and city = :city:',
                    'bind' => [
                        'user_id' => $user->id,
                        'city' => $city_id,
                    ],
                ]
            );
            if (!$ifExist) {
                return array('error' => "This city does not exist in your profile.");
            } else {
                try {
                    $city = Cities::findFirstById($city_id);
                    $ifExist->delete();
                    return array('message' => $city->city . " city has been removed from your profile successfully.");
                } catch (Exception $e) {
                    return array('error' => $e->getMessage());
                }
            }
        } else {
            return array('error' => 'You must specify a city id value.');
        }
    }

    #This function should only be used in an empty table to populate weather information in the database.
    public function populateWeatherAction()
    {
        $a = 0;
        for ($i = 1; $i < 201; $i++) {
            if ($i % 10 == 0) {$a++;}
            $city = $i % 10;
            if ($city == 0) {$city = 10;}
            $temp = rand(100, 300) / 10;
            $startDate = time();
            $theDate = date('Y-m-d', strtotime('+' . $a . ' day', $startDate));
            $query = $this->modelsManager->createQuery("INSERT into WeatherList(date,temperature,city) values('" . $theDate . "','" . $temp . "','" . $city . "' )");
            $query->execute();
        }
    }

}
