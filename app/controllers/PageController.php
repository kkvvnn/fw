<?php 

namespace app\controllers;


class PageController extends AppController {

    public function viewAction()
    {
        // debug($this->route);

        $menu = $this->menu;

        $meta['title'] = 'Страница';
        $this->set(compact('meta', 'menu'));

    }

}