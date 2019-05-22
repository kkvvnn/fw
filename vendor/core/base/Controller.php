<?php

namespace vendor\core\base;

abstract class Controller {
    
    /**
     * текущий маршрут и параметры (controller, action, params)
     * @var array
     */
    public $route = [];

    /**
     * вид
     * @var string
     */
    public $view;

    /**
     * текущий шаблон
     * @var string
     */
    public $layout;

    /**
     * пользовательские данные
     * @var array
     */
    public $vars = [];

    public function __construct($route)
    {
        $this->route = $route;
        $this->view = $route['action'];
    }

    public function getView()
    {
        $vObg = new View($this->route, $this->layout, $this->view);
        $vObg->render($this->vars);
    }

    public function set($vars)
    {
        $this->vars = $vars;
    }

}