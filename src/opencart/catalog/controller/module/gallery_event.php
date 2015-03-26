<?php
class ControllerModuleGalleryEvent extends Controller {
	public function index($setting) {
		$this->load->language('module/gallery_event');
                $this->load->model('module/gallery_event');
                
                $data['gallerys']= $this->model_module_gallery->getAllGallery();
                
		$data['heading_title'] = $this->language->get('heading_title');				 						
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/gallery_event.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/gallery_event.tpl', $data);
			} else {
				return $this->load->view('default/template/module/gallery_event.tpl', $data);
			}
		}
}
