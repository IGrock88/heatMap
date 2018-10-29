<?php

namespace engine\controllers;

use engine\components\response\ResponsePage;
use engine\components\response\AbstractResponse;

class ErrorController extends AbstractController
{
    public function error404():AbstractResponse
    {
        return new ResponsePage($this->render->render('Ошибка 404'));
    }

}