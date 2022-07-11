<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kematian extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model("Kematian_model");
		cek_login();
		cek_user();	
        $this->load->library('form_validation');
    }
	public function index()
	{ 
		$data = array(
			'title' => 'View Data Kematian',
            'userlog'=> infoLogin(),
			'kematian' => $this->Kematian_model->getAll(),
			'content'=> 'admin/kematian/index'
		);
		$this->load->view('admin/template/main',$data); 
	}

    public function add()
	{
		$data = array(
			'title' => 'Tambah Data Kematian',
            'userlog'=> infoLogin(),
			'content'=> 'admin/kematian/add_form' 
		);
		$this->load->view('admin/template/main',$data);
	}
}
