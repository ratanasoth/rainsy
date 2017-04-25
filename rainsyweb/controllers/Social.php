<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Social
 *
 * @author Vongkol
 */
class Social extends CI_Controller {
    //put your code here
    public function __construct() {
        parent::__construct();
        $this->load->model('SocialModel');
       // $this->load->library('upload');
    }
    public function index(){
        if($this->session->userid==false)
        {
            redirect('admin/login');
        }
        $data['title'] = "Social List";
        $data['social'] = $this->SocialModel->getSocial();
        $this->load->view('master/header',$data);
        $this->load->view('master/social_list',$data);
        $this->load->view('master/footer');
    }
    // show upload form
    public function add(){
        if($this->session->userid==false)
        {
            redirect('admin/login');
        }
        $data['sms'] ="";
        $data['title'] = "Add Social";
        $this->load->view('master/header',$data);
        $this->load->view('master/social_add',$data);
        $this->load->view('master/footer');
    }
    // do upload file to social
    public function doUpload(){
        if($this->session->userid==false)
        {
            redirect('admin/login');
        }
        $config['upload_path']          = './assets/images/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = 9000000;
        $config['max_width']            = 5024;
        $config['max_height']           = 5680;
        $fname="";
        $this->load->library('upload', $config);
        $data['sms']="";
        $data['title']="Add Social";
        if ( ! $this->upload->do_upload('img'))
        {
            $data['sms']="Fail to upload your file...";
        }
        else
        {
            $d= $this->upload->data();
            $data['sms']="Your file has beend uploaded successfully.";
            $fname=$d['file_name'];
            $url=base_url('assets/images/'.$fname);
            //inser to database
            $socialName =  $this->input->post('name');
            $socialUrl = $this->input->post('url');
            $sequence = $this->input->post('sequence');
            $this->SocialModel->insert($socialUrl,$socialName,$fname,$sequence);
        }
       
        $this->load->view('master/header',$data);
        $this->load->view('master/social_add',$data);
        $this->load->view('master/footer');
    }

    public function delete(){
        if($this->session->userid==false)
        {
            redirect('admin/login');
        }
        $id = $this->uri->segment(3);
        $name = $this->uri->segment(4);
        $path = "assets/images/".$name;
        $this->SocialModel->delete($id);
        unlink($path);
        redirect(base_url('social'));
    }

    /*
     * This function is edit page social
     */
    public function editsocial($social_id){
        
         if ($this->session->userid==false) {
            redirect(base_url('admin/login'));
        }
        $data["title"] = "Edit Social";
        $data["social"] = $this->SocialModel->get_social($social_id);
        $this->load->view('master/header', $data);
        $this->load->view('master/social_edit', $data);
        $this->load->view('master/footer');
    }

    /*
     * This function is for do editting social
     */
    public function do_edit_social($social_id){
        if ($this->session->userid==false) {
            redirect(base_url('admin/login'));
        }
        $config['upload_path'] = 'assets/images/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';

        $this->load->library("upload", $config);
        if ($this->upload->do_upload("image")) {
                $upload_data = $this->upload->data();
                $file_name = $upload_data['file_name'];
                unlink($config['upload_path'].$this->input->post("old_img"));
            } else {
                $error = array('error' => $this->upload->display_errors());
                $file_name = $this->input->post("old_img");
            }
            
            $data_edit = array(
                "name" => $this->input->post("name"),
                "url" => $this->input->post("url"),
                "seq" => $this->input->post("sequence"),
                "photo" => $file_name,
            );
           $result = 
                $this->SocialModel->edit_social($data_edit,$social_id);
           if($result){
               redirect("social");
           }else{
               redirect("social/editsocial/".$social_id);
           }

           if ($this->session->userid==false) {
            redirect(base_url('admin/login'));
        }
    }
}
