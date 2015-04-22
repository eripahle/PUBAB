<?php

class ControllerModuleTestimonyLayout extends Controller {

    public function index($setting) {
        $this->load->language('module/testimony');
        $this->load->model('module/testimony');

        $product_total = $this->model_module_testimony->getNumberOfData();

        $data['viewAll'] = $this->url->link('common/testimony', '', 'SSL');

        $data['heading_title'] = $this->language->get('heading_title');

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', '', 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('common/testimony', ' ', 'SSL')
        );


        $pagination = new Pagination();
        $pagination->total = $product_total;
        $pagination->page = $page;
        $pagination->limit = 5;

        $pagination->url = $this->url->link('common/testimony', '&page={page}', 'SSL');

        $data['testimonys'] = $this->model_module_testimony->getAllTestimony($pagination->limit * ($page - 1), $pagination->limit);

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($product_total - 5)) ? $product_total : ((($page - 1) * 5) + 5), $product_total, ceil($product_total / 5));

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/testimony_layout.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/testimony_layout.tpl', $data);
        } else {
            return $this->load->view('default/template/module/testimony_layout.tpl', $data);
        }
    }

}
