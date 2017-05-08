<div class='row'>
    <div class="col-sm-6">
        <div class="table-caption">
            Social List
        </div>
        
    </div>
    <div class="col-sm-6">
            <a href="<?php echo base_url("social/add"); ?>" 
               class="btn btn-success btn-xs pull-right"><i class="glyphicon glyphicon-plus-sign"></i> Add New</a>
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
                    <th>Social URL</th>
                    <th>Icon</th>
                    <th>Order</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($social as $s){ ?>
                <tr>
                    <td><?php echo $s->id; ?></td>
                    <td><?php echo $s->name; ?></td>
                    <td><?php echo $s->url; ?></td>
                    <td><a href="<?php echo base_url().$partimg.$s->photo; ?>" target="_blank">
                        <img src="<?php echo base_url().$partimg.$s->photo; ?>" width="90" />
                        </a>
                    </td>
                    <td><?php echo $s->seq; ?></td>
                    <td>
                        <a href="<?php echo base_url('social/editsocial/'.$s->id); ?>" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                        <a href="<?php echo base_url('social/delete/'.$s->id .'/'.$s->name); ?>" class="btn btn-xs btn-danger" onclick="return confirm('You want to delete it?')"><i class="glyphicon glyphicon-trash"></i> Delete</a>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>