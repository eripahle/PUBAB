<?php  
class ControllerModuleCustomer extends Controller {
	public function index() {
		$this->language->load('module/customer');
		
    	$data['heading_title'] = $this->language->get('heading_title');
    	
		$data['text_contact'] = $this->language->get('text_contact');
    	$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_returns'] = $this->language->get('text_returns');
		
		$data['contact'] = $this->url->link('information/contact');
    	$data['sitemap'] = $this->url->link('information/sitemap');
		$data['return'] = $this->url->link('account/return/insert');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/customer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/customer.tpl', $data);
		} else {
			return $this->load->view('default/template/module/customer.tpl', $data);
		}
	}
}
?>