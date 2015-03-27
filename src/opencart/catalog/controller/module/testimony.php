<?php
class ControllerModuleTestimony extends Controller {
	public function index($setting) {
		$this->load->language('module/testimony');
                $this->load->model('module/testimony');
                
                $data['testimonys']= $this->model_module_testimony->getLatestTestimony();
                
                $data['viewAll'] = $this->url->link('common/testimony', '', 'SSL');
                
		$data['heading_title'] = $this->language->get('heading_title');				 						
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/testimony.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/testimony.tpl', $data);
			} else {
				return $this->load->view('default/template/module/testimony.tpl', $data);
			}
        }
        
        
}
