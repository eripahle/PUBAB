<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-gellery" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>        
            </div>        
            <h1><?php echo $heading_title_sub; ?></h1>
            <br>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">

            <div class="panel-body">
                <form action="<?php echo $save; ?>" method="post" enctype="multipart/form-data" id="form-gallery" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_customer_id; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="name" placeholder="" value="<?php echo $customer_id;?>" readonly id="input-name" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_customer_name; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="name" placeholder="" value="<?php echo $customer_name;?>" readonly id="input-name" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_invoice; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="name" placeholder="" value="<?php echo $invoice;?>" readonly id="input-name" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_invoice; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="name" placeholder="" value="<?php echo $status;?>" id="input-name" class="form-control" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">About <?php echo $heading_title_sub ?> Module</h3>
                <br>
                PUBAPP - Modified module
            </div>      
        </div>
    </div>
</div>
<?php echo $footer; ?>