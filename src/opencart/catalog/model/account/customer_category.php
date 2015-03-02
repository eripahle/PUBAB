<?php
class ModelAccountCustomerCategory extends Model {
	public function getCustomerId() {
		$query = $this->db->query("SELECT id_category,name_category FROM " . DB_PREFIX . "customer_category WHERE status='1'");

		return $query->rows;
	}
}