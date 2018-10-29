<?php

namespace engine\models;


use engine\components\Point;

class Click extends AbstractModel
{

    public function getClicks()
    {
        return $this->db->getRows('select coord_x as x, coord_y as y, quantity as "value" from click');
    }

    public function getMaxClicks()
    {
        return $this->db->getRows('select max(quantity) as "max" from click')[0]['max'];
    }

    public function getMinClicks()
    {
        return $this->db->getRows('select min(quantity) as "min" from click')[0]['min'];
    }

    public function setClick(Point $point)
    {
        $updatedPoint = $this->findClick($point);


        if ($updatedPoint !== -1){
            $this->incrementClick($updatedPoint);
        }
        else{
            $this->insertClick($point);
        }

    }

    private function findClick(Point $point)
    {
        $click = $this->db->getRows('select * from click where coord_x = ? and coord_y = ?', [$point->getCoordX(), $point->getCoordY()]);

        if (count($click) > 0){
            $point->setId($click[0]['id']);
            $point->setQuantity($click[0]['quantity']);
            return $point;
        }
        else{
            return -1;
        }
    }

    private function incrementClick(Point $point)
    {
        $newQuantity = $point->getQuantityClick() + 1;
        $this->db->getRows('update click set quantity = ? where id = ?', [$newQuantity, $point->getId()]);

    }

    private function insertClick(Point $point)
    {
        $this->db->getRows('insert into click (coord_x, coord_y, quantity) values (?, ?, ?)', [$point->getCoordX(), $point->getCoordY(), $point->getQuantityClick()]);
    }
}