<?php




class CheckCodeRequest
{
    private $code;
    private $email;

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

    public function CodeValidation()
    {
        $errors = [];
        if (empty($this->code)) {
            $errors['code_require'] = "<div class='alert alert-danger' > code is required </div>";
        } else {
            if (!is_numeric($this->code)) {
                $errors['code_require'] = "<div class='alert alert-danger' > code must be a number  </div>";
            } else {
                if (strlen($this->code) != 5) {
                    $errors['code_require'] = "<div class='alert alert-danger' > code must be a five numbers  </div>";
                }
            }
        }




        return $errors;
    }
}
