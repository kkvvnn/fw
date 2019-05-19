<?php

$query = rtrim($_SERVER['QUERY_STRING'], '/');
echo $query;

require '../vendor/core/Router.php';
require '../vendor/libs/functions.php';

Router::add('posts/add', ['controller' => 'Post', 'action' => 'add']);
Router::add('posts', ['controller' => 'Post', 'action' => 'index']);
Router::add('', ['controller' => 'Main', 'action' => 'index']);

debug(Router::getRoutes());

if (Router::matchRoute($query)) {
    debug(Router::getRoute());
} else {
    echo 'Привет 404';
}