<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Kematian_model extends CI_Model
{
	protected $_table ='kematian';	
	protected $primary = 'id';

	public function getAll()
    {
        return $this->db->where('is_active',1)->get($this->_table)->result();
    }    

    public function getDetail($id){
        $sql = "SELECT a.id_detil_jual,a.id_jual, b.nama_barang, a.harga_item,a.subtotal,a.qty_jual,c.gudang,c.tgl_gudang,c.qty_gud  FROM detil_penjualan a LEFT JOIN detil_gudang c ON a.id_detil_jual = c.id_detil_jual,barang b WHERE a.id_barang = b.id_barang AND a.status <> 2 AND a.id_jual = '$id'";
        return $this->db->query($sql)->result_array();
	}
	

}