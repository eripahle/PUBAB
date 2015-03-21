<?php
class ControllerModuleGallery extends Controller {
	public function index($setting) {
		$this->load->language('module/gallery');
                $this->load->model('module/gallery');
                
		$data['heading_title'] = $this->language->get('heading_title');				 						
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/gallery.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/gallery.tpl', $data);
			} else {
				return $this->load->view('default/template/module/mostreviewed.tpl', $data);
			}
		}
}
