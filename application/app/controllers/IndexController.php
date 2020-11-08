<?php
declare(strict_types=1);

class IndexController extends ControllerBase
{

    public function indexAction()
    {
        return array('message' => "Welcome to PHPChallenge app API. You can use specified end-points in the API documentation.");
    }

}

