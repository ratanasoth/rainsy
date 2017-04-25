<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sam Rainsy</title>
        <!-- add style -->
        <link href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>" rel="stylesheet">
        <link href="<?php echo base_url('assets/css/front.css'); ?>" rel="stylesheet">
        <!-- end of style section -->
        <!-- add favicon -->
        <link rel="icon" type="image/png" sizes="192x192" href="<?php echo base_url('assets/images/logo1.png'); ?>">
        <link rel="icon" type="image/png" sizes="32x32" href="<?php echo base_url('assets/images/logo1.png'); ?>">
        <link rel="icon" type="image/png" sizes="96x96" href="<?php echo base_url('assets/images/logo1.png'); ?>">
        <link rel="icon" type="image/png" sizes="16x16" href="<?php echo base_url('assets/images/logo1.png'); ?>">
        <!-- end of favicon section -->
        <!-- script section -->
        <script src="<?php echo base_url('assets/js/jquery-2.2.0.min.js'); ?>"></script>
        <script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>
	    <!-- end of script section -->
    </head>
    <body>
        <!-- Floating social icon -->
        <!--
        <ul class='floating-social'>
            <li><a href="#"><img src="<?php echo base_url('assets/images/facebook.png'); ?>" alt="" title="Facebook"/></a></li>
            <li><a href="#"><img src="<?php echo base_url('assets/images/tweeter.png'); ?>" alt="" title="Tweeter"/></a></li>
            <li><a href="#"><img src="<?php echo base_url('assets/images/instagram.png'); ?>" alt="" title="Instagram"/></a></li>
            <li><a href="#"><img src="<?php echo base_url('assets/images/linkedin.png'); ?>" alt="" title="LinkedIn"/></a></li>
            <li><a href="#"><img src="<?php echo base_url('assets/images/gplus.png'); ?>" alt="" title="Google Plus"/></a></li>
            <li><a href="#"><img src="<?php echo base_url('assets/images/youtube.png'); ?>" alt="" title="Youtube"/></a></li>
        </ul>
        -->
        <!-- End floating social icon section -->
        <!-- header-->
        <div class="box-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo">
                            <img src="<?php echo base_url('assets/images/logo1.png'); ?>" alt="Sam Rainsy" class="img-logo" width="60" />
                            <h1 class="text-header text-white">SAM Rainsy</h1>
                        </div>
                    </div>
                    <div class="col-sm-8">
<!--                        start menu section -->
                        <div class="menu-box">
                            <ul class="nav navbar-nav pull-right main-menu">
                                <!-- Loop through all main menu -->
                                <?php foreach($menus as $menu){ ?>
                                    <!-- if each main menu has no sub menu, print out as normal -->
                                    <?php if($MyClass->isContainSub($menu->id)=='no'){ ?>
                                        <li id="menu<?php echo $menu->id; ?>"><a href="<?php echo $menu->url; ?>"><?php echo $menu->name; ?></a></li>
                                    <?php } else { ?>
                                        <!-- if the main menu has sub menu -->
                                        <li id="menu<?php echo $menu->id; ?>"><a href="<?php echo $menu->url; ?>"
                                                                                 class="dropdown-toggle" data-toggle="dropdown"
                                                                                 role="button" aria-haspopup="true" aria-expanded="false">
                                                <?php echo $menu->name; ?> <span class="caret"></span></a>
                                            <ul class="dropdown-menu sub-menu">
                                                <?php foreach($subs as $sub){ ?>
                                                    <?php if($sub->parentid == $menu->id){ ?>
                                                        <li><a href="<?php echo $sub->url; ?>">&raquo; <?php echo $sub->name; ?></a></li>
                                                    <?php } ?>
                                                <?php } ?>
                                            </ul>
                                        </li>
                                    <?php } ?>

                                <?php } ?>

                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Slider-->
        <div class="slider-box">
            <h1 class="quote">
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo egestas metus,
                eu laoreet orci tempus at."
            </h1>
        </div>