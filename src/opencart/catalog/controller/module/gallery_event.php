<?php

class ControllerModuleGalleryEvent extends Controller {

    public function index($setting) {
        $this->load->language('module/gallery_event');
        $this->load->model('module/gallery_event');

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', '', 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('common/gallery', ' ', 'SSL')
        );

        $data['gallerys'] = $this->model_module_gallery_event->getAllGallery();

        $data['heading_title'] = $this->language->get('heading_title');
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/gallery_event.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/gallery_event.tpl', $data);
        } else {
            return $this->load->view('default/template/module/gallery_event.tpl', $data);
        }
    }

}
