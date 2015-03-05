<?php

/*
 *  zebratratata@gmail.com
 *
 */

class ControllerModuleZmenu extends Controller {
    private $error = array();
    private $furl; // front url
    private $config_name = 'zmenu_data';
    private $setting;
    private $is_oc2;
    private $is_oc2000;

    private function setOcVersion() {
        $version = implode("", explode(".", VERSION));
        $this->is_oc2 = $version > 2000;
        $this->is_oc2000 = $version == 2000;
    }

    private function _setOutput($data = array()) {
        $this->setOcVersion();
        if ($this->is_oc2 || $this->is_oc2000) {
            $data['header'] = $this->load->controller('common/header');
            $data['footer'] = $this->load->controller('common/footer');
            $data['column_left'] = $this->load->controller('common/column_left');
            $this->response->setOutput($this->load->view($this->template, $data));
        } else {
            $this->children = array(
                'common/header',
                'common/footer'
            );
            $this->response->setOutput($this->render());
        }
    }

    private function _redirect($url) {
        $this->setOcVersion();
        if ($this->is_oc2 || $this->is_oc2000) {
            $this->response->redirect($url);
        } else {
            $this->redirect($url);
        }
    }

    public function clearCache() {
        $this->cache->delete('zmenu');
        $this->_redirect($this->url->link('module/zmenu', 'token=' . $this->session->data['token'], 'SSL'));
    }

    public function remove() {
        $this->_getSetting();
        $id = isset($this->request->get['id']) ? $this->request->get['id'] : 0;
        $modules = $this->config->get('zmenu_module');

        $module_changed = false;
        foreach ($modules as $k => $module) {
            if ($module['zmenu_id'] == $id) {
                unset($modules[$k]);
                $module_changed = true;
            }
        }


        if (isset($this->setting[$id])) {
            unset($this->setting[$id]);
            $this->model_setting_setting->editSetting($this->config_name, $this->setting);
        }

        if ($module_changed) {
            $this->model_setting_setting->editSetting('zmenu', array('zmenu_module' => $modules));
            $this->updateModules($modules);
        }

        $this->_redirect($this->url->link('module/zmenu', 'token=' . $this->session->data['token'], 'SSL'));
    }

    private function updateModules($modules_data) {
        if (!$this->is_oc2) {
            return;
        }

        $this->load->model('extension/module');
        $this->load->model('design/layout');
        $this->load->model('setting/setting');

        $zmenus = $this->model_setting_setting->getSetting($this->config_name, $this->config_name);

        $this->model_extension_module->deleteModulesByCode('zmenu');

        foreach ($modules_data as $k => $module) {
            $name = 'zmenu module ' . $k;

            foreach ($zmenus as $zmenu) {
                if ($module['zmenu_id'] == $zmenu['id']) {
                    foreach ($zmenu['name'] as $lang_id => $name_value) {
                        $name = $name_value . ' ' . $module['position'];
                        if ($lang_id == $this->config->get('config_language_id')) {
                            break;
                        }
                    }
                    break;
                }
            }

            $module['name'] = $name;
            $this->model_extension_module->addModule('zmenu', $module);
            $module_id = $this->db->getLastId();
            $layout_id = $module['layout_id'];
            if ($layout_id != 'zmenu_all_layout') {
                $this->model_design_layout->addModuleToLayout('zmenu.' . $module_id, $layout_id, $module);
            }
        }

    }

    private function index_fix_os2() {
        // if module removed - remove him from setting
        $this->load->model('extension/module');
        $modules = $this->model_extension_module->getModulesByCode('zmenu');
        $modules_settings = $this->config->get('zmenu_module');


        if (is_array($modules_settings) && count($modules) != count($modules_settings)) {
            $count_modules = count($modules);
            foreach ($modules_settings as $k => $msetting) {
                $find = false;
                foreach ($modules as $module) {
                    $sett = unserialize($module['setting']);
                    if ($sett['zmenu_id'] == $msetting['zmenu_id'] && $sett['layout_id'] == $msetting['layout_id'] && $sett['position'] == $msetting['position'] && $sett['menu_type'] == $msetting['menu_type']) {
                        $find = true;
                        break;
                    }
                }

                if (!$find) {
                    unset($modules_settings[$k]);
                }
            }



            if ($count_modules == 0 || count($modules_settings) == 0) {
                $this->model_setting_setting->deleteSetting('zmenu');
                $this->config->set('zmenu_module', array());
            } else {
                $this->model_setting_setting->editSetting('zmenu_module', $modules_settings);
                $this->config->set('zmenu_module', $modules_settings);
            }
        }
    }

