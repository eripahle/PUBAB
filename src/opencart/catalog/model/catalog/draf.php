<?php

class ModelCatalogDraf extends Model {

    public function getCategory($data = array()) {
        if ($data) {
            $sql = "SELECT * FROM " . DB_PREFIX . "category_description";

            $sql .= " ORDER BY title";

            if (isset($data['order']) && ($data['order'] == 'DESC')) {
                $sql .= " DESC";
            } else {
                $sql .= " ASC";
            }

            if (isset($data['start']) || isset($data['limit'])) {
                if ($data['start'] < 0) {
                    $data['start'] = 0;
                }

                if ($data['limit'] < 1) {
                    $data['limit'] = 20;
                }

                $sql .= " LIMIT " . (int) $data['start'] . "," . (int) $data['limit'];
            }

            $query = $this->db->query($sql);

            return $query->rows;
        } else {
            $category_class_data = $this->cache->get('category_description');

            if (!$category_class_data) {
                $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_description");

                $category_class_data = $query->rows;

                $this->cache->set('tax_class', $category_class_data);
            }

            return $category_class_data;
        }
    }

    public function addProduct($data) {
        print_r($data);

        $this->event->trigger('pre.admin.product.add', $data);
        
        $this->db->query("INSERT INTO " . DB_PREFIX 
                        . "product SET model = 'buku' "// . $this->db->escape($data['model']) 
                        . ", isbn = " . $this->db->escape($data['isbn']) 
                        . ", price = " . $this->db->escape($data['harga']) 
                        . ""
                        );
       
        $product_id = $this->db->getLastId();

			$this->db->query("INSERT INTO " . DB_PREFIX . "product_description "
                        . "SET product_id = '" . (int)$product_id 
                        . "', language_id = 1"// . (int)$language_id 
                        . ", name = '" . $this->db->escape($data['titlebook']) 
                        . "', number_of_page = ". $this->db->escape($data['jumlahhalaman'])         
                        . ", description = '" . $this->db->escape($data['sinopsis'])."'");

                $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = " . (int) $product_id . ", category_id = " . $this->db->escape($data['category_class_id']) . "");

        $this->cache->delete('product');
        $this->event->trigger('post.admin.product.add', $product_id);

        return $product_id;
    }

    public function insertFile($data, $product_id) {
        print_r($data);
        $allowed_ext = array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip');
        $file_name = $data['filebuku']['name'];
        $dot = '.';
        $file_ext = strtolower(end(explode($dot, $file_name)));
        $file_size = $data['filebuku']['size'];
        $file_tmp = $data['filebuku']['tmp_name'];

        $nama = date("smhymd") . '_' . $file_name;
        $tgl = date("Y-m-d");

        if (in_array($file_ext, $allowed_ext) === true) {            
            if ($file_size < 1044070000) {
                $lokasi = 'system/engine/upload/files/' . $nama . '.' . $file_ext;
                move_uploaded_file($file_tmp, $lokasi);
                $sql = "INSERT INTO oc_draf VALUES(NULL, $product_id,'$lokasi','$tgl', '$nama', '$file_ext', '$file_size')";
                $query = $this->db->query($sql);
                if ($query) {
                    echo '<div class="error">Sukses!</div>';
                } else {
                    echo '<div class="error">ERROR: Gagal upload file!</div>';
                }
            } else {
                echo '<div class="error">ERROR: Besar ukuran file (file size) maksimal 1 Mb!</div>';
            }
        } else {
            echo '<div class="error">ERROR: Ekstensi file tidak di izinkan!</div>';
        }

        $allowed_ext = array('jpg', 'png');
        $file_name = $data['fileimage']['name'];        
        $file_ext = strtolower(end(explode($dot, $file_name)));
        $file_size = $data['fileimage']['size'];
        $file_tmp = $data['fileimage']['tmp_name'];

        $nama = date("smhymd") . '_' . $file_name;
        $tgl = date("Y-m-d");

        if (in_array($file_ext, $allowed_ext) === true) {
            if ($file_size < 1044070000) {                
                $lokasi = 'system/engine/upload/cavers/' . $nama . '.' . $file_ext;
                move_uploaded_file($file_tmp, $lokasi);
                $sql = "INSERT INTO oc_product_image VALUES(NULL, $product_id,'$lokasi',0)";
                $query = $this->db->query($sql);
                if ($query) {
                    
                } else {
                    echo '<div class="error">ERROR: Gagal upload file!</div>';
                }
            } else {
                echo '<div class="error">ERROR: Besar ukuran file (file size) maksimal 1 Mb!</div>';
            }
        } else {
            echo '<div class="error">ERROR: Ekstensi file tidak di izinkan!</div>';
        }
    }

    public function getDraf($product_id){
        $query = $this->db->query("SELECT * FROM " .DB_PREFIX."draf where product_id='".$product_id."'");
        return $query->rows;
    }

}
