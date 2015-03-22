<?php

class ModelModuleUploadDraf extends Model {

    
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

    public function addProduct($data, $file, $id, $stat) {
        //print_r($id);
        if ($stat) {
            //pre conditions
            $dot = '.';
            $this->event->trigger('pre.admin.product.add', $data);

            // handle file imade Upload Draf        
            $file_name_buku = $file['filebuku']['name'];
            $file_ext_buku = strtolower(end(explode($dot, $file_name_buku)));
            $file_size_buku = $file['filebuku']['size'];
            $file_tmp_buku = $file['filebuku']['tmp_name'];
            $nama_buku = date("smhymd") . '_' . $file_name_buku;
            $tgl_buku = date("Y-m-d");

            // handle file imade Upload caver        
            $file_name_caver = $file['fileimage']['name'];
            $file_ext_caver = strtolower(end(explode($dot, $file_name_caver)));
            $file_tmp_caver = $file['fileimage']['tmp_name'];

            // handel upload db
            $lokasi_caver = "cover/". $nama_buku . '.' . $file_ext_caver;
            move_uploaded_file($file_tmp_caver, DIR_IMAGE."/".$lokasi_caver);


            $stat = $this->db->query("INSERT INTO " . DB_PREFIX
                    . "product SET model = 'buku', "
                    . " customer_id = ".(int)$id
                    . ", isbn = " . $this->db->escape($data['isbn'])
                    . ", price = " . $this->db->escape($data['harga'])
                    . ", image = '" . $lokasi_caver . "'"
            );

            if ($stat) {
                $product_id = $this->db->getLastId();
                $sql = "INSERT INTO " . DB_PREFIX . "product_image VALUES(NULL, $product_id,'$lokasi_caver',0)";
                $this->db->query($sql);

                $this->db->query("INSERT INTO " . DB_PREFIX . "product_description "
                        . "SET product_id = '" . (int) $product_id
                        . "', language_id = 1"// . (int)$language_id 
                        . ", name = '" . $this->db->escape($data['titlebook'])
                        . "', number_of_page = " . $this->db->escape($data['jumlahhalaman'])
                        . ", description = '" . $this->db->escape($data['sinopsis']) . "'");

                $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = " . (int) $product_id . ", category_id = " . $this->db->escape($data['category_class_id']) . "");

                $lokasi_buku = 'system/engine/upload/files/' . $nama_buku . '.' . $file_ext_buku;
                move_uploaded_file($file_tmp_buku, $lokasi_buku);
                $sql = "INSERT INTO " . DB_PREFIX . "draf VALUES(NULL, $product_id,'$lokasi_buku','$tgl_buku', '$nama_buku', '$file_ext_buku', '$file_size_buku')";
                $this->db->query($sql);

                $this->cache->delete('product');
                $this->event->trigger('post.admin.product.add', $product_id);

                return true;
            }
        }
    }

    public function addProductWithRequestDesign($data, $file, $id, $stat) {
        //print_r($id);
        if ($stat) {
            //pre conditions
            $dot = '.';
            $this->event->trigger('pre.admin.product.add', $data);

            // handle file imade Upload Draf        
            $file_name_buku = $file['filebuku']['name'];
            $file_ext_buku = strtolower(end(explode($dot, $file_name_buku)));
            $file_size_buku = $file['filebuku']['size'];
            $file_tmp_buku = $file['filebuku']['tmp_name'];
            $nama_buku = date("smhymd") . '_' . $file_name_buku;
            $tgl_buku = date("Y-m-d");

            // handle file imade Upload caver        
//            $file_name_caver = $file['fileimage']['name'];
//            $file_ext_caver = strtolower(end(explode($dot, $file_name_caver)));
//            $file_tmp_caver = $file['fileimage']['tmp_name'];

            // handel upload db
//            $lokasi_caver = 'system/engine/upload/cavers/' . $nama_buku . '.' . $file_ext_caver;
//            move_uploaded_file($file_tmp_caver, $lokasi_caver);


            $stat = $this->db->query("INSERT INTO " . DB_PREFIX
                    . "product SET model = 'buku', "
                    . " customer_id = ".(int)$id
                    . ", isbn = " . $this->db->escape($data['isbn'])
                    . ", price = " . $this->db->escape($data['harga'])
                    . ", image = 'Request Design'"
            );

            if ($stat) {
                $product_id = $this->db->getLastId();
//                $sql = "INSERT INTO " . DB_PREFIX . "product_image VALUES(NULL, $product_id,'$lokasi_caver',0)";
//                $this->db->query($sql);

                $this->db->query("INSERT INTO " . DB_PREFIX . "product_description "
                        . "SET product_id = '" . (int) $product_id
                        . "', language_id = 1"// . (int)$language_id 
                        . ", name = '" . $this->db->escape($data['titlebook'])
                        . "', number_of_page = " . $this->db->escape($data['jumlahhalaman'])
                        . ", description = '" . $this->db->escape($data['sinopsis']) . "'");

                $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = " . (int) $product_id . ", category_id = " . $this->db->escape($data['category_class_id']) . "");

                $lokasi_buku = 'system/engine/upload/files/' . $nama_buku . '.' . $file_ext_buku;
                move_uploaded_file($file_tmp_buku, $lokasi_buku);
                $sql = "INSERT INTO " . DB_PREFIX . "draf VALUES(NULL, $product_id,'$lokasi_buku','$tgl_buku', '$nama_buku', '$file_ext_buku', '$file_size_buku')";
                $this->db->query($sql);

                $this->cache->delete('product');
                $this->event->trigger('post.admin.product.add', $product_id);

                return true;
            }
        }
    }
}
