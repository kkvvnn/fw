<?php

header('Content-Type: text/html; charset=utf-8');

$query = $_SERVER['QUERY_STRING'];

require '../vendor/core/Router.php';

$router = new Router();