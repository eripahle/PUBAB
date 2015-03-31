<?php

class ControllerModuleCalendarModuleView extends Controller {

    public function index($setting) {
        $this->load->language('module/calendar_module_view');
        $this->load->model('module/calendar_module_view');

        $events[] = array();
        $events = $this->model_module_calendar_module_view->getAllClendarEvent();        

        $string[][] = array();
        
        foreach ($events as $value) {            
           //$date = DateTime::createFromFormat('d-m-y H:i:s', $value['event_date'].' 08:00:00');                      
           $string['date'] = "1425452400000";
           $string['type'] = "info";
           $string['title'] = $value['title'];
           $string['description'] = $value['description'];
           $string['url'] = "";
        }                  

        $data['events']=json_encode($string);
        //$data['events']=$string;

        
        $data['heading_title'] = $this->language->get('heading_title');
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/calendar_module_view.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/calendar_module_view.tpl', $data);
        } else {
            return $this->load->view('default/template/module/calendar_module_view.tpl', $data);
        }
    }

}
