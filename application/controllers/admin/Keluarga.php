<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Keluarga extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model("Keluarga_model");
        cek_login();
        cek_user();	
        $this->load->library('form_validation');
    }
    public function index()
    { 
        $data = array(
            'title' => 'View List Keluarga',
            'userlog'=> infoLogin(),
            'keluarga' => $this->Keluarga_model->getAll(),
            'content'=> 'admin/keluarga/index'
        );
        $this->load->view('admin/template/main',$data); 
    }
    public function add()
	{
		$data = array(
			'title' => 'Tambah Data Keluarga',
			'userlog'=> infoLogin(),
			'content'=> 'admin/keluarga/add_form' 
		);
		$this->load->view('admin/template/main',$data);
	}
}