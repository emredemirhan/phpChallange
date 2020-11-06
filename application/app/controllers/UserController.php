<?php
declare(strict_types=1);

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
                    'os'
                ]
            );
            $user->password = $this->security->hash($pass);
            try{
                if (false === $user->save()) {
                    $this->response->setStatusCode(409, "Validation Error")->sendHeaders();
                    $messages = $user->getMessages();
                    $m = "";
                    foreach ($messages as $message) {
                        $m = $m.$message->getMessage();
                    }
                    return array('message' => 'Error creating user: '.$m);
                } else {
                    $this->response->setStatusCode(201, 'Created');
                    return array('success' => true, 'message'=>'User created.');
                }
            }catch(PDOException $e){
                return array('success'=>false,'message' => $e->getMessage(),'code' => $e->getCode());
            }
        }else{
            return array("message" => "Only POST method is allowed");
        }
    }

    public function loginAction(){
        if (true === $this->request->isPost()) {
            $email    = $this->request->getPost("email");
            $password = $this->request->getPost('password');
            $user = Users::findFirstByEmail($email);

            if ($user) {
                if ($this->security->checkHash($password, $user->password)) {
                    $key  = base64_decode('PHPChallengeAccepted');
                    $time = time();
                    $expires = $time;
                    $token = [
                        'iss' =>  $this->request->getURI(),
                        'iat' =>  $time,
                        'exp' =>  $expires + 86400,
                        'data' =>[
                            'id' => $user->id,
                            'email' => $user->email,
                        ]
                    ];
                    $jwt = JWT::encode($token, $key);

                    return array('success' => true, 'message' => 'Login is valid','token'=> $jwt);
                }else{
                    return array('message' => 'Wrong username/password combination.');
                }
            }else{
                return array('message' => 'Wrong username/password combination.');
            } 
        }else{
            return array("message" => "Only POST method is allowed");
        }
    }

    public function updateAction(){
        $headRequest = $this->request->getHeaders();
        $token = $headRequest['Token'];
        if ($token) {
            try {
                $key  = base64_decode('PHPChallengeAccepted');
                $decoded = JWT::decode($token, $key, array('HS256'));
                return array('success' => true, 'data' => $decoded);
            }
            catch (Exception $e)
            {
                $this->response->setStatusCode(401, "Unauthorized")->sendHeaders();
                return array('message' => 'Access is denied' , 'error' => $e->getMessage());
            }
        }else{
            $this->response->setStatusCode(401, "Unauthorized")->sendHeaders();
            return array("message" => "Access is denied");
        } 
    }

}

