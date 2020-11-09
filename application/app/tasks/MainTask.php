<?php

declare(strict_types=1);

class MainTask extends Phalcon\CLI\Task
{
    public function mainAction()
    {
        echo "Use mail or notification as action\n";
    }

}