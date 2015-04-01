<?php
include "system/engine/paging.php";

class ControllerModuleComunityLayout extends Controller {
        
	public function index($setting) {
		$this->load->language('module/comunity');
                $this->load->model('module/comunity');
                $p = new Paging;	
                
                $data['comunitys']= $this->model_module_comunity->getAllComunity($p);
                
                $data['viewAll'] = $this->url->link('common/comunity', '', 'SSL');
                
		$data['heading_title'] = $this->language->get('heading_title');				 						
                
            	$data['jmldata'] = $this->model_module_comunity->getNumberOfData($p);
                $data['jmlhalaman']  = $this->model_module_comunity->getJmlHalaman($p,$data['jmldata']);
                $data['linkHalaman'] = $p->navHalaman($_GET['halaman'], $data['jmlhalaman']);
    
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/comunity_layout.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/comunity_layout.tpl', $data);
			} else {
				return $this->load->view('default/template/module/comunity_layout.tpl', $data);
			}
        }
        
        
}
