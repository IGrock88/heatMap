<?php

namespace engine\controllers;


use engine\components\Point;
use engine\components\response\AbstractResponse;
use engine\components\response\ResponseJson;
use engine\models\Click;
use http\Exception\RuntimeException;

class ApiController extends AbstractController
{

    public function setClicks():AbstractResponse
    {
        $coordX = $this->request->getPostParams()['coordX'];
        $coordY = $this->request->getPostParams()['coordY'];

        if (!is_numeric($coordX) && !is_numeric($coordY)){
            throw new \HttpInvalidParamException('not a number');
        }

        $point = new Point($coordX, $coordY);

        $clickModel = new Click($this->db);
        $clickModel->setClick($point);
        return new ResponseJson($this->request->getPostParams());
    }

    public function getClicks():AbstractResponse
    {
        $clicks = [];
        $clickModel = new Click($this->db);
        $clicks['data'] = $clickModel->getClicks();
        $clicks['max'] = $clickModel->getMaxClicks();
        $clicks['min'] = $clickModel->getMinClicks();
        return new ResponseJson($clicks);
    }
}