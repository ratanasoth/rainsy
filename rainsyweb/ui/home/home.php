<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!-- start page thumbnail section -->
<div class="content">
    <div class="container-fluid">
        <div class="row rowx" >
            <?php foreach($services as $s){ ?>
                <div class="col-sm-6 col-md-3" style="padding:2px;">
                    <div class="thumbnail">
                        <img src="<?php echo base_url('assets/images/service/'.$s->img); ?>" alt="IT Solutions">
                        <div class="caption">
                            <h4 class="text-primary"><?php echo $s->servicename; ?></h4>
                            <p class="text-justify">
                                <?php echo $s->description; ?>
                            </p>

                        </div>
                        <p><a href="<?php echo $s->url; ?>" class="btn btn-primary btn-xs" role="button">Read More</a></p>
                    </div>
                </div>
            <?php } ?>

        </div>
    </div>
</div>
<!-- end of page thumbnail section -->
<!-- start donation section -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">&nbsp;</div>
        </div>
        <div class="row">
            <div class="col-sm-12 text-center">
                <h1 class="text-info">Contribute Your Donation</h1>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-12 text-center">
                <button class="btn btn-primary w200"> 10$ </button>
                <button class="btn btn-info w200"> 15$ </button>
                <button class="btn btn-success w200"> 20$ </button>
                <button class="btn btn-warning w200"> 25$ </button>
                <br>
                <button class="btn btn-green w200"> 30$ </button>
                <button class="btn btn-danger w200"> 40$ </button>
                <button class="btn btn-primary w200"> 50$ </button>
                <button class="btn btn-info w200"> 60$ </button>
                <br>
                <input type="text" placeholder="custom ammount" class="txt-email txt-donate">
                <button class="btn btn-primary btn-red"> Donate </button>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">&nbsp;</div>
        </div>
    </div>
</div>
<!-- end of donation section -->
<!-- head line section -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="text-center">
                    <h1><a href="#">Heading Content 1</a></h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo egestas metus,
                        eu laoreet orci tempus at. In vitae eros a lacus congue suscipit.
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac magna lacinia,
                        posuere velit a, elementum enim. Sed egestas risus a fringilla bibendum.
                        Integer tristique sodales justo vitae elementum. Praesent id ultricies eros,
                        sed porttitor nisi. Duis urna justo, porta interdum vulputate at, vestibulum nec mi.
                        Maecenas placerat tortor purus, eu tempus erat tincidunt eget. Sed semper elementum augue,
                        quis ornare ex laoreet ut. Aliquam viverra mauris vel egestas tincidunt. Duis iaculis
                        vitae nisi quis ultrices. Nunc odio diam, placerat eget vulputate vehicula, placerat at mauris.
                        Morbi lacus mauris, cursus at velit ultrices, lacinia mattis arcu.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end of head line section -->
<!-- start latest blog section -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3">
                <img src="assets/images/l1.jpg" alt="" width="300" class="img-thumbnail" />
            </div>
            <div class="col-sm-9">
                <h1><a href="#">Hot news one</a></h1>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac magna lacinia,
                posuere velit a, elementum enim. Sed egestas risus a fringilla bibendum.
                Integer tristique sodales justo vitae elementum. Praesent id ultricies eros,
                sed porttitor nisi. Duis urna justo, porta interdum vulputate at, vestibulum nec mi.
                Maecenas placerat tortor purus, eu tempus erat tincidunt eget. Sed semper elementum augue,
                quis ornare ex laoreet ut. Aliquam viverra mauris vel egestas tincidunt. Duis iaculis
                vitae nisi quis ultrices. Nunc odio diam, placerat eget vulputate vehicula, placerat at mauris.

            </div>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <img src="assets/images/l2.jpg" alt="" width="300" class="img-thumbnail" />
            </div>
            <div class="col-sm-9">
                <h1><a href="#">Lorem Ipsum</a></h1>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac magna lacinia,
                posuere velit a, elementum enim. Sed egestas risus a fringilla bibendum.
                Integer tristique sodales justo vitae elementum. Praesent id ultricies eros,
                sed porttitor nisi. Duis urna justo, porta interdum vulputate at, vestibulum nec mi.
                Maecenas placerat tortor purus, eu tempus erat tincidunt eget. Sed semper elementum augue,
                quis ornare ex laoreet ut. Aliquam viverra mauris vel egestas tincidunt. Duis iaculis
                vitae nisi quis ultrices. Nunc odio diam, placerat eget vulputate vehicula, placerat at mauris.
                Morbi lacus mauris, cursus at velit ultrices, lacinia mattis arcu.

            </div>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <img src="assets/images/l3.jpg" alt="" width="300" class="img-thumbnail" />
            </div>
            <div class="col-sm-9">
                <h1><a href="#">Economic Forum</a></h1>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac magna lacinia,
                posuere velit a, elementum enim. Sed egestas risus a fringilla bibendum.
                Integer tristique sodales justo vitae elementum. Praesent id ultricies eros,
                sed porttitor nisi. Duis urna justo, porta interdum vulputate at, vestibulum nec mi.
                Maecenas placerat tortor purus, eu tempus erat tincidunt eget. Sed semper elementum augue,
                quis ornare ex laoreet ut. Aliquam viverra mauris vel egestas tincidunt. Duis iaculis
                vitae nisi quis ultrices. Nunc odio diam, placerat eget vulputate vehicula, placerat at mauris.
                Morbi lacus mauris, cursus at velit ultrices, lacinia mattis arcu.

            </div>
        </div>
    </div>
</div>
<!-- end of latest blog section -->
<!-- start latest video section -->
<div class="content">
    <div class="container-fluid">
        <h1>
            <a href="#" class="pull-right">View All >></a>
            Latest Videos

        </h1>
        <div class="row">
            <div class="col-sm-2">
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/8CGDTgwHb44" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="col-sm-2">
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/KJwefYMeX8Y" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="col-sm-2">
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/LOlbA_RDlgk" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="col-sm-2">
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/rxcyK7oWO78" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="col-sm-2">
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/gJ9NbtsgASM" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="col-sm-2">
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/piGdb7jcmJg" frameborder="0" allowfullscreen></iframe>
            </div>
        </div>

    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">&nbsp;</div>
        </div>
        <div class="row">
            <div class="col-sm-12 text-center">
                <h1 class="text-info">Subscribe to get latest news</h1>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-12 text-center">
                <input type="text" placeholder="your email..." style="width: 500px" class="txt-email">
                <br/><br/>
                <button class="btn btn-primary mybtn">Submit</button>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">&nbsp;</div>
        </div>
    </div>

</div>
<!-- end of latest video section -->
