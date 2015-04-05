<?php
class ControllerModuleTestimoeditor extends Controller {
	public function index($setting) {
		$this->load->language('module/testimoeditor');
                $this->load->model('module/testimony');
                $this->load->model('module/abouteditor');
                
                $data['viewAlltestimony'] = $this->url->link('common/testimony', '', 'SSL');
                $data['viewAlleditor'] = $this->url->link('common/abouteditor', '', 'SSL');
                
                $data['testimonys']= $this->model_module_testimony->getLatestTestimony();
                $data['abouteditors']= $this->model_module_abouteditor->getLatestTestimony();
                
                //$data['viewAll'] = $this->url->link('common/testimony', '', 'SSL');
                
		$data['heading_title1'] = $this->language->get('heading_title1');				 						
                $data['heading_title2'] = $this->language->get('heading_title2');				 						
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/testimoeditor.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/testimoeditor.tpl', $data);
			} else {
				return $this->load->view('default/template/module/testimoeditor.tpl', $data);
			}
        }
        
        
}

