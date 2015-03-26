<?php

class ModelModuleTestimony extends Model {
    public function getAllTestimony() {
        $sql = "SELECT * FROM " . DB_PREFIX . "review";
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }  
}
