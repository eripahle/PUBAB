<?php
class ControllerModuleGalleryEventSimple extends Controller {
	public function index($setting) {
		$this->load->language('module/gallery_event_simple');
                $this->load->model('module/gallery_event_simple');
                
                $data['gallerys']= $this->model_module_gallery_event_simple->getAllGallery();
                
		$data['heading_title'] = $this->language->get('heading_title');				 						
                $data['view_all_gallery'] = $this->url->link('common/gallery');
                
                $data['entry_view_all_gallery'] = $this->language->get('entry_view_all_gallery');
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/gallery_event_simple.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/gallery_event_simple.tpl', $data);
			} else {
				return $this->load->view('default/template/module/gallery_event_simple.tpl', $data);
			}
		}
}
