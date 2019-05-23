<?php

namespace app\controllers;

class PostsNewController extends AppController {

    public function indexAction()
    {
        echo 'PostsNew::index()<br>';
    }

    public function testAction()
    {
        echo 'PostsNew::test()<br>';
    }

    public function testPageAction()
    {
        echo 'PostsNew::testPage()<br>';
    }

    public function before()
    {
        echo 'PostsNew::before()<br>';
    }

}