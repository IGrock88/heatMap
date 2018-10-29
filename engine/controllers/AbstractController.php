<?php

namespace engine\controllers;

use engine\components\Auth;
use engine\components\builder\ControllerBuilder;
use engine\components\Request;
use engine\db\AbstractDb;
use engine\views\IRender;


abstract class AbstractController
{
    /**
     * @property IRender $render
     * @property Auth $auth
     * @property Request $request
     * @property AbstractDb $db
     */
    protected $content;
    protected $render;
    protected $request;
    protected $db;

    public function __construct(ControllerBuilder $builder)
    {

        $this->render = $builder->getRender();
        $this->request = $builder->getRequest();
        $this->db = $builder->getDb();

    }

}