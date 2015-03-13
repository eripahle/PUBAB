<?php

class ControllerCommonFooter extends Controller {

    public function index() {
        $this->load->language('common/footer');
        
        $data['text_publisher'] = $this->language->get('text_publisher');
        $data['text_howtoselftpublish'] = $this->language->get('text_howtoselftpublish');
        $data['text_howtobeeditor'] = $this->language->get('text_howtobeeditor');
        $data['text_howtoshop'] = $this->language->get('text_howtoshop');
        $data['text_service'] = $this->language->get('text_service');

        $data['text_books'] = $this->language->get('text_books');
        $data['text_bestseller'] = $this->language->get('text_bestseller');
        $data['text_popularbooks'] = $this->language->get('text_popularbooks');
        $data['text_newbooks'] = $this->language->get('text_newbooks');
        $data['text_catalogbooks'] = $this->language->get('text_catalogbooks');

        $data['text_termandcondition'] = $this->language->get('text_termandcondition');
        $data['text_bookpricingandroyalty'] = $this->language->get('text_bookpricingandroyalty');
        $data['text_orderbooks'] = $this->language->get('text_orderbooks');

        $data['text_quickhelp'] = $this->language->get('text_quickhelp');
        $data['text_faq'] = $this->language->get('text_faq');
        $data['text_abouteditor'] = $this->language->get('text_abouteditor');
        $data['text_comunity'] = $this->language->get('text_comunity');
        $data['text_videochatadmin'] = $this->language->get('text_videochatadmin');

        $data['text_linkedin'] = $this->language->get('text_linkedin');
        $data['text_facebook'] = $this->language->get('text_facebook');
        $data['text_twitter'] = $this->language->get('text_twitter');
        $data['text_followus'] = $this->language->get('text_followus');

        $data['text_home'] = $this->language->get('text_home');
        $data['text_about'] = $this->language->get('text_about');
        $data['text_contact'] = $this->language->get('text_contact');
        $data['text_ourgalleryevent'] = $this->language->get('text_ourgalleryevent');

        $this->load->model('catalog/information');

        $data['informations'] = array();

        foreach ($this->model_catalog_information->getInformations() as $result) {
            if ($result['bottom']) {
                $data['informations'][] = array(
                    'title' => $result['title'],
                    'href' => $this->url->link('information/information', 'information_id=' . $result['information_id'])
                );
            }
        }

        
        $data['howtoselfpublish'] = $this->url->link('information/howtoselfpublish', '' , 'SSL');
        $data['howtobeeditor'] = $this->url->link('information/howtobeeditor', '' , 'SSL');
        $data['howtoshop'] = $this->url->link('information/howtoshop','','SSL');        
        $data['services'] = $this->url->link('information/services','','SSL');
                
        $data['bestseller'] = $this->url->link('information/bestseller', '', 'SSL');
        $data['popularbooks'] = $this->url->link('information/popularbooks', '', 'SSL');
        $data['newbooks'] = $this->url->link('information/newbook','','SSL');
        $data['catalogbooks'] = $this->url->link('account/account', '', 'SSL');
        
        $data['bookpricingandroyalty'] = $this->url->link('account/order', '', 'SSL');
        $data['orderbooks'] = $this->url->link('account/wishlist', '', 'SSL');
        
        $data['faq'] = $this->url->link('account/voucher', '', 'SSL');
        $data['abouteditor'] = $this->url->link('affiliate/account', '', 'SSL');
        $data['comunity'] = $this->url->link('product/special');
        $data['videochatadmin'] = $this->url->link('account/account', '', 'SSL');        
                
        
//        $data['text_books'] = $this->language->get('text_books');
//        $data['text_bestseller'] = $this->language->get('text_bestseller');
//        $data['text_popularbooks'] = $this->language->get('text_popularbooks');
//        $data['text_newbooks'] = $this->language->get('text_newbooks');
//        $data['text_catalogbooks'] = $this->language->get('text_catalogbooks');
//
//        $data['text_termandcondition'] = $this->language->get('text_termandcondition');
//        $data['text_bookpricingandroyalty'] = $this->language->get('text_bookpricingandroyalty');
//        $data['text_orderbooks'] = $this->language->get('text_orderbooks');

//        $data['text_quickhelp'] = $this->language->get('text_quickhelp');
//        $data['text_faq'] = $this->language->get('text_faq');
//        $data['text_abouteditor'] = $this->language->get('text_abouteditor');
//        $data['text_comunity'] = $this->language->get('text_comunity');
//        $data['text_videochatadmin'] = $this->language->get('text_videochatadmin');

//        $data['text_linkedin'] = $this->language->get('text_linkedin');
//        $data['text_facebook'] = $this->language->get('text_facebook');
//        $data['text_twitter'] = $this->language->get('text_twitter');
//        $data['text_followus'] = $this->language->get('text_followus');
//
//        $data['text_home'] = $this->language->get('text_home');
//        $data['text_about'] = $this->language->get('text_about');
//        $data['text_contact'] = $this->language->get('text_contact');
//        $data['text_ourgalleryevent'] = $this->language->get('text_ourgalleryevent');
//
//        
        $data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

        // Whos Online
        if ($this->config->get('config_customer_online')) {
            $this->load->model('tool/online');

            if (isset($this->request->server['REMOTE_ADDR'])) {
                $ip = $this->request->server['REMOTE_ADDR'];
            } else {
                $ip = '';
            }

            if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
                $url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
            } else {
                $url = '';
            }

            if (isset($this->request->server['HTTP_REFERER'])) {
                $referer = $this->request->server['HTTP_REFERER'];
            } else {
                $referer = '';
            }

            $this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
        } else {
            return $this->load->view('default/template/common/footer.tpl', $data);
        }
    }

}
