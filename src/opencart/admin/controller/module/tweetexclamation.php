<?php
class ControllerModuleTweetExclamation extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->load->language('module/tweetexclamation');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('tweetexclamation', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_content_top'] = $this->language->get('text_content_top');
		$data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$data['text_column_left'] = $this->language->get('text_column_left');
		$data['text_column_right'] = $this->language->get('text_column_right');
		$data['text_instructions'] = $this->language->get('text_instructions');

		$data['entry_username'] = $this->language->get('entry_username');
		$data['entry_config'] = $this->language->get('entry_config');
		$data['entry_config_title'] = $this->language->get('entry_config_title');
		$data['entry_config_title_default'] = $this->language->get('entry_config_title_default');
		$data['entry_config_username'] = $this->language->get('entry_config_username');
		$data['entry_config_count'] = $this->language->get('entry_config_count');
		$data['entry_config_count_default'] = $this->language->get('entry_config_count_default');
		$data['entry_config_avatar_size'] = $this->language->get('entry_config_avatar_size');
		$data['entry_config_avatar_size_default'] = $this->language->get('entry_config_avatar_size_default');
		$data['entry_config_template'] = $this->language->get('entry_config_template');
		$data['entry_config_template_default'] = $this->language->get('entry_config_template_default');
		$data['entry_config_readmore'] = $this->language->get('entry_config_readmore');
		$data['entry_config_readmore_default'] = $this->language->get('entry_config_readmore_default');
		$data['entry_config_ckey'] = $this->language->get('entry_config_ckey');
		$data['entry_config_csecret'] = $this->language->get('entry_config_csecret');
		$data['entry_config_atoken'] = $this->language->get('entry_config_atoken');
		$data['entry_config_asecret'] = $this->language->get('entry_config_asecret');
		$data['entry_layout'] = $this->language->get('entry_layout');
		$data['entry_position'] = $this->language->get('entry_position');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['entry_skrip'] = $this->language->get('entry_skrip');
        
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_add_module'] = $this->language->get('button_add_module');
		$data['button_remove'] = $this->language->get('button_remove');

		//$data['tab_module'] = $this->language->get('tab_module');
		
		$data['token'] = $this->session->data['token'];

 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
 		if (isset($this->error['modules'])) {
			$data['error_modules'] = $this->error['modules'];
		} else {
			$data['error_modules'] = array();
		}
		
  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/tweetexclamation', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$data['action'] = $this->url->link('module/tweetexclamation', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
/*
		if (isset($this->request->post['tweetexclamation_username'])) {
			$data['tweetexclamation_username'] = $this->request->post['tweetexclamation_username'];
		} else {
			$data['tweetexclamation_username'] = $this->config->get('tweetexclamation_username');
		}
*/
		
		if (isset($this->request->post['tweetexclamation_ckey'])) {
			$data['tweetexclamation_ckey'] = $this->request->post['tweetexclamation_ckey'];
		} else {
			$data['tweetexclamation_ckey'] = $this->config->get('tweetexclamation_ckey');
		}	
		if (isset($this->request->post['tweetexclamation_csecret'])) {
			$data['tweetexclamation_csecret'] = $this->request->post['tweetexclamation_csecret'];
		} else {
			$data['tweetexclamation_csecret'] = $this->config->get('tweetexclamation_csecret');
		}	
		if (isset($this->request->post['tweetexclamation_atoken'])) {
			$data['tweetexclamation_atoken'] = $this->request->post['tweetexclamation_atoken'];
		} else {
			$data['tweetexclamation_atoken'] = $this->config->get('tweetexclamation_atoken');
		}	
		if (isset($this->request->post['tweetexclamation_asecret'])) {
			$data['tweetexclamation_asecret'] = $this->request->post['tweetexclamation_asecret'];
		} else {
			$data['tweetexclamation_asecret'] = $this->config->get('tweetexclamation_asecret');
		}	

		$data['modules'] = array();
		
		if (isset($this->request->post['tweetexclamation_module'])) {
			$data['modules'] = $this->request->post['tweetexclamation_module'];
		} elseif ($this->config->get('tweetexclamation_module')) { 
			$data['modules'] = $this->config->get('tweetexclamation_module');
		}	
				
		$this->load->model('design/layout');
		
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
		$this->load->model('localisation/language');
		
		$data['languages'] = $this->model_localisation_language->getLanguages();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
                $data['column_right'] = $this->load->controller('common/column_right');
                $data['column_top'] = $this->load->controller('common/column_top');
		$data['footer'] = $this->load->controller('common/footer');

				
		$this->response->setOutput($this->load->view('module/tweetexclamation.tpl', $data));                
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/tweetexclamation')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
/*
		if (!$this->request->post['tweetexclamation_username']) {
			$this->error['username'] = $this->language->get('error_code_username');
		}
*/
		$modules_error=array();
		//print_r($this->request->post['tweetexclamation_module']);
		if (isset($this->request->post['tweetexclamation_module'])) {
			foreach($this->request->post['tweetexclamation_module'] as $index=>$module){

				if (!$module['config_username'])
					$modules_error[$index]['config_username']=$this->language->get('error_code_username');
			}

			$data['modules'] = $this->request->post['tweetexclamation_module'];
		}
		if($modules_error){
			$this->error['modules']=$modules_error;
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}

