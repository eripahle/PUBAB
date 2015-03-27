<?php
class ControllerModuleAboutEditor extends Controller {
	public function index($setting) {
		$this->load->language('module/abouteditor');
                $this->load->model('module/abouteditor');
                
                $data['abouteditors']= $this->model_module_abouteditor->getLatestTestimony();
                
                $data['viewAll'] = $this->url->link('common/abouteditor', '', 'SSL');
                
		$data['heading_title'] = $this->language->get('heading_title');				 						
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/abouteditor.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/abouteditor.tpl', $data);
			} else {
				return $this->load->view('default/template/module/abouteditor.tpl', $data);
			}
        }
        
        
}
