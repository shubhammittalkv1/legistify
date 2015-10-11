<?php

/*

 * Development Team Lead - Prateek Chouhan
 */

class Home extends CI_Controller {

   
    public function index() {

$data['legistifyData'] = $this->main_model->selectQuery('queries', $joinClause=array(), $whereClause = array(), $orderByClause = "", $selectData = "*");
 		// echo"<pre>";
 		// print_r($data['legistifyData']);
    	
    	$this->load->view('home_view',$data);
    }
    	
    public function sendmail()
    {
    	$postData = $this->input->post();
    	
    	 $this->load->library('email');

                $config['protocol'] = "smtp";
                // does not have to be gmail
                $config['smtp_host'] = 'smtp.mandrillapp.com'; 
                $config['smtp_port'] = '587';
                $config['smtp_user'] = 'shubham.mittal.kv1@gmail.com';
                $config['smtp_pass'] = 'IDQ9tzdHdNqap-4FDAKaIw';
                $config['mailtype'] = 'html';
                $config['charset'] = 'utf-8';
                $config['newline'] = "\r\n";
                $config['wordwrap'] = TRUE;

                $this->email->initialize($config);
                $this->email->from('no-reply@shubham.com','Task By shubham Mittal');
                $this->email->to($postData['hidden']); 

                if($_FILES['file']['name']!=""){

//load library
$this->load->library('upload');

//Set the config
$config['upload_path'] = './application/modules/home/views/file_upload'; //Use relative or absolute path
$config['allowed_types'] = 'docx'; 
$config['max_size'] = '3072';
$config['overwrite'] = FALSE; //If the file exists it will be saved with a progressive number appended

//Initialize
$this->upload->initialize($config);

//Upload file
if( ! $this->upload->do_upload("file")){

    //echo the errors
    echo $this->upload->display_errors();
}
else
{
    $file_name = $this->upload->file_name;

     $this->email->subject('Answer to your query');
                $this->email->message($postData['ms'].'.Follow the link for attachment      '.'http://localhost/hmvc-legistify/legistify/legistify/application/modules/home/views/file_upload/'.$file_name);    

                $this->email->send();
                $id=$postData['hiid'];
                $this->main_model->deleteQuery('queries', array('id' => $id)); 
                echo "Mail Has Been Sent Successfully....!!!!"; 


}

//If the upload success

//Save the file name into the db

}

               

               
                
    }
}
?>