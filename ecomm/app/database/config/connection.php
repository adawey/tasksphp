<?php

// Dml (insert / update / delete )

// DQl (select )



class connection
{
    private $hostname = 'localhost';
    private $username = 'root';
    private $password = '';
    private $database = 'ecommerce_adawe';
    private $connection;

    function __construct()
    {
        $this->connection = new mysqli($this->hostname, $this->username, $this->password, $this->database);

        if ($this->connection->connect_error) {
            echo 'done1';
            ('connection error is ' . $this->connection->connect_error);
            echo 'done';
        } else {
            ('connection correct ');
        }
    }
    public function runDQL($query)
    {
        $result = $this->connection->query($query);
        if ($result->num_rows > 0) {
            return $result;
        } else {
            return  [];
        }
    }

    public function runDML($query)
    {
        $result = $this->connection->query($query);

        if ($result) {

            return TRUE;
        } else {
            return FALSE;
        }
    }
}
