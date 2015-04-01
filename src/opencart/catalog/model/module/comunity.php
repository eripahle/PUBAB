<?php

class ModelModuleComunity extends Model {    
    private $batas;
    public function getAllComunity($p) {           
        $this->batas = 10;
	$posisi = $p->cariPosisi($this->batas);	
	
        $sql = "SELECT * FROM " . DB_PREFIX . "comunity limit $posisi,$this->batas";
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
    public function getJmlHalaman($p,$jmldata){
        $query = $p->jumlahHalaman($jmldata, $this->batas);
        return $query;
    }
    
}
