<?php

class ModelModuleTestimony extends Model {        
    public function getAllTestimony($a,$b) {                   		        
        $sql = "SELECT * FROM " . DB_PREFIX . "review," . DB_PREFIX . "product where " . DB_PREFIX . "review.product_id = " . DB_PREFIX . "product.product_id limit ".$a.",".$b."";
        
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }
    
    public function getLatestTestimony() {        
        $sql = "SELECT * FROM " . DB_PREFIX . "review," . DB_PREFIX . "product where " . DB_PREFIX . "review.product_id = " . DB_PREFIX . "product.product_id ORDER BY review_id DESC limit 3";
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }  
    
    public function getNumberOfData(){
        $sql = "SELECT * FROM " . DB_PREFIX . "review";
        $query = $this->db->query($sql);        
        return $query->num_rows;
    }           		
    
    public function getJmlHalaman($p,$jmldata){
        $query = $p->jumlahHalaman($jmldata, $this->batas);
        return $query;
    }
    
}
