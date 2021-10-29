<?php

require_once __DIR__ . "\..\database\models\User.php";

class registerRequest
{
    private $email;
    private $password;
    private $confirmPassword;
    private $phone;



    ////////////////////////////////////////
    public function EmailValidation()
    {
        $pattern = "/^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/";
        $errors = [];
        if (empty($this->email)) {
            $errors["email_Required"] = "<div class='alert alert-danger'> email its  Required </div>";
        } else {
            if (!preg_match($pattern, $this->email)) {
                $errors["email_invalid"] = "<div class='alert alert-danger'> email is  invalid </div>";
            }
        }
        return $errors;
    }

    /////////////////////////////

    public function PasswordValidation()
    {
        $errors = [];
        $pattern = "/^[a-zA-Z]\w{3,14}$/";
        //required
        if (empty($this->password)) {
            $errors["password_Required"] = "<div class='alert alert-danger'> password its  Required </div>";
        } else {
            //required
            if (empty($this->confirmPassword)) {
                $errors["confirm_password_Required"] = "<div class='alert alert-danger'> password its  Required </div>";
            }
            // if password not empty !!!
            if (empty($errors)) {
                if ($this->password !== $this->confirmPassword) {
                    $errors["password_similar"] = "<div class='alert alert-danger'> password must be similar </div>";
                }
                if (preg_match($pattern, $this->password)) {
                    $errors["password_pattern"] = "<div class='alert alert-danger'> password must be a characters and numbers  </div>";
                }
            }
        }

        return $errors;
    }

    ////////////////////

    public function EmailExit()
    {
        $errors = [];
        $userObject = new User;
        $userObject->setEmail($this->email);
        $result = $userObject->checkIfEmailExit();

        if ($result) {
            $errors['email_exit'] = "<div class='alert alert-danger'> email already exit  </div>";
        }
        return $errors;
    }
    ///////////////////
    public function PhoneExit()
    {
        $errors = [];
        $userObject = new User;
        $userObject->setPhone($this->phone);
        $result = $userObject->checkIfPhoneExit();
        if ($result) {
            $errors['phone_exit'] = "<div class='alert alert-danger'> phone already exit  </div>";
        }
        return $errors;
    }
    ///////////


    public function setEmail($email)
    {
        $this->email = $email;

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
        $this->password = $password;

        return $this;
    }
    /**
     * Get the value of confirmPassword
     */
    public function getConfirmPassword()
    {
        return $this->confirmPassword;
    }

    /**
     * Set the value of confirmPassword
     *
     * @return  self
     */
    public function setConfirmPassword($confirmPassword)
    {
        $this->confirmPassword = $confirmPassword;

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
}
