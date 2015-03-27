<?php
include "system/engine/paging.php";

class ControllerModuleTestimonyLayout extends Controller {
        
	public function index($setting) {
		$this->load->language('module/testimony');
                $this->load->model('module/testimony');
                $p      = new Paging;	
                
                $data['testimonys']= $this->model_module_testimony->getAllTestimony($p);
                
                $data['viewAll'] = $this->url->link('common/testimony', '', 'SSL');
                
		$data['heading_title'] = $this->language->get('heading_title');				 						
                
            	$data['jmldata'] = $this->model_module_testimony->getNumberOfData($p);
                $data['jmlhalaman']  = $this->model_module_testimony->getJmlHalaman($p,$data['jmldata']);
                $data['linkHalaman'] = $p->navHalaman($_GET['halaman'], $data['jmlhalaman']);
    
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/testimony_layout.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/testimony_layout.tpl', $data);
			} else {
				return $this->load->view('default/template/module/testimony_layout.tpl', $data);
			}
        }
        
        
}
