<div class='row'>
    <div class="col-sm-12">
        <div class="table-caption">
            Edit Banner
        </div>
        
    </div>
</div>
<hr class="hr" />
<?php 
$id = '';
$description= '';
$image = '';
if($banner->num_rows()>0){
    $id = $banner->row()->id;
    $description = $banner->row()->description;
    $image = $banner->row()->image;
}
?>
<div class="row">
    <div class="col-sm-12">
        <form class="form-horizontal" action="<?php echo base_url('banner/do_edit_banner/'.$id); ?>" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="control-label col-sm-2" style="text-align: left">Description</label>
                <div class="col-sm-10">
                    <textarea  
                        rows="4" 
                        cols="45" 
                        name="description"
                    >
                    <?php echo $description ?>
                    </textarea>
                </div>
            </div>      
            <div class="form-group">
                <label class="col-sm-2 control-label" style="text-align: left">Choose Image</label>
                <div class="col-sm-4">
                    <input type="file" name="image" class="form-control" accept="image/*" onchange="loadFile(event)"> 
                    <input type="hidden" name="old_img" class="form-control" value="<?php echo $image?>"> 
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
                    <a href="<?php echo base_url('banner'); ?>" class="btn btn-sm btn-success">Back</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="<?php echo base_url('assets/ckeditor/ckeditor.js'); ?>"></script>
<script>
    window.onload=function()
    {
        CKEDITOR.replace('description');
    }
     var loadFile = function(event) {
        var output = document.getElementById('preview');
        output.width = 170;
        output.src = URL.createObjectURL(event.target.files[0]);
  };
</script>