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
class LogoModel extends CI_Model {
    //put your code here
    public function getLogo(){
        return $this->db->get('logo')->result();
    }

    private $logo = "logo";
    public function insert($name,$image){
        $data=array(
            'name'=>$name,
            'image'=>$image,
        );
        $this->db->insert('logo',$data);
    }
    public function delete($id){
        $this->db->delete('logo',array('id'=>$id));
    }
}
