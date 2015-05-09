<?php

class ModelModuleGalleryEventSimple extends Model {
    public function getAllGallery() {
        $sql = "SELECT * FROM " . DB_PREFIX . "gallery_event";
        $query = $this->db->query($sql);
        $gallerys = $query->rows;
        return $gallerys;
    }
    public function getAllGallerySimple() {
        $sql = "SELECT * FROM " . DB_PREFIX . "gallery_event" ." limit 8";
        $query = $this->db->query($sql);
        $gallerys = $query->rows;
        return $gallerys;
    } 
}
