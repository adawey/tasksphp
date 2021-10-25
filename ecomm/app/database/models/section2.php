<?php

require_once __DIR__ . '\..\config\connection.php';
require_once __DIR__ . '\..\config\crud.php';




class section2 extends connection implements crud
{
    private $product_id;
    private $product_name;
    private $p_image;
    private $p_p;
    private $p_desc;
    private $reve;

    public function create()
    {
    }
    public function update()
    {
    }
    public function read()
    {
        $query = "SELECT * FROM section2    ORDER BY reve DESC limit 4  ";
        return $this->runDQL($query);
    }
    public function delete()
    {
    }



    /**
     * Get the value of product_id
     */
    public function getProduct_id()
    {
        return $this->product_id;
    }

    /**
     * Set the value of product_id
     *
     * @return  self
     */
    public function setProduct_id($product_id)
    {
        $this->product_id = $product_id;

        return $this;
    }

    /**
     * Get the value of product_name
     */
    public function getProduct_name()
    {
        return $this->product_name;
    }

    /**
     * Set the value of product_name
     *
     * @return  self
     */
    public function setProduct_name($product_name)
    {
        $this->product_name = $product_name;

        return $this;
    }

    /**
     * Get the value of p_image
     */
    public function getP_image()
    {
        return $this->p_image;
    }

    /**
     * Set the value of p_image
     *
     * @return  self
     */
    public function setP_image($p_image)
    {
        $this->p_image = $p_image;

        return $this;
    }

    /**
     * Get the value of p_p
     */
    public function getP_p()
    {
        return $this->p_p;
    }

    /**
     * Set the value of p_p
     *
     * @return  self
     */
    public function setP_p($p_p)
    {
        $this->p_p = $p_p;

        return $this;
    }

    /**
     * Get the value of p_desc
     */
    public function getP_desc()
    {
        return $this->p_desc;
    }

    /**
     * Set the value of p_desc
     *
     * @return  self
     */
    public function setP_desc($p_desc)
    {
        $this->p_desc = $p_desc;

        return $this;
    }

    /**
     * Get the value of reve
     */
    public function getReve()
    {
        return $this->reve;
    }

    /**
     * Set the value of reve
     *
     * @return  self
     */
    public function setReve($reve)
    {
        $this->reve = $reve;

        return $this;
    }
}
