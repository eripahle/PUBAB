<?php

class ModelModuleUploadbook extends Model {

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
      //  $this->insertFile($data);
      //print_r($data);

        $this->event->trigger('pre.admin.product.add', $data);
        //echo $this->db->escape($data['harga']);

//        echo 'data0';
//        if (isset($data['category_classes2'])) {
//            echo 'data1';
//            foreach ($data['category_classes2'] as $category_id) {
//                echo 'data2';
//                echo $category_id['nama'];
//            }
//        }
                $this->db->query("INSERT INTO " . DB_PREFIX 
                        . "product SET model = 'buku' "// . $this->db->escape($data['model']) 
                        . ", isbn = " . $this->db->escape($data['isbn']) 
                        . ", price = " . $this->db->escape($data['harga']) 
                        . ""
                        );
//                
        //. "', points = '0'"// . (int)$data['points'] 
        //. "', weight = '0'"// . (float)$data['weight'] 
        //. "', weight_class_id = '0'"// . (int)$data['weight_class_id'] 
        //. "', length = '0'"// . (float)$data['length'] 
        //. "', width = '0'"// . (float)$data['width'] 
        //. "', height = '0'"// . (float)$data['height'] 
        //. "', length_class_id = '0'"// . (int)$data['length_class_id'] 
        //. "', status = '0'"// . (int)$data['status'] 
        //. "', tax_class_id = '0'"// . $this->db->escape($data['tax_class_id']) 
        //. "', sort_order = '0'"// . (int)$data['sort_order'] . "', date_added = NOW()");
        $product_id = $this->db->getLastId();
//		if (isset($data['image'])) {
//			$this->db->query("UPDATE " . DB_PREFIX . "product SET image = '" . $this->db->escape($data['image']) . "' WHERE product_id = '" . (int)$product_id . "'");
//		}
//		foreach ($data['product_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_description "
                        . "SET product_id = '" . (int)$product_id 
                        . "', language_id = 1"// . (int)$language_id 
                        . ", name = '" . $this->db->escape($data['titlebook']) 
                        . "', number_of_page = ". $this->db->escape($data['jumlahhalaman'])         
                        . ", description = '" . $this->db->escape($data['sinopsis'])."'");
//        . "', tag = '" . $this->db->escape($value['tag']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
//		}
//
//		if (isset($data['product_store'])) {
//			foreach ($data['product_store'] as $store_id) {
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store SET product_id = '" . (int)$product_id . "', store_id = '" . (int)$store_id . "'");
//			}
//		}
//
//		if (isset($data['product_attribute'])) {
//			foreach ($data['product_attribute'] as $product_attribute) {
//				if ($product_attribute['attribute_id']) {
//					$this->db->query("DELETE FROM " . DB_PREFIX . "product_attribute WHERE product_id = '" . (int)$product_id . "' AND attribute_id = '" . (int)$product_attribute['attribute_id'] . "'");
//
//					foreach ($product_attribute['product_attribute_description'] as $language_id => $product_attribute_description) {
//						$this->db->query("INSERT INTO " . DB_PREFIX . "product_attribute SET product_id = '" . (int)$product_id . "', attribute_id = '" . (int)$product_attribute['attribute_id'] . "', language_id = '" . (int)$language_id . "', text = '" .  $this->db->escape($product_attribute_description['text']) . "'");
//					}
//				}
//			}
//		}
//
//		if (isset($data['product_option'])) {
//			foreach ($data['product_option'] as $product_option) {
//				if ($product_option['type'] == 'select' || $product_option['type'] == 'radio' || $product_option['type'] == 'checkbox' || $product_option['type'] == 'image') {
//					if (isset($product_option['product_option_value'])) {
//						$this->db->query("INSERT INTO " . DB_PREFIX . "product_option SET product_id = '" . (int)$product_id . "', option_id = '" . (int)$product_option['option_id'] . "', required = '" . (int)$product_option['required'] . "'");
//
//						$product_option_id = $this->db->getLastId();
//
//						foreach ($product_option['product_option_value'] as $product_option_value) {
//							$this->db->query("INSERT INTO " . DB_PREFIX . "product_option_value SET product_option_id = '" . (int)$product_option_id . "', product_id = '" . (int)$product_id . "', option_id = '" . (int)$product_option['option_id'] . "', option_value_id = '" . (int)$product_option_value['option_value_id'] . "', quantity = '" . (int)$product_option_value['quantity'] . "', subtract = '" . (int)$product_option_value['subtract'] . "', price = '" . (float)$product_option_value['price'] . "', price_prefix = '" . $this->db->escape($product_option_value['price_prefix']) . "', points = '" . (int)$product_option_value['points'] . "', points_prefix = '" . $this->db->escape($product_option_value['points_prefix']) . "', weight = '" . (float)$product_option_value['weight'] . "', weight_prefix = '" . $this->db->escape($product_option_value['weight_prefix']) . "'");
//						}
//					}
//				} else {
//					$this->db->query("INSERT INTO " . DB_PREFIX . "product_option SET product_id = '" . (int)$product_id . "', option_id = '" . (int)$product_option['option_id'] . "', value = '" . $this->db->escape($product_option['value']) . "', required = '" . (int)$product_option['required'] . "'");
//				}
//			}
//		}
//
//		if (isset($data['product_discount'])) {
//			foreach ($data['product_discount'] as $product_discount) {
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_discount SET product_id = '" . (int)$product_id . "', customer_group_id = '" . (int)$product_discount['customer_group_id'] . "', quantity = '" . (int)$product_discount['quantity'] . "', priority = '" . (int)$product_discount['priority'] . "', price = '" . (float)$product_discount['price'] . "', date_start = '" . $this->db->escape($product_discount['date_start']) . "', date_end = '" . $this->db->escape($product_discount['date_end']) . "'");
//			}
//		}
//
//		if (isset($data['product_special'])) {
//			foreach ($data['product_special'] as $product_special) {
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_special SET product_id = '" . (int)$product_id . "', customer_group_id = '" . (int)$product_special['customer_group_id'] . "', priority = '" . (int)$product_special['priority'] . "', price = '" . (float)$product_special['price'] . "', date_start = '" . $this->db->escape($product_special['date_start']) . "', date_end = '" . $this->db->escape($product_special['date_end']) . "'");
//			}
//		}
//
//		if (isset($data['product_image'])) {
//			foreach ($data['product_image'] as $product_image) {
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_image SET product_id = '" . (int)$product_id . "', image = '" . $this->db->escape($product_image['image']) . "', sort_order = '" . (int)$product_image['sort_order'] . "'");
//			}
//		}
//
//		if (isset($data['product_download'])) {
//			foreach ($data['product_download'] as $download_id) {
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_download SET product_id = '" . (int)$product_id . "', download_id = '" . (int)$download_id . "'");
//			}
//		}
//
//
//        //        if (isset($data['category_class_id'])) {
//            foreach ($data['category_class_id'] as $category_id) {
                $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = " . (int) $product_id . ", category_id = " . $this->db->escape($data['category_class_id']) . "");
