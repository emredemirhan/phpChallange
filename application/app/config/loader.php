<?php

$loader = new \Phalcon\Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$loader->registerDirs(
    [
        $config->application->controllersDir,
        $config->application->modelsDir,
        $config->application->libraryDir,
    ]
);

$loader->registerNamespaces(
    [
        require BASE_PATH . '/application/vendor/autoload.php',
    ]
);

$loader->register();
