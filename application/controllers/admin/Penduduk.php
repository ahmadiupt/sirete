<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penduduk extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model("Penduduk_model");
        cek_login();
        cek_user();	
        $this->load->library('form_validation');
    }
    public function index()
    { 
        $data = array(
            'title' => 'View Data Penduduk',
            'userlog'=> infoLogin(),
            'penduduk' => $this->Penduduk_model->getAll(),
            'content'=> 'admin/penduduk/index'
        );
        $this->load->view('admin/template/main',$data); 
    }
}