//            }
//        }
//        
//
//		if (isset($data['product_filter'])) {
//			foreach ($data['product_filter'] as $filter_id) {
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_filter SET product_id = '" . (int)$product_id . "', filter_id = '" . (int)$filter_id . "'");
//			}
//		}
//
//		if (isset($data['product_related'])) {
//			foreach ($data['product_related'] as $related_id) {
//				$this->db->query("DELETE FROM " . DB_PREFIX . "product_related WHERE product_id = '" . (int)$product_id . "' AND related_id = '" . (int)$related_id . "'");
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_related SET product_id = '" . (int)$product_id . "', related_id = '" . (int)$related_id . "'");
//				$this->db->query("DELETE FROM " . DB_PREFIX . "product_related WHERE product_id = '" . (int)$related_id . "' AND related_id = '" . (int)$product_id . "'");
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_related SET product_id = '" . (int)$related_id . "', related_id = '" . (int)$product_id . "'");
//			}
//		}
//
//		if (isset($data['product_reward'])) {
//			foreach ($data['product_reward'] as $customer_group_id => $product_reward) {
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_reward SET product_id = '" . (int)$product_id . "', customer_group_id = '" . (int)$customer_group_id . "', points = '" . (int)$product_reward['points'] . "'");
//			}
//		}
//
//		if (isset($data['product_layout'])) {
//			foreach ($data['product_layout'] as $store_id => $layout_id) {
//				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_layout SET product_id = '" . (int)$product_id . "', store_id = '" . (int)$store_id . "', layout_id = '" . (int)$layout_id . "'");
//			}
//		}
//
//		if (isset($data['keyword'])) {
//			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'product_id=" . (int)$product_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
//		}
//
//		if (isset($data['product_recurrings'])) {
//			foreach ($data['product_recurrings'] as $recurring) {
//				$this->db->query("INSERT INTO `" . DB_PREFIX . "product_recurring` SET `product_id` = " . (int)$product_id . ", customer_group_id = " . (int)$recurring['customer_group_id'] . ", `recurring_id` = " . (int)$recurring['recurring_id']);
//			}
//		}

        $this->cache->delete('product');

        $this->event->trigger('post.admin.product.add', $product_id);

        return $product_id;
    }

    public function insertFile($data,$product_id) {
          //print_r($data);
            $allowed_ext = array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip');
            $file_name = $data['filebuku']['name'];
            $dot = '.';
            $file_ext = strtolower(end(explode($dot, $file_name)));
            $file_size = $data['filebuku']['size'];
            $file_tmp = $data['filebuku']['tmp_name'];

            $nama = date("smhymd").'_'.$file_name;
            $tgl = date("Y-m-d");

            if (in_array($file_ext, $allowed_ext) === true) {
                if ($file_size < 1044070000) {
                    $lokasi = 'files/' . $nama . '.' . $file_ext;                    
                    $sql = "INSERT INTO oc_draf VALUES(NULL, $product_id,'$lokasi','$tgl', '$nama', '$file_ext', '$file_size')";
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

}
