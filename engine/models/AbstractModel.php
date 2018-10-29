<?php

namespace engine\models;


use engine\db\AbstractDb;

abstract class AbstractModel
{
    protected $db;

    public function __construct(AbstractDb $db)
    {
        $this->db = $db;
        $this->db->connect();
    }
}