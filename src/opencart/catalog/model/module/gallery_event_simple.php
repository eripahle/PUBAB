<?php

class ModelModuleGalleryEventSimple extends Model {
    public function getAllGallery() {
        $sql = "SELECT * FROM " . DB_PREFIX . "gallery_event";
        $query = $this->db->query($sql);
        $gallerys = $query->rows;
        return $gallerys;
    }  
}
