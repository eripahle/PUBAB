<?php

class ModelModuleComunity extends Model {    
    private $batas;
    public function getAllComunity($p,$q) {                   	
        $sql = "SELECT * FROM " . DB_PREFIX . "comunity limit $p,$q";
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }
    
    public function getLatestComunity() {
        $sql = "SELECT * FROM " . DB_PREFIX . "comunity limit 3";
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }  
    
    public function getNumberOfData(){
        $sql = "SELECT * FROM " . DB_PREFIX . "comunity";
        $query = $this->db->query($sql);        
        return $query->num_rows;
    }        
}
