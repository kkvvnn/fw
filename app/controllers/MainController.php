<?php

namespace app\controllers;

use app\models\Main;
use fw\core\App;
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

        $lang = App::$app->getProperty('lang')['code'];

        $total = \R::count('posts', 'lang_code = ?', [$lang]);
        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $perpage = 2;

        $pagination = new Pagination($page, $perpage, $total);
        $start = $pagination->getStart();

        $posts = \R::findAll('posts', "lang_code = ? LIMIT $start, $perpage", [$lang]);

        View::setMeta('Blog :: Главная страница', 'Описание страницы', 'Ключевые слова');
        
        $this->set(compact( 'posts', 'pagination', 'total'));

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