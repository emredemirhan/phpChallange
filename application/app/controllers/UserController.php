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
            $user->password = $this->security->hash($pass);
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
            return array("message" => "Only POST method is allowed","StatusCode" => 405);
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

                    return array('message' => 'Login is valid', 'token' => $jwt);
                } else {
                    return array('message' => 'Wrong username/password combination.');
                }
            } else {
                return array('message' => 'Wrong username/password combination.');
            }
        } else {
            return array("message" => "Only POST method is allowed","StatusCode" => 405);
        }
    }

    public function updateAction()
    {
        return array('data' => $this->user);
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
            return array("message" => "Only POST method is allowed","StatusCode" => 405);
        }
    }

}
