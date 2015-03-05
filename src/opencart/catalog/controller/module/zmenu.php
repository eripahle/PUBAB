<?php

class ControllerModuleZmenu extends Controller {
    private $is_oc2 = false;

    private function setOcVersion() {
        $this->is_oc2 = VERSION >= 2;
    }

    public function index($setting_module) {
        $this->setOcVersion();
        $this->language->load('module/account');
        $this->load->model('setting/setting');
        $this->load->model('catalog/information');
        $this->load->model('catalog/category');
        $this->load->model('catalog/product');

        $settings = $this->model_setting_setting->getSetting('zmenu_data');

        $css_path = 'catalog/view/theme/default/stylesheet/zmenu/default.css';
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/stylesheet/zmenu/default.css')) {
            $css_path = 'catalog/view/theme/'.$this->config->get('config_template') . '/stylesheet/zmenu/default.css';
        }
        $this->document->addStyle($css_path);


        $menu = isset($setting_module['zmenu_id']) && isset($settings[$setting_module['zmenu_id']]) ? $settings[$setting_module['zmenu_id']] : '';

        if (!$menu || !is_array($menu)) {
            return;
        }

        $menu_data = json_decode($menu['json']);


        $data = array();
        $data['items'] = array();

        $data['css_class'] = $setting_module['menu_type'] == 'vertical' ? 'zmenu-v' : 'zmenu-h';

        if (isset($setting_module['css_class']) && $setting_module['css_class']) {
            $data['css_class'] = $setting_module['css_class'];
        }

        $data['heading_title'] = '';

        if ($setting_module['menu_type'] == 'vertical') {
            $data['heading_title'] = $this->getCurrentTitle($menu['name']);
        }


        $data['menu_html'] = '';


        $cache_name = 'zmenu.items.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . $menu['id'];
        $cache_data = $this->cache->get($cache_name);


        if ($cache_data) {
            foreach ($cache_data['items'] as $it) {
                $data['menu_html'] .= $this->itemToHtml($it);
            }
            $data['items'] = $cache_data['items'];

        } else {
            foreach ($menu_data as $item) {
                $it = $this->getItem($item);
                if(!$it) {
                    continue;
                }
                $data['items'][] = $it;
                $data['menu_html'] .= $this->itemToHtml($it);
            }
            $this->cache->set($cache_name, array('items' => $data['items']));
        }


        $this->data = $data;

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/zmenu.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/module/zmenu.tpl';
        } else {
            $this->template = 'default/template/module/zmenu.tpl';
        }

        if ($this->is_oc2) {
            return $this->load->view($this->template, $data);
        } else {
            $this->render();
        }
    }

    private function getCurrentTitle($titles) {
        $lang_id = $this->config->get('config_language_id');
        return isset($titles[$lang_id]) ? $titles[$lang_id] : '';
    }

    private function getItem($item) {
        $childs = array();
        $lang_id = $this->config->get('config_language_id');

        $item = (array)$item;


        $href = $item['href'];
        $title = isset($item['titles']->$lang_id) ? $item['titles']->$lang_id : '';


        switch ($item['type']) {
            case 'information':
                if ($item['data']->show_default_title == 1) {

                    $information = $this->model_catalog_information->getInformation($item['data']->information_id);
                    if(!$information) {
                        return false;
                    }

                    $title = $information['title'];
                }

                $href = $this->url->link('information/information', 'information_id=' . $item['data']->information_id);
                break;

            case 'category':
                $href = $this->url->link('product/category', 'path=' . $item['data']->category_id);

                if ($item['data']->show_default_title == 1) {
                    $category = $this->model_catalog_category->getCategory($item['data']->category_id);
                    if(!$category) {
                        return false;
                    }
                    $title = $category['name'];
                }

                if ($item['data']->show_subcategories) {
                    $subcats = $this->model_catalog_category->getCategories($item['data']->category_id);
                    foreach ($subcats as $cat) {
                        $childs[] = array(
                            'title' => $cat['name'],
                            'href' => $this->url->link('product/category', 'path=' . $cat['category_id'])
                        );
                    }
                }
                break;

            case 'product':
                $href = $this->url->link('product/product', 'product_id=' . $item['data']->product_id);

                if ($item['data']->show_default_title == 1) {
                    $product = $this->model_catalog_product->getProduct($item['data']->product_id);
                    if(!$product) {
                        return false;
                    }
                    $title = $product['name'];
                }
                break;
        }

        foreach ($item['items'] as $subitem) {
            $childs[] = $this->getItem($subitem);
        }


        return array(
            'title' => $title,
            'childs' => $childs,
            'href' => $href
        );
    }

    public function itemToHtml($item) {
        $html = '<li>';
        $hasChilds = isset($item['childs']) && count($item['childs']);
        $css_class = array();

        if ($hasChilds) {
            $css_class[] = "haschild";
        }

        if ($this->isCurrentUrl($item['href'])) {
            $css_class[] = 'selected';
        }

        $css_class = implode(" ", $css_class);

        $html .= '<a href="' . $item['href'] . '" class="' . $css_class . '">' . $item['title'] . '</a>';

        if ($hasChilds) {
            $html .= '<ul>';
            foreach ($item['childs'] as $child) {
                $html .= $this->itemToHtml($child);
            }
            $html .= '</ul>';
        }

        $html .= '</li>';
        return $html;
    }

    private function isCurrentUrl($url) {
        $scheme = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] ? 'https' : 'http';
        $current_url = $scheme . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        $r = false;

        if ($current_url == $url) {
            $r = true;
        } else if ($_SERVER['REQUEST_URI'] && $_SERVER['REQUEST_URI'] == $url) {
            $r = true;
        }

        return $r;
    }


}

?>