    public function index() {
        $this->_getSetting();

        $this->language->load('module/zmenu');

        $this->document->setTitle($this->language->get('heading_title2'));


        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
            $this->model_setting_setting->editSetting('zmenu', $this->request->post);

            $this->updateModules($this->request->post['zmenu_module']);

            if ($this->request->post['stay'] == 1) {
                $this->_redirect($this->url->link('module/zmenu', 'token=' . $this->session->data['token'], 'SSL'));
            } else {
                $this->_redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
            }
            return;
        }

        if ($this->is_oc2) {
            $this->index_fix_os2();
        }

        $data = array();

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_content_top'] = $this->language->get('text_content_top');
        $data['text_content_bottom'] = $this->language->get('text_content_bottom');
        $data['text_column_left'] = $this->language->get('text_column_left');
        $data['text_column_right'] = $this->language->get('text_column_right');
        $data['text_all_pages'] = $this->language->get('text_all_pages');
        $data['text_menu_type'] = $this->language->get('text_menu_type');
        $data['text_menu_horizontal'] = $this->language->get('text_menu_horizontal');
        $data['text_menu_vertical'] = $this->language->get('text_menu_vertical');
        $data['text_custom_css'] = $this->language->get('text_custom_css');
        $data['text_main_menu_position'] = $this->language->get('text_main_menu_position');


        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_action'] = $this->language->get('entry_action');
        $data['entry_layout'] = $this->language->get('entry_layout');
        $data['entry_position'] = $this->language->get('entry_position');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');

        $data['button_add_menu'] = $this->language->get('button_add_menu');
        $data['button_save'] = $this->language->get('button_save');
        $data['button_save_and_stay'] = $this->language->get('button_save_and_stay');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_add_module'] = $this->language->get('button_add_module');
        $data['button_remove'] = $this->language->get('button_remove');
        $data['button_edit'] = $this->language->get('button_edit');
        $data['button_copy'] = $this->language->get('button_copy');
        $data['button_clear_cache'] = $this->language->get('button_clear_cache');


        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        $this->breadCrumbs($data);

        $data['items'] = array();

        $default_lang = $this->config->get('config_language_id');


        foreach ($this->setting as $sett) {
            $name = '';
            foreach ($sett['name'] as $language_id => $value) {
                $name = $value;
                if ($language_id == $default_lang) {
                    break;
                }
            }

            $data['items'][] = array(
                'id' => $sett['id'],
                'name' => $name,
                'copy_href' => $this->url->link('module/zmenu/copy', 'id=' . $sett['id'] . '&token=' . $this->session->data['token'], 'SSL'),
                'edit_href' => $this->url->link('module/zmenu/edit', 'id=' . $sett['id'] . '&token=' . $this->session->data['token'], 'SSL'),
                'remove_href' => $this->url->link('module/zmenu/remove', 'id=' . $sett['id'] . '&token=' . $this->session->data['token'], 'SSL')
            );
        }


        $data['action'] = $this->url->link('module/zmenu', 'token=' . $this->session->data['token'], 'SSL');
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
        $data['add_href'] = $this->url->link('module/zmenu/add', 'token=' . $this->session->data['token'], 'SSL');
        $data['clear_cache_href'] = $this->url->link('module/zmenu/clearcache', 'token=' . $this->session->data['token'], 'SSL');


        $data['modules'] = array();

        if (isset($this->request->post['zmenu_module'])) {
            $data['modules'] = $this->request->post['zmenu_module'];
        } elseif ($this->config->get('zmenu_module')) {
            $data['modules'] = $this->config->get('zmenu_module');
        }

        $this->load->model('design/layout');

        $data['layouts'] = $this->model_design_layout->getLayouts();
        $data['layouts'][] = array(
            'layout_id' => 'zmenu_all_layout',
            'name' => $this->language->get('text_all_pages')
        );

        $this->template = $this->is_oc2 || $this->is_oc2000 ? 'module/zmenu/zmenu2.tpl' : 'module/zmenu/zmenu.tpl';

        $this->data = $data;

        $this->_setOutput($this->data);

    }

    public function _getSetting() {
        $this->setOcVersion();
        $this->load->model('setting/setting');
        $this->setting = $this->model_setting_setting->getSetting($this->config_name);
        if (!$this->setting) {
            $this->setting = array();
        }
        $fix_id = array();
        foreach ($this->setting as $k => $sett) {
            $fix_id[$sett['id']] = $sett;
        }

        if (count($fix_id) > 1 && function_exists('uksort')) {
            uksort($fix_id, function ($prev_id, $next_id) {
                $prev_id = str_replace($this->config_name . '_', '', $prev_id);
                $next_id = str_replace($this->config_name . '_', '', $next_id);
                return $prev_id < $next_id;
            });
        }

        $this->setting = $fix_id;
        return $this->setting;
    }

    private function breadCrumbs(&$data) {
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('module/zmenu', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
    }

    public function add() {
        $this->_getSetting();
        $this->_save();
        $this->showForm();
    }

    public function edit() {
        $this->_getSetting();
        $this->_save();
        $this->showForm();
    }

    public function copy() {
        $this->_getSetting();
        $id = isset($this->request->get['id']) ? $this->request->get['id'] : 0;

        if (!$id || !isset($this->setting[$id])) {
            return;
        }

        $new_id = $this->_generateId();
        $clone = $this->setting[$id];
        foreach ($clone['name'] as $lang_id => $name) {
            $clone['name'][$lang_id] = $name . ' clone';
        }
        $clone['id'] = $new_id;
        $this->setting[$new_id] = $clone;
        $this->model_setting_setting->editSetting($this->config_name, $this->setting);


        $this->_redirect($this->url->link('module/zmenu', 'token=' . $this->session->data['token'], 'SSL'));
    }

    private function _save() {
        if ($this->request->server['REQUEST_METHOD'] != 'POST' || !isset($this->request->post['json']) || $this->request->post['json'] == -1) {
            return;
        }

        $id = $this->request->post['id'];
        if (!$id) {
            $id = $this->_generateId();
        } else {
            $this->cache->delete('zmenu');
        }

        $name = array();
        foreach ($this->request->post['name'] as $language_id => $value) {
            $name[$language_id] = $value;
        }

        $json = $this->request->post['json'];

        $this->setting[$id] = array(
            'id' => $id,
            'name' => $name,
            'json' => htmlspecialchars_decode($json, ENT_COMPAT)
        );


        $this->model_setting_setting->editSetting($this->config_name, $this->setting);
        $this->_redirect($this->url->link('module/zmenu', 'token=' . $this->session->data['token'], 'SSL'));
        return;
    }

    private function _generateId() {
        if (count($this->setting) == 0) {
            return $this->config_name . '_0';
        }
        $max = 0;
        foreach ($this->setting as $k => $value) {
            $k = str_replace($this->config_name . '_', '', $k);
            $k = (int)$k;
            if ($k > $max) {
                $max = $k;
            }
        }
        return $this->config_name . '_' . ($max + 1);
    }


    private function showForm() {
        $this->load->model('catalog/information');
        $this->load->model('catalog/category');
        $this->load->model('localisation/language');
        $this->furl = new Url("/", "/");

        $item = array(
            'name' => array(),
            'id' => 0,
            'json' => ''
        );

        if (isset($this->request->get['id'])) {
            $id = $this->request->get['id'];

            if (isset($this->setting[$id])) {
                $item = $this->setting[$id];
            }
        }

        $data = array();

        $this->language->load('module/zmenu');
        $this->document->setTitle($this->language->get('heading_title2'));

        $this->document->addStyle('view/template/module/zmenu/scripts/form.css?2');

        if ($this->is_oc2 || $this->is_oc2000) {
//            $this->document->addScript('view/template/module/zmenu/scripts/jquery-ui.min.js');
//            $this->document->addStyle('view/template/module/zmenu/scripts/jquery-ui.min.css');
        }
        $this->document->addScript('view/template/module/zmenu/scripts/jquery.mjs.nestedsortable.js?1');
        $this->document->addScript('view/template/module/zmenu/scripts/jquery.tmpl.min.js');
        $this->document->addScript('view/template/module/zmenu/scripts/menu.js?1');


        $langs = $this->model_localisation_language->getLanguages();
        $default_lang = $this->config->get('config_language_id');

        $data['languages'] = array();
        foreach ($langs as $k => $l) {
            $l['is_default'] = $l['language_id'] == $default_lang ? 1 : 0;
            $data['languages'][] = $l;
        }


        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['text_link'] = $this->language->get('text_link');
        $data['text_custom_link'] = $this->language->get('text_custom_link');
        $data['text_information'] = $this->language->get('text_information');
        $data['text_informations'] = $this->language->get('text_informations');
        $data['text_category'] = $this->language->get('text_category');
        $data['text_categories'] = $this->language->get('text_categories');
        $data['text_product'] = $this->language->get('text_product');
        $data['text_product_help'] = $this->language->get('text_product_help');
        $data['text_show_subcategories'] = $this->language->get('text_show_subcategories');
        $data['text_title'] = $this->language->get('text_title');
        $data['text_link_title'] = $this->language->get('text_link_title');
        $data['text_show_default_title'] = $this->language->get('text_show_default_title');
        $data['text_category_help'] = $this->language->get('text_category_help');



        $data['button_add'] = $this->language->get('button_add');
        $data['button_add_menu'] = $this->language->get('button_add_menu');
        $data['button_save'] = $this->language->get('button_save');
        $data['button_save_and_stay'] = $this->language->get('button_save_and_stay');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_add_module'] = $this->language->get('button_add_module');
        $data['button_remove'] = $this->language->get('button_remove');

        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_status'] = $this->language->get('entry_status');

        $data['token'] = $this->session->data['token'];
        $data['cancel'] = $this->url->link('module/zmenu', 'token=' . $this->session->data['token'], 'SSL');

        if ($item['id']) {
            $data['action'] = $this->url->link('module/zmenu/edit', 'token=' . $this->session->data['token'], 'SSL');
        } else {
            $data['action'] = $this->url->link('module/zmenu/add', 'token=' . $this->session->data['token'], 'SSL');
        }

        $information_data = array(
            'sort' => 'id',
            'order' => 'DESC'
        );

        $categories = $this->model_catalog_category->getCategories(array());
        $informations = $this->model_catalog_information->getInformations($information_data);
        $data['informations'] = array();
        $data['categories'] = array();

        foreach ($informations as $information) {
            $data['informations'][] = array(
                'information_id' => $information['information_id'],
                'title' => $information['title'],
                'href' => $this->furl->link('information/information', 'information_id=' . $information['information_id'], 'SSL'),
                'titles' => $this->model_catalog_information->getInformationDescriptions($information['information_id'])
            );
        }


        foreach ($categories as $category) {
            $cat = $this->model_catalog_category->getCategory($category['category_id']);
            $data['categories'][] = array(
                'category_id' => $category['category_id'],
                'category_path' => $category['name'],
                'name' => isset($cat['name']) ? $cat['name'] : $category['name'],
                'href' => $this->furl->link('product/category', 'path=' . $category['category_id'], 'SSL'),
                'titles' => $this->model_catalog_category->getCategoryDescriptions($category['category_id'])
            );
        }


        $data['item'] = $item;

        $this->breadCrumbs($data);


        $this->template = $this->is_oc2 || $this->is_oc2000 ? 'module/zmenu/form2.tpl' : 'module/zmenu/form.tpl';
        $this->data = $data;
        $this->_setOutput($this->data);
    }

    public function install() {

    }

    public function uninstall() {
        $this->setOcVersion();

        $this->model_setting_setting->deleteSetting($this->config_name);
        $this->model_setting_setting->deleteSetting('zmenu');

        if($this->is_oc2) {
            $this->load->model('extension/module');
            $this->model_extension_module->deleteModulesByCode('zmenu');
        }
    }
}

?>