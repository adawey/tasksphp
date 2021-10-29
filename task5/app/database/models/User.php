<?php

include_once  __DIR__ . "\..\config\connection.php";
include_once  __DIR__ . "\..\config\crud.php";



class User extends connection implements crud
{
    private $id;
    private $first_name;
    private $last_name;
    private $gender;
    private $phone;
    private $email;
    private $password;
    private $status;
    private $code;
    private $verified_at;
    private $image;
    private $created_at;
    private $updated_at;

    public function getId()
    {
        return $this->id;
    }
    public function setId($id)
    {
        $this->id = $id;
    }
    /**
     * Get the value of first_name
     */
    public function getFirst_name()
    {
        return $this->first_name;
    }

    /**
     * Set the value of first_name
     *
     * @return  self
     */
    public function setFirst_name($first_name)
    {
        $this->first_name = $first_name;

        return $this;
    }

    /**
     * Get the value of last_name
     */
    public function getLast_name()
    {
        return $this->last_name;
    }

    /**
     * Set the value of last_name
     *
     * @return  self
     */
    public function setLast_name($last_name)
    {
        $this->last_name = $last_name;

        return $this;
    }

    /**
     * Get the value of gender
     */
    public function getGender()
    {
        return $this->gender;
    }

    /**
     * Set the value of gender
     *
     * @return  self
     */
    public function setGender($gender)
    {
        $this->gender = $gender;

        return $this;
    }

    /**
     * Get the value of phone
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set the value of phone
     *
     * @return  self
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get the value of email
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set the value of email
     *
     * @return  self
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get the value of password
     */
    public function getPassword()
    {
        return $this->password;
    }

    /**
     * Set the value of password
     *
     * @return  self
     */
    public function setPassword($password)
    {
        $this->password =  sha1($password);

        return $this;
    }

    /**
     * Get the value of status
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Set the value of status
     *
     * @return  self
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get the value of code
     */
    public function getCode()
    {
        return $this->code;
    }

    /**
     * Set the value of code
     *
     * @return  self
     */
    public function setCode($code)
    {
        $this->code = $code;

        return $this;
    }

    /**
     * Get the value of verified_at
     */
    public function getVerified_at()
    {
        return $this->verified_at;
    }

    /**
     * Set the value of verified_at
     *
     * @return  self
     */
    public function setVerified_at($verified_at)
    {
        $this->verified_at = $verified_at;

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

    /**
     * Get the value of created_at
     */
    public function getCreated_at()
    {
        return $this->created_at;
    }

    /**
     * Set the value of created_at
     *
     * @return  self
     */
    public function setCreated_at($created_at)
    {
        $this->created_at = $created_at;

        return $this;
    }

    /**
     * Get the value of updated_at
     */
    public function getUpdated_at()
    {
        return $this->updated_at;
    }

    /**
     * Set the value of updated_at
     *
     * @return  self
     */
    public function setUpdated_at($updated_at)
    {
        $this->updated_at = $updated_at;

        return $this;
    }



    public function create()
    {
        $query = "INSERT INTO users (first_name,last_name,gender,phone,email,password,code) 
        VALUES('$this->first_name','$this->last_name','$this->gender','$this->phone','$this->email','$this->password',$this->code) ";

        return $this->runDML($query);
    }
    public function update()
    {
    }
    public function read()
    {
    }
    public function delete()
    {
    }

    public function checkIfEmailExit()
    {
        $query = "SELECT * FROM users WHERE email ='$this->email'";

        return $this->runDQL($query);
    }
    public function checkIfPhoneExit()
    {
        $query = "SELECT * FROM users WHERE Phone ='$this->phone'";

        return $this->runDQL($query);
    }

    public function checkCode()
    {
        $query = "SELECT * FROM users WHERE email='$this->email' AND  `code` =$this->code ";
        return $this->runDQL($query);
    }
    public function verifyUser()
    {
        $query = "UPDATE users SET `status` = $this->status , verified_at = '$this->verified_at' ";

        return $this->runDML($query);
    }



    public function SelectByKey($key)
    {
        $query = "SELECT * FROM users WHERE $key ='" . $this->{"$key"} . "' ";
        echo $query;
        return $this->runDML($query);
    }
}
// $inst = new user;
// $inst->setEmail('galal.husseny@gmail.com');
// $inst->SelectByKey('email');
