<?php


namespace engine\components;


class Point
{
    private $id;
    private $coordX;
    private $coordY;
    private $quantity;

    /**
     * Point constructor.
     * @param int $coordX
     * @param int $coordY
     * @param int $quantity
     */
    public function __construct(int $coordX, int $coordY, int $quantity = 1)
    {
        $this->coordX = $coordX;
        $this->coordY = $coordY;
        $this->quantity = $quantity;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return int
     */
    public function getCoordX(): int
    {
        return $this->coordX;
    }

    /**
     * @return int
     */
    public function getCoordY(): int
    {
        return $this->coordY;
    }

    /**
     * @return int
     */
    public function getQuantity(): int
    {
        return $this->quantity;
    }

    /**
     * @param int $quantity
     */
    public function setQuantity(int $quantity)
    {
        $this->quantity = $quantity;
    }








}