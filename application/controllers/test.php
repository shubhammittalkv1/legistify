<?php
	/**
	 * 
	 */
	class Test extends CI_Controller {
		
		function __construct() {
			parent :: __construct();
		}
		public function index()
		{
			$path = $_SERVER['DOCUMENT_ROOT']."/my_project/msg_upload/Test.csv";
			$this->load->library('csvreader');
			$result =   $this->csvreader->parse_file($path);
	        $data['csvData'] =  $result;
	        $this->load->view('view_csv', $data);
		}
	}
	
?>