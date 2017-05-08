<div class='row'>
    <div class="col-sm-12">
        <div class="table-caption">
            Edit Social
        </div>
    </div>
</div>
<hr class="hr" /> 
<?php 
$id = '';
$url= '';
$name = '';
$photo = '';
$sequence = '';
if($social->num_rows()>0){
    $id = $social->row()->id;
    $url = $social->row()->url;
    $name = $social->row()->name;
    $photo = $social->row()->photo;
    $sequence = $social->row()->seq;
}
?> 
<div  class='row'>
    <div class='col-sm-12'>
        <form class="form-horizontal" action="<?php echo base_url('social/do_edit_social/'.$id); ?>" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="socialname" class="control-label col-sm-2" style="text-align: left">Social Name</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="name" name="name" value="<?php echo $name?>" />
                </div>
            </div>
            <div class="form-group">
                <label for="url" class="control-label col-sm-2" style="text-align: left">Social URL</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="url" name="url" value="<?php echo $url?>" />
                </div>
            </div>           
            <div class="form-group">
                <label for="url" class="control-label col-sm-2" style="text-align: left">Order</label>
                <div class="col-sm-4">
                    <input type="number" class="form-control" id="sequence" value="<?php echo $sequence?>" name="sequence"/>
                </div>
            </div> 
                <div class="form-group">
                <label class="col-sm-2 control-label" style="text-align: left">Choose Icon</label>
                <div class="col-sm-4">
                    <input type="file" name="image" class="form-control" accept="image/*" onchange="loadFile(event)"> 
                    <input type="hidden" name="old_img" class="form-control" value="<?php echo $photo?>"> 
                </div>
            </div> 
            <div class="form-group">
                <label class="control-label col-sm-2"></label>
                <div class="col-sm-4">
                    <img src="" id="preview" />
                </div>
            </div>
             <div class="form-group">
                <label class="control-label col-sm-2"></label>
                <div class="col-sm-4">
                    <input type="submit" value="Save" class="btn btn-sm btn-primary" onclick="return confirm('You want to save?')" />
                    <a href="<?php echo base_url('social'); ?>" class="btn btn-sm btn-success">Back</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
   var loadFile = function(event) {
        var output = document.getElementById('preview');
        output.width = 150;
        output.src = URL.createObjectURL(event.target.files[0]);
  };
</script>
