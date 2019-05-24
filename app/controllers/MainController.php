<?php

namespace app\controllers;

use app\models\Main;

class MainController extends AppController {

    // public $layout = 'main';

    public function indexAction()
    {
        $model = new Main;
        //$res = $model->query("CREATE TABLE posts2 SELECT * FROM posts");
        $posts = $model->findAll();
        $posts2 = $model->findAll();

        // $post = $model->findOne(2);

        // $data = $model->findBySql("SELECT * FROM posts ORDER BY id DESC LIMIT 2");
        // $data = $model->findBySql("SELECT * FROM {$model->table} WHERE title LIKE ?", ['%то%']);
        $data = $model->findLike('тест', 'title');
        debug($data);

        $title = 'PAGE TITLE';
        $this->set(compact('title', 'posts'));

    }

}