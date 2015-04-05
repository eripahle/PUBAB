<?php

class ModelModuleTestimony extends Model {    
    private $batas;
    public function getAllTestimony($p) {           
        $this->batas = 10;
	$posisi = $p->cariPosisi($this->batas);	
	
        //$sql = "SELECT * FROM " . DB_PREFIX . "review ORDER BY review_id DESC limit $posisi,$this->batas";
        $sql = "SELECT * FROM oc_review,oc_product where oc_review.product_id = oc_product.product_id ORDER BY review_id DESC limit $posisi,$this->batas";
        
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }
    
    public function getLatestTestimony() {
        //$sql = "SELECT * FROM " . DB_PREFIX . "review ORDER BY review_id DESC limit 3 ";
        $sql = "SELECT * FROM oc_review,oc_product where oc_review.product_id = oc_product.product_id ORDER BY review_id DESC limit 3";
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
