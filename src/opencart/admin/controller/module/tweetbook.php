<?php
class ControllerModuleTweetbook extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/tweetbook');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('tweetbook', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_left'] = $this->language->get('text_left');
		$data['text_right'] = $this->language->get('text_right');
		
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_facebook'] = $this->language->get('entry_facebook');
		$data['entry_twitter'] = $this->language->get('entry_twitter');
		$data['entry_position'] = $this->language->get('entry_position');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/tweetbook', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['action'] = $this->url->link('module/tweetbook', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['tweetbook_status'])) {
			$data['tweetbook_status'] = $this->request->post['tweetbook_status'];
		} else {
			$data['tweetbook_status'] = $this->config->get('tweetbook_status');
		}
		
		if (isset($this->request->post['tweetbook_facebook'])) {
			$data['tweetbook_facebook'] = $this->request->post['tweetbook_facebook'];
		} else {
			$data['tweetbook_facebook'] = $this->config->get('tweetbook_facebook');
		}
		
		if (isset($this->request->post['tweetbook_twitter'])) {
			$data['tweetbook_twitter'] = $this->request->post['tweetbook_twitter'];
		} else {
			$data['tweetbook_twitter'] = $this->config->get('tweetbook_twitter');
		}
		
		if (isset($this->request->post['tweetbook_position'])) {
			$data['tweetbook_position'] = $this->request->post['tweetbook_position'];
		} else {
			$data['tweetbook_position'] = $this->config->get('tweetbook_position');
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/tweetbook.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/tweetbook')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}