<?php
/**
 * Created by PhpStorm.
 * User: igroc
 * Date: 07.09.2018
 * Time: 10:47
 */

namespace engine\components\builder;


use engine\components\Auth;
use engine\components\Request;
use engine\controllers\AbstractController;
use engine\db\AbstractDb;
use engine\views\IRender;


class ControllerBuilder
{
    protected $render;
    protected $auth;
    protected $request;
    protected $db;

    /**
     * @return IRender
     */
    public function getRender(): IRender
    {
        return $this->render;
    }

    /**
     * @param IRender $render
     */
    public function setRender(IRender $render)
    {
        $this->render = $render;
    }


    /**
     * @return Request
     */
    public function getRequest(): Request
    {
        return $this->request;
    }

    /**
     * @param Request $request
     */
    public function setRequest(Request $request)
    {
        $this->request = $request;
    }

    /**
     * @return AbstractDb
     */
    public function getDb() : AbstractDb
    {
        return $this->db;
    }

    /**
     * @param AbstractDb $db
     */
    public function setDb(AbstractDb $db)
    {
        $this->db = $db;
    }

    public function build(string $controller): AbstractController
    {
        return new $controller($this);
    }
}