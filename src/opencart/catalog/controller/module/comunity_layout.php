<?php


class ControllerModuleComunityLayout extends Controller {

    public function index($setting) {
        $this->load->language('module/comunity');
        $this->load->model('module/comunity');

        $product_total = $this->model_module_comunity->getNumberOfData();

        $data['viewAll'] = $this->url->link('common/comunity', '', 'SSL');

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
            'href' => $this->url->link('common/comunity', ' ', 'SSL')
        );


        $pagination = new Pagination();
        $pagination->total = $product_total;
        $pagination->page = $page;
        $pagination->limit = 5;

        $pagination->url = $this->url->link('common/comunity', '&page={page}', 'SSL');

        $data['comunitys'] = $this->model_module_comunity->getAllComunity($pagination->limit * ($page - 1), $pagination->limit);

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($product_total - 5)) ? $product_total : ((($page - 1) * 5) + 5), $product_total, ceil($product_total / 5));

        $data['heading_title'] = $this->language->get('heading_title');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/comunity_layout.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/comunity_layout.tpl', $data);
        } else {
            return $this->load->view('default/template/module/comunity_layout.tpl', $data);
        }
    }

}
