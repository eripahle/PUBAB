<?php

class ModelModuleAboutEditor extends Model {    
    private $batas;
    public function getAllEditor($a,$b) {                   	
        $sql = "SELECT * FROM " . DB_PREFIX . "editor," . DB_PREFIX . "editor_info Where " . DB_PREFIX . "editor.editor_id = " . DB_PREFIX . "editor_info.editor_id limit $a,$b";
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }
    
    public function getLatestEditor() {
        $sql = "SELECT * FROM " . DB_PREFIX . "editor," . DB_PREFIX . "editor_info Where " . DB_PREFIX . "editor.editor_id = " . DB_PREFIX . "editor_info.editor_id limit 3";
        $query = $this->db->query($sql);
        $testimonys = $query->rows;
        return $testimonys;
    }  
    
    public function getNumberOfData(){
        $sql = "SELECT * FROM " . DB_PREFIX . "editor," . DB_PREFIX . "editor_info Where " . DB_PREFIX . "editor.editor_id = " . DB_PREFIX . "editor_info.editor_id";
        $query = $this->db->query($sql);        
        return $query->num_rows;
    }
    public function getJmlHalaman($p,$jmldata){
        $query = $p->jumlahHalaman($jmldata, $this->batas);
        return $query;
    }
    
}
