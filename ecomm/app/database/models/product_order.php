<?php

require_once __DIR__ . '\..\config\connection.php';
require_once __DIR__ . '\..\config\crud.php';




class product_order extends connection implements crud
{
    private $product_id;
    private $name;
    private $quantite;
    private $price;
    private $image;


    public function create()
    {
    }
    public function update()
    {
    }
    public function read()
    {
        $query = "SELECT * FROM products_orders   ORDER BY quantite DESC limit 4  ";
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
     * Get the value of name
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set the value of name
     *
     * @return  self
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get the value of quantite
     */
    public function getQuantite()
    {
        return $this->quantite;
    }

    /**
     * Set the value of quantite
     *
     * @return  self
     */
    public function setQuantite($quantite)
    {
        $this->quantite = $quantite;

        return $this;
    }

    /**
     * Get the value of price
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set the value of price
     *
     * @return  self
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get the value of image
     */
    public function getImage()
    {
        return $this->image;
    }

    /**
     * Set the value of image
     *
     * @return  self
     */
    public function setImage($image)
    {
        $this->image = $image;

        return $this;
    }
}


// SELECT `orders_products`.`product_id` ,
// SUM(`orders_products`.`quantity`) AS `quantite`,

// `products`.`name_en` AS `name`,
// `products`.`price` AS `price`,
// `products`.`image` AS `image`

// FROM 
// `products`

// JOIN `orders_products` ON `orders_products`.`product_id` = `products`.`id`

// GROUP BY`orders_products`.`product_id` 
// ORDER BY `quantite` ASC