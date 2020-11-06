<?php
declare(strict_types=1);

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    public function afterExecuteRoute(\Phalcon\Mvc\Dispatcher $dispatcher) {
        $this->view->disable();
        $this->response->setContentType('application/json', 'UTF-8');
            $data = $dispatcher->getReturnedValue();
             if (is_array($data)) {
                $data['success'] = isset($data['success']) ? true : false;
                $data['message'] = isset($data['message']) ? $data['message']: '';
                $data = json_encode($data);
                $this->response->setContent($data);
            }

        return $this->response->send();
    }
}
