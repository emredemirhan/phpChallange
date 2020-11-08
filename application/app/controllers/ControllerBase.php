<?php
declare (strict_types = 1);

use Firebase\JWT\JWT;
use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    public $user;

    public function beforeExecuteRoute(\Phalcon\Mvc\Dispatcher $dispatcher)
    {
        $this->view->disable();
        $this->response->setContentType('application/json', 'UTF-8');
        $protectedActions = array('update', 'activateGift', 'addCityToProfile', 'removeCityFromProfile');
        if (in_array($dispatcher->getActionName(), $protectedActions)) {
            $headRequest = $this->request->getHeaders();
            $token = $headRequest['Token'];
            if ($token) {
                try {
                    $key = base64_decode($this->config->jwt->key);
                    $decoded = JWT::decode($token, $key, array('HS256'));
                    $this->user = $decoded;
                } catch (Exception $e) {
                    $this->jsonResponse(
                        array('message' => 'Access is denied', 'error' => $e->getMessage(), 'StatusCode' => 401)
                    );
                    $this->response->send();
                    return false;
                }
            } else {
                $this->jsonResponse(array("message" => "Access is denied", 'StatusCode' => 401));
                $this->response->send();
                return false;
            }
        }
    }

    public function afterExecuteRoute(\Phalcon\Mvc\Dispatcher $dispatcher)
    {
        $data = $dispatcher->getReturnedValue();
        $this->jsonResponse($data);
        return $this->response->send();
    }

    private function jsonResponse($data)
    {
        if (is_array($data)) {
            if (isset($data['StatusCode'])) {
                $this->response->setStatusCode(
                    $data['StatusCode'],
                    $this->getResponseDescription($data['StatusCode'])
                )->sendHeaders();
            }
            $data = json_encode($data);
            $this->response->setContent($data);
        }
    }

    protected function getResponseDescription($code)
    {
        $codes = array(

            // Informational 1xx
            100 => 'Continue',
            101 => 'Switching Protocols',

            // Success 2xx
            200 => 'OK',
            201 => 'Created',
            202 => 'Accepted',
            203 => 'Non-Authoritative Information',
            204 => 'No Content',
            205 => 'Reset Content',
            206 => 'Partial Content',

            // Redirection 3xx
            300 => 'Multiple Choices',
            301 => 'Moved Permanently',
            302 => 'Found', // 1.1
            303 => 'See Other',
            304 => 'Not Modified',
            305 => 'Use Proxy',
            // 306 is deprecated but reserved
            307 => 'Temporary Redirect',

            // Client Error 4xx
            400 => 'Bad Request',
            401 => 'Unauthorized',
            402 => 'Payment Required',
            403 => 'Forbidden',
            404 => 'Not Found',
            405 => 'Method Not Allowed',
            406 => 'Not Acceptable',
            407 => 'Proxy Authentication Required',
            408 => 'Request Timeout',
            409 => 'Conflict',
            410 => 'Gone',
            411 => 'Length Required',
            412 => 'Precondition Failed',
            413 => 'Request Entity Too Large',
            414 => 'Request-URI Too Long',
            415 => 'Unsupported Media Type',
            416 => 'Requested Range Not Satisfiable',
            417 => 'Expectation Failed',

            // Server Error 5xx
            500 => 'Internal Server Error',
            501 => 'Not Implemented',
            502 => 'Bad Gateway',
            503 => 'Service Unavailable',
            504 => 'Gateway Timeout',
            505 => 'HTTP Version Not Supported',
            509 => 'Bandwidth Limit Exceeded',
        );

        $result = (isset($codes[$code])) ?
        $codes[$code] :
        'Unknown Status Code';

        return $result;
    }
}
