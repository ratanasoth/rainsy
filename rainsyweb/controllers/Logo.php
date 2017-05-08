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
class Logo extends CI_Controller {
    //put your code here
    public function __construct() {
        parent::__construct();
        $this->load->model('LogoModel');
    }

    public function index(){
        if($this->session->userid==false)
        {
            redirect('admin/login');
        }
        $data['title'] = "Logo List";
        $data['logo'] = $this->LogoModel->getLogo();
        $this->load->view('master/header',$data);
        $this->load->view('master/logo_list',$data);
        $this->load->view('master/footer');
    }

    public function add(){
        if($this->session->userid==false)
        {
            redirect('admin/login');
        }
        $data['sms'] ="";
        $data['title'] = "Add Logo";
        $this->load->view('master/header',$data);
        $this->load->view('master/logo_add',$data);
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
        $data['title']="Add Logo";
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
            $name =  $this->input->post('name');
            $this->LogoModel->insert($name,$fname);
        }
       
        $this->load->view('master/header',$data);
        $this->load->view('master/logo_add',$data);
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
        $this->LogoModel->delete($id);
        unlink($path);
        redirect(base_url('logo'));
    }
}
