<?php
class ControllerModuleListeditbook extends Controller {
	public function index($setting) {

		if(!$this->customer->isLogged()){
			$this->response->redirect($this->url->link('account/login', ' ', 'SSL'));
		}
		
		$this->load->language('module/listeditbook');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

		

		$results = $this->model_catalog_product->getListEdit();

		if ($results) {
			foreach ($results as $result) {
				
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					//'price'       => $price,
					//'special'     => $special,
					//'tax'         => $tax,
					//'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				);
			}

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/listeditbook.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/listeditbook.tpl', $data);
			} else {
				return $this->load->view('default/template/module/listeditbook.tpl', $data);
			}
		}
	}
}