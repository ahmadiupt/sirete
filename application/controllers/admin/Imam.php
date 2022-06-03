<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Imam extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model("Imam_model");
		cek_login();
		cek_user();	
        $this->load->library('form_validation');
    }
	public function index()
	{ 
		$data = array(
			'title' => 'View Data Imam',
            'userlog'=> infoLogin(),
			'imam' => $this->Imam_model->getAll(),
			'content'=> 'admin/imam/index'
		);
		$this->load->view('admin/template/main',$data); 
	}

    public function add()
	{
		$data = array(
			'title' => 'Tambah Data Imam',
            'userlog'=> infoLogin(),
			'content'=> 'admin/imam/add_form' 
		);
		$this->load->view('admin/template/main',$data);
	}
}
