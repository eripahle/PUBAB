<?php
class ControllerModuleFeaturedcategory extends Controller {
	public function index($setting) {
		$this->load->language('module/featuredcategory');

		$data['heading_title'] = $this->language->get('heading_title');


		$data['button_cart'] = $this->language->get('button_cart');

		$this->load->model('catalog/product');
                $this->load->model('catalog/category');

		$this->load->model('tool/image');

		$data['products'] = array();

		$products = explode(',', $this->config->get('featuredcategory_product'));

		if (empty($setting['limit'])) {
			$setting['limit'] = 50;
		}

		$products = array_slice($products, 0, (int)$setting['limit']);

		foreach ($products as $category_id) {
			$product_info = $this->model_catalog_category->getCategory($category_id);
			if ($product_info) {
				if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
                $image = $this->model_tool_image->resize('placeholder.png', 20, 20);
				}

				$data['products'][] = array(
					'category_id' => $product_info['category_id'],
					'thumb'   	 => $image,
					'name'    	 => $product_info['name'],
                    'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'href'        => $this->url->link('product/category', 'path=' . $product_info['category_id'])
				);
			}
		}

		if ($data['products']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/featuredcategory.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/featuredcategory.tpl', $data);
			} else {
				return $this->load->view('default/template/module/featuredcategory.tpl', $data);
			}
		}
	}
}