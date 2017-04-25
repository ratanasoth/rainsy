<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vongkol
 */
class Banner extends CI_Controller {
    //put your code here
    public function __construct() {
        parent::__construct();
        $this->load->model('BannerModel');
    }

    public function index(){
        if($this->session->userid==false)
        {
            redirect('admin/login');
        }
        $data['title'] = "Social List";
        $data['banner'] = $this->BannerModel->getBanner();
        $this->load->view('master/header',$data);
        $this->load->view('master/banner_list',$data);
        $this->load->view('master/footer');
    }

    public function add(){
        if($this->session->userid==false)
        {
            redirect('admin/login');
        }
        $data['sms'] ="";
        $data['title'] = "Add Banner";
        $this->load->view('master/header',$data);
        $this->load->view('master/banner_add',$data);
        $this->load->view('master/footer');
    }

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
        $data['title']="Add Banner";
        if ( ! $this->upload->do_upload('img'))
        {
            $data['sms']="Fail to upload your file...";
        }
        else
        {
            $d= $this->upload->data();
            $data['sms']="Your file has beend uploaded successfully.";
            $fname=$d['file_name'];
            //inser to database
            $description =  $this->input->post('description');
            $this->BannerModel->insert($description,$fname);
        }
       
        $this->load->view('master/header',$data);
        $this->load->view('master/banner_add',$data);
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
        $this->BannerModel->delete($id);
        unlink($path);
        redirect(base_url('banner'));
    }

    public function editbanner($banner_id){
        if ($this->session->userid==false) {
            redirect(base_url('admin/login'));
        }
        $data["title"] = "Edit Banner";
        $data["banner"] = $this->BannerModel->get_banner($banner_id);
        $this->load->view('master/header', $data);
        $this->load->view('master/banner_edit', $data);
        $this->load->view('master/footer');
    }

    public function do_edit_banner($banner_id){
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
            "description" => $this->input->post("description"),
            "image" => $file_name,
        );
        $result = 
            $this->BannerModel->edit_banner($data_edit,$banner_id);
        if ($result) {
           redirect("banner");
        } else {
           redirect("banner/editbanner/".$banner_id);
        }

           if ($this->session->userid==false) {
            redirect(base_url('admin/login'));
        }
    }
}
