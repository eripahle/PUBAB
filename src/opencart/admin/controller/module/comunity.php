<?php

class ControllerModuleComunity extends Controller {

    private $error = array();

    public function index() {
        $this->load->language('module/comunity');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('extension/module');

        $this->response->setOutput($this->load->view('module/comunity.tpl', $data));
    }

}
