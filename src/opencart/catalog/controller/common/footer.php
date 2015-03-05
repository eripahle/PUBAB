<?php

class ControllerCommonFooter extends Controller {

    public function index() {
        $this->load->language('common/footer');

        $data['text_information'] = $this->language->get('text_information');
        $data['text_service'] = $this->language->get('text_service');
        $data['text_extra'] = $this->language->get('text_extra');
        $data['text_contact'] = $this->language->get('text_contact');
        $data['text_return'] = $this->language->get('text_return');
        $data['text_sitemap'] = $this->language->get('text_sitemap');
        $data['text_manufacturer'] = $this->language->get('text_manufacturer');
        $data['text_voucher'] = $this->language->get('text_voucher');
        $data['text_affiliate'] = $this->language->get('text_affiliate');
        $data['text_special'] = $this->language->get('text_special');
        $data['text_account'] = $this->language->get('text_account');
        $data['text_order'] = $this->language->get('text_order');
        $data['text_wishlist'] = $this->language->get('text_wishlist');
        $data['text_newsletter'] = $this->language->get('text_newsletter');

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

        $data['contact'] = $this->url->link('information/contact');
        $data['return'] = $this->url->link('account/return/add', '', 'SSL');
        $data['sitemap'] = $this->url->link('information/sitemap');
        $data['manufacturer'] = $this->url->link('product/manufacturer');
        $data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
        $data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
        $data['special'] = $this->url->link('product/special');
        $data['account'] = $this->url->link('account/account', '', 'SSL');
        $data['order'] = $this->url->link('account/order', '', 'SSL');
        $data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
        $data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');

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
