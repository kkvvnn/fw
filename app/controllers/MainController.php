<?php

namespace app\controllers;

use app\models\Main;
use fw\core\base\View;
use fw\libs\Pagination;
use Monolog\Handler\StreamHandler;
use Monolog\Logger;
use PHPMailer\PHPMailer\PHPMailer;

class MainController extends AppController {

    // public $layout = 'main';

    /**
     *
     */
    public function indexAction()
    {

        // create a log channel
        $log = new Logger('name');
        $log->pushHandler(new StreamHandler(ROOT . '/tmp/your.log', Logger::WARNING));

        // add records to the log
        $log->warning('Foo');
        $log->error('Bar');

        // \R::fancyDebug(true);

        $model = new Main;

        $total = \R::count('posts');
        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $perpage = 1;

        $pagination = new Pagination($page, $perpage, $total);
        $start = $pagination->getStart();

        $posts = \R::findAll('posts', "LIMIT $start, $perpage");
        $menu = $this->menu;

        View::setMeta('Главная страница', 'Описание страницы', 'Ключевые слова');
        
        $this->set(compact('title', 'posts', 'menu', 'meta', 'pagination', 'total'));

    }

    public function testAction()
    {
        if($this->isAjax()){
            $model = new Main();

            // $data = [
            //     'answer' => 'Ответ с сервера', 
            //     'code' => 200
            // ];
            // echo json_encode($data);

            $post = \R::findOne('posts', "id = {$_POST['id']}");
            $this->loadView('_test', compact('post'));

            die();
        }

        echo 222;
    }

}