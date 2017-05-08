<div class='row'>
    <div class="col-sm-6">
        <div class="table-caption">
            Logo List
        </div>
    </div>
    <div class="col-sm-6">
        <a 
            href="<?php echo base_url("logo/add"); ?>" 
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
                    <th>Name</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($logo as $l){ ?>
                <tr>
                    <td><?php echo $l->id; ?></td>
                     <td><?php echo $l->name; ?></td>
                    <td><a href="<?php echo base_url().$partimg.$l->image; ?>" target="_blank">
                        <img src="<?php echo base_url().$partimg.$l->image; ?>" width="90" />
                        </a>
                    </td>
                    <td>
                        <a href="<?php echo base_url('logo/delete/'.$l->id); ?>" class="btn btn-xs btn-danger" onclick="return confirm('You want to delete it?')"><i class="glyphicon glyphicon-trash"></i> Delete</a>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>