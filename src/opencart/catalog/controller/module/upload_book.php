<?php

class ControllerModuleUploadBook extends Controller {

    public function index() {
        $this->load->language('module/upload_book');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_tax'] = $this->language->get('text_tax');
        $data['button_cart'] = $this->language->get('button_cart');
        $data['button_wishlist'] = $this->language->get('button_wishlist');
        $data['button_compare'] = $this->language->get('button_compare');
        $data['text_non'] = $this->language->get('text_non');

        $data['entry_judul_buku'] = $this->language->get('entry_judul_buku');
        $data['entry_kategori_buku'] = $this->language->get('entry_kategori_buku');
        $data['entry_file_buku'] = $this->language->get('entry_file_buku');
        $data['entry_isbn'] = $this->language->get('entry_isbn');
        $data['entry_harga'] = $this->language->get('entry_harga');
        $data['entry_cover'] = $this->language->get('entry_cover');
        $data['entry_jumlah_halaman'] = $this->language->get('entry_jumlah_halaman');
        $data['entry_sinopsis'] = $this->language->get('entry_sinopsis');


        $data['tab_general'] = $this->language->get('tab_general');
        $data['tab_data'] = $this->language->get('tab_data');

        $data['help_entry_judul_buku'] = $this->language->get('help_entry_judul_buku');
        $data['help_entry_kategori_buku'] = $this->language->get('help_entry_kategori_buku');
        $data['help_entry_file_buku'] = $this->language->get('help_entry_file_buku');
        $data['help_entry_isbn'] = $this->language->get('help_entry_isbn');
        $data['help_entry_harga'] = $this->language->get('help_entry_harga');
        $data['help_entry_cover'] = $this->language->get('help_entry_cover');
        $data['help_entry_jumlah_halaman'] = $this->language->get('help_entry_jumlah_halaman');
        $data['help_entry_sinopsis'] = $this->language->get('help_entry_sinopsis');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['browse'] = $this->language->get('browse');

        $data['cancel'] = $this->url->link('common/home', '', 'ssl');

        $this->load->model('module/uploadbook');
        $this->load->model('catalog/product');
        $this->load->model('tool/image');


        $data['category_classes'] = $this->model_module_uploadbook->getCategory();

        if (!isset($this->request->get['product_id'])) {
            $data['action'] = $this->url->link('module/upload_book/add', '', 'SSL');
        } else {
            //
        }
        $data['filebuku'] = $this->request->files;
        $data['fileimage'] = $this->request->files;

        if (isset($this->request->post['image'])) {
            $data['image'] = $this->request->post['image'];
        } elseif (!empty($product_info)) {
            $data['image'] = $product_info['image'];
        } else {
            $data['image'] = '';
        }       

        if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
        } elseif (!empty($product_info) && is_file(DIR_IMAGE . $product_info['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($product_info['image'], 100, 100);
        } else {
            $data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }

        $data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/upload_book.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/upload_book.tpl', $data);
        }
        else {
            return $this->load->view('default/template/module/upload_book.tpl', $data);
        }
    }

    public function add() {
        $this->load->language('module/upload_book');
        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('module/uploadbook');

        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
            $product_id = $this->model_module_uploadbook->addProduct($this->request->post);
            $this->model_module_uploadbook->insertFile($this->request->files,$product_id);
        }
        //$link=$this->url->link('common/home', '', 'ssl');
        //header('location:index.php/route?common/home');
    }

}
