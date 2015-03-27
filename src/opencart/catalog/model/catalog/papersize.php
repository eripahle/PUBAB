<?php
class ModelCatalogPapersize extends Model {

	public function getSize(){
		return $this->db->query("SELECT * FROM ".DB_PREFIX."paper_size ")->rows;
	}

	public function getType(){
		return $this->db->query("SELECT * FROM ".DB_PREFIX."paper_type ")->rows;
	}
	
}
