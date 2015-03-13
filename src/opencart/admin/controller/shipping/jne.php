<?php
class ControllerShippingjne extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->load->language('shipping/jne');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('jne', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL');
		}
				
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_all_zones'] = $this->language->get('text_all_zones');
		$data['text_none'] = $this->language->get('text_none');
		
		$data['entry_cost'] = $this->language->get('entry_cost');
		$data['entry_tax'] = $this->language->get('entry_tax');
		$data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
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
			'href'      => $this->url->link('shipping/jne', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$data['action'] = $this->url->link('shipping/jne', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL');
		
		if (isset($this->request->post['jne_cost'])) {
			$data['jne_cost'] = $this->request->post['jne_cost'];
		} else {
			$data['jne_cost'] = $this->config->get('jne_cost');
		}

		if (isset($this->request->post['jne_tax_class_id'])) {
			$data['jne_tax_class_id'] = $this->request->post['jne_tax_class_id'];
		} else {
			$data['jne_tax_class_id'] = $this->config->get('jne_tax_class_id');
		}

		if (isset($this->request->post['jne_geo_zone_id'])) {
			$data['jne_geo_zone_id'] = $this->request->post['jne_geo_zone_id'];
		} else {
			$data['jne_geo_zone_id'] = $this->config->get('jne_geo_zone_id');
		}
		
		if (isset($this->request->post['jne_status'])) {
			$data['jne_status'] = $this->request->post['jne_status'];
		} else {
			$data['jne_status'] = $this->config->get('jne_status');
		}
		
		if (isset($this->request->post['jne_sort_order'])) {
			$data['jne_sort_order'] = $this->request->post['jne_sort_order'];
		} else {
			$data['jne_sort_order'] = $this->config->get('jne_sort_order');
		}				

		$this->load->model('localisation/tax_class');
		
		$data['tax_classes'] = $this->model_localisation_tax_class->getTaxClasses();
		
		$this->load->model('localisation/geo_zone');
		
		$data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
								
                $data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
				
		$this->response->setOutput($this->load->view('shipping/jne.tpl', $data));
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'shipping/jne')) {
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