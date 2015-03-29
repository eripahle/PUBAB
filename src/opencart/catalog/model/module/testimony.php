<?php

class ModelModuleTestimony extends Model {    
    private $batas;
    public function getAllTestimony($p) {           
        $this->batas = 4;
	$posisi = $p->cariPosisi($this->batas);	
	
        $sql = "SELECT * FROM " . DB_PREFIX . "review limit $posisi,$this->batas";
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }
    
    public function getLatestTestimony() {
        $sql = "SELECT * FROM " . DB_PREFIX . "review limit 3";
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
