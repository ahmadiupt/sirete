<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Penduduk_model extends CI_Model
{
	protected $_table ='penduduk';	
	protected $primary = 'id';

	public function getAll()
    {
        return $this->db->where('is_active',1)->get($this->_table)->result();
    }    
	

}