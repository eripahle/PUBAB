<?php
class ModelShippingjneyes extends Model {
	function getQuote($address) {
		$this->load->language('shipping/jneyes');
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('jneyes_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");
	
		if (!$this->config->get('jneyes_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}

		$method_data = array();
	
		if ($status) {
		
		$jneyes_cost = 0;
			$weight = $this->cart->getWeight();
			
			$rates = preg_split('/\r\n/', $this->config->get('jneyes_cost'));
			
			foreach ($rates as $rate) {
				$items = explode(',', $rate);
				if ($address['zone_id'] == $items[0]) {
					$pos = strpos(strtolower($items[1]), strtolower($address['city']));
					if ($pos !== false) {
						$www_pijaronline_com = number_format($weight, 2, '.', ',');
						$donasi = substr($www_pijaronline_com, 0, -2);
						$support = $weight - $donasi;
						if ($weight <= 1.0){
							$jneyes_cost = $items[2];
						}elseif($support < 0.1){
							$jneyes_cost = $donasi*$items[2];
						}else{
							$jneyes_cost = ($donasi+1)* $items[2];
						}
                                           
						break;
					}                                       
					}
			}
			
		
		
			$quote_data = array();
			if($jneyes_cost == 0){ // kontrol
      		$quote_data['jneyes'] = array(
        		'id'           => 'jneyes.jneyes',
        		'title'        => $this->language->get('text_shipping_not_available'),
        		'cost'         => $jneyes_cost,
        		'tax_class_id' => $this->config->get('jneyes_tax_class_id'),
				'text'         => $this->language->get('text_cost_zero')
      		);

      		$method_data = array(
        		'id'         => 'jneyes',
        		'title'      => $this->language->get('text_title'),
        		'quote'      => $quote_data,
				'sort_order' => $this->config->get('jneyes_sort_order'),
        		'error'      => FALSE
      		);
			}else{ // kontrol
      		$quote_data['jneyes'] = array(
        		'code'           => 'jneyes.jneyes',
        		'title'        => $this->language->get('text_description'),
        		'cost'         => $jneyes_cost,
        		'tax_class_id' => $this->config->get('jneyes_tax_class_id'),
				'text'         => $this->currency->format($this->tax->calculate($jneyes_cost, $this->config->get('jneyes_tax_class_id'), $this->config->get('config_tax')))
      		);

      		$method_data = array(
        		'code'         => 'jneyes',
        		'title'      => $this->language->get('text_title'),
        		'quote'      => $quote_data,
				'sort_order' => $this->config->get('jneyes_sort_order'),
        		'error'      => FALSE
      		);
			} // kontrol
			
					}
					
	
		return $method_data;
	}
}
?>