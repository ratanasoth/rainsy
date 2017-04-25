<!-- start footer section -->
<div class="footer-box content">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <h3 class="text-white">Main Menu</h3>
                <ul class="nav-link">

                    <li><a href="#">Home</a></li>
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Library</a></li>
                    <li><a href="#">TV Online</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">About Us</a></li>
                </ul>
            </div>
            <div class="col-sm-4">
                <h3 class="text-white">Current Address</h3>
                <p style="color: #bbb">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Sed commodo egestas metus, eu laoreet orci tempus at.
                    In vitae eros a lacus congue suscipit.
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    <br />
                    <br />
                    <span class="glyphicon glyphicon-home"></span>  Phnom Penh, Kingdom of Cambodia
                    <br />
                    <span class="glyphicon glyphicon-phone"></span>  086 397 627
                    <br />
                    <span class="glyphicon glyphicon-envelope"></span>  hengvongkol@gmail.com
                    <br />
                </p>
            </div>
            <div class="col-sm-4">
                <h3 class="text-white">
                    Social Networks
                </h3>
                <hr />
                <ul class='social-icon'>
                    <li><a href="#"><img src="assets/images/facebook.png" alt="" title="Facebook"/></a></li>
                    <li><a href="#"><img src="assets/images/tweeter.png" alt="" title="Tweeter"/></a></li>
                    <li><a href="#"><img src="assets/images/instagram.png" alt="" title="Instagram"/></a></li>
                    <li><a href="#"><img src="assets/images/linkedin.png" alt="" title="LinkedIn"/></a></li>
                    <li><a href="#"><img src="assets/images/gplus.png" alt="" title="Google Plus"/></a></li>
                    <li><a href="#"><img src="assets/images/youtube.png" alt="" title="Youtube"/></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- end of footer section -->
<script>
    $(window).load(function() {
        // get all row
        var rows = $(".rowx");
        // loop in each row
        for(var i=0; i<rows.length; i++)
        {
            // columns for each row
            var th = $(rows[i]).children("div").children($(".thumbnail"));
            var h = [];
            for(var j=0; j<th.length;j++)
            {
                h[j] = $(th[j]).height();
            }
            var mh = h[0];
            for(var a=0;a<h.length;a++)
            {
                if(mh>=h[a])
                {
                    mh = mh;
                }
                else{
                    mh=h[a];
                }
            }
            for(var b=0;b<th.length;b++)
            {
                $(th[b]).css("height",mh+"px");
            }
        }
    });
</script>
</body>
</html>