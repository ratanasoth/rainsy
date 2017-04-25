<div class='row'>
    <div class="col-sm-6">
        <div class="table-caption">
            Banner List
        </div>
    </div>
    <div class="col-sm-6">
        <a 
            href="<?php echo base_url("banner/add"); ?>" 
            class="btn btn-success btn-xs pull-right"
        >
            <i class="glyphicon glyphicon-plus-sign"></i> 
            Add New
        </a>
    </div>
</div>
<hr class="hr" />
<?php $partimg ='assets/images/' ?>
<div class="row">
    <div class="col-sm-12">
        <table class="tbl">
            <thead>
                <tr>
                    <th>ID</th>       
                    <th>Description</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($banner as $b){ ?>
                <tr>
                    <td><?php echo $b->id; ?></td>
                     <td><?php echo $b->description; ?></td>
                    <td><a href="<?php echo base_url().$partimg.$b->image; ?>" target="_blank">
                        <img src="<?php echo base_url().$partimg.$b->image; ?>" width="90" />
                        </a>
                    </td>
                    <td>
                        <a href="<?php echo base_url('banner/editbanner/'.$b->id); ?>" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                        <a href="<?php echo base_url('banner/delete/'.$b->id); ?>" class="btn btn-xs btn-danger" onclick="return confirm('You want to delete it?')"><i class="glyphicon glyphicon-trash"></i> Delete</a>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>