<?php
class ControllerModuleTweetbook extends Controller {
	public function index() {
		$data['facebook'] = $this->config->get('tweetbook_facebook');
		$data['twitter'] = $this->config->get('tweetbook_twitter');
		$data['position'] = $this->config->get('tweetbook_position');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/tweetbook.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/tweetbook.tpl', $data);
		} else {
			return $this->load->view('default/template/module/tweetbook.tpl', $data);
		}
	}
}