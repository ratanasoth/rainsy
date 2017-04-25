<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BannerModel
 *
 * @author Vongkol
 */
class BannerModel extends CI_Model {
    //put your code here
    public function getBanner(){
        return $this->db->get('banner')->result();
    }

    private $banner = "banner";
    public function insert($description,$image){
        $data=array(
            'description'=>$description,
            'image'=>$image,
        );
        $this->db->insert('banner',$data);
    }
    public function delete($id){
        $this->db->delete('banner',array('id'=>$id));
    }

    /*
     * This function is for selecting data social
     */
    public function get_banner($banner_id=null){
        $this->db->select("*");
        if ($banner_id != NULL) {
            $this->db->where("id", $banner_id);
        }
        return $this->db->get($this->banner);
    }

    public function edit_banner($data,$banner_id){
        $this->db->where("{$this->banner}.id",$banner_id);
        $this->db->update($this->banner,$data);
        return $this;
    }
}
