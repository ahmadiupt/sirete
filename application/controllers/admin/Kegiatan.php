<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kegiatan extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model("Kegiatan_model");
		cek_login();
		cek_user();	
        $this->load->library('form_validation');
    }
	public function index()
	{ 
		$data = array(
			'title' => 'View Data Kegiatan',
            'userlog'=> infoLogin(),
			'kegiatan' => $this->Kegiatan_model->getAll(),
			'content'=> 'admin/kegiatan/index'
		);
		$this->load->view('admin/template/main',$data); 
	}

    public function add()
	{
		$data = array(
			'title' => 'Tambah Data Kegiatan',
            'userlog'=> infoLogin(),
			'content'=> 'admin/kegiatan/add_form' 
		);
		$this->load->view('admin/template/main',$data);
	}
}
