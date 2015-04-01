<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class calendar_machine {
    private $events;
    private $db;
    private $connection;
    private $sql;
    private $result_query;
    
    public function __construct() {                
        $this->connection = mysql_connect("localhost","root","") or die('Unable to connect to MySQL server.<br ><br >Please make sure your MySQL login details are correct.');
        $this->db = mysql_select_db("opencart", $this->connection) or die('request "Unable to select database."');        
        $this->sql = "SELECT * FROM oc_calendar_event";
        $this->result_query = mysql_query($this->sql, $this->connection) or die('request "Could not execute SQL query" ' . $sql);     
    }
    public function getResult_query() {
        return $this->result_query;
    }
}
