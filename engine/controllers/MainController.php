<?php

namespace engine\controllers;


use engine\components\response\ResponsePage;

class MainController extends AbstractController
{

    public function index(){
        $this->content['content'] = "pages/index.twig";
        return new ResponsePage($this->render->render($this->content));
    }


}