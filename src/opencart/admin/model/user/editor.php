<?php
class ModelUserEditor extends Model {

	public function getEditor(){
		return $this->db->query("SELECT * FROM ".DB_PREFIX."editor ")->rows;
	}
        
        public function getEditorUnInsertedInfo(){
		//return $this->db->query("SELECT * FROM ".DB_PREFIX."editor,".DB_PREFIX."editor_info WHERE ".DB_PREFIX."editor.editor_id != ".DB_PREFIX."editor_info.editor_id")->rows;
                //return $this->db->query("SELECT * FROM  ".DB_PREFIX."editor WHERE NOT EXISTS (select * from  ".DB_PREFIX."editor_info)")->rows;
                //return $this->db->query("select * from ".DB_PREFIX."editor, ".DB_PREFIX."editor_info where ".DB_PREFIX."editor_info.editor_id != ".DB_PREFIX."editor.editor_id ")->rows;
                return $this->db->query("select * from ".DB_PREFIX."editor where ".DB_PREFIX."editor.editor_id NOT IN (select ".DB_PREFIX."editor_info.editor_id from ".DB_PREFIX."editor_info)")->rows;
	}       

	public function getCustomer(){
		return $this->db->query("SELECT * FROM ".DB_PREFIX."customer ")->rows;
	}
		
}
