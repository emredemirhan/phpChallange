<?php
declare(strict_types=1);

class IndexController extends ControllerBase
{

    public function indexAction()
    {
         $gifts = new GiftCodes();
        $result = $gifts->find();
        return array('data'=> $result); 
    }

}

