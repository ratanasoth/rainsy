<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SocialModel
 *
 * @author Vongkol
 */
class SocialModel extends CI_Model {
    //put your code here
    public function getSocial(){
        
        $this->db->order_by('seq','asc');
         $query =  $this->db->get('social');
         return $query->result();
    }

    private $social = "social";
    public function insert($url,$name,$photo,$sequence){
        $data=array(
            'url'=>$url,
            'name'=>$name,
            'photo'=>$photo,
            'seq'=> $sequence
        );
        $this->db->insert('social',$data);
    }
    public function delete($id){
        $this->db->delete('social',array('id'=>$id));
    }

    /*
     * This function is for selecting data social
     */
    public function get_social($social_id=null){
        // var_dump($social_id);die;
        $this->db->select("*");
        if ($social_id != NULL) {
            $this->db->where("id", $social_id);
        }
        return $this->db->get($this->social);
    }
    /*
     * This function is for editting service
     */
    public function edit_social($data,$social_id){
        $this->db->where("{$this->social}.id",$social_id);
        $this->db->update($this->social,$data);
        return $this;
    }
}
