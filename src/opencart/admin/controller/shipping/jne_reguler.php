<?php
class ControllerShippingJNEReguler extends Controller { 
	private $error = array();
	
	public function index() {  
		$this->load->language('shipping/jne_reguler');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				 
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('jne_reguler', $this->request->post);	

			$this->session->data['success'] = $this->language->get('text_success');
									
			$this->response->redirect($this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_none'] = $this->language->get('text_none');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		
		$data['entry_rate'] = $this->language->get('entry_rate');
		$data['entry_jne_reguler_class'] = $this->language->get('entry_jne_reguler_class');
		$data['entry_tax'] = $this->language->get('entry_tax');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		$data['tab_general'] = $this->language->get('tab_general');

 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_shipping'),
			'href'      => $this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('shipping/jne_reguler', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$data['action'] = $this->url->link('shipping/jne_reguler', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL'); 

		$this->load->model('localisation/geo_zone');
		
		$geo_zones = $this->model_localisation_geo_zone->getGeoZones();
		
		foreach ($geo_zones as $geo_zone) {
			if (isset($this->request->post['jne_reguler_' . $geo_zone['geo_zone_id'] . '_rate'])) {
				$data['jne_reguler_' . $geo_zone['geo_zone_id'] . '_rate'] = $this->request->post['jne_reguler_' . $geo_zone['geo_zone_id'] . '_rate'];
			} else {
				$data['jne_reguler_' . $geo_zone['geo_zone_id'] . '_rate'] = $this->config->get('jne_reguler_' . $geo_zone['geo_zone_id'] . '_rate');
			}		
			
			if (isset($this->request->post['jne_reguler_' . $geo_zone['geo_zone_id'] . '_status'])) {
				$data['jne_reguler_' . $geo_zone['geo_zone_id'] . '_status'] = $this->request->post['jne_reguler_' . $geo_zone['geo_zone_id'] . '_status'];
			} else {
				$data['jne_reguler_' . $geo_zone['geo_zone_id'] . '_status'] = $this->config->get('jne_reguler_' . $geo_zone['geo_zone_id'] . '_status');
			}		
		}
		
		$data['geo_zones'] = $geo_zones;

		if (isset($this->request->post['jne_reguler_tax_class_id'])) {
			$data['jne_reguler_tax_class_id'] = $this->request->post['jne_reguler_tax_class_id'];
		} else {
			$data['jne_reguler_tax_class_id'] = $this->config->get('jne_reguler_tax_class_id');
		}
		
		if (isset($this->request->post['jne_reguler_status'])) {
			$data['jne_reguler_status'] = $this->request->post['jne_reguler_status'];
		} else {
			$data['jne_reguler_status'] = $this->config->get('jne_reguler_status');
		}
		
		if (isset($this->request->post['jne_reguler_sort_order'])) {
			$data['jne_reguler_sort_order'] = $this->request->post['jne_reguler_sort_order'];
		} else {
			$data['jne_reguler_sort_order'] = $this->config->get('jne_reguler_sort_order');
		}	
		
		$this->load->model('localisation/tax_class');
				
		$data['tax_classes'] = $this->model_localisation_tax_class->getTaxClasses();

		$data['tax_classes'] = $this->model_localisation_tax_class->getTaxClasses();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('shipping/jne_reguler.tpl', $data));
	}
		
	private function validate() {
		if (!$this->user->hasPermission('modify', 'shipping/jne_reguler')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>