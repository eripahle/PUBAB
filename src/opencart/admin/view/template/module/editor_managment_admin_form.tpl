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
                        <label class="col-sm-2 control-label" for="input-limit">Editor</label>
                        <div class="col-sm-10">
                            <select name="editor_id" id="input-category-class" class="form-control">                          
                            <?php foreach ($editors as $editor) { ?>
                            <?php if ($editor['editor_id'] == $editor_id) { ?>
                            <option value="<?php echo $editor['editor_id']; ?>" selected="selected"><?php echo $editor['editor_id'].' - '.$editor['firstname']." ".$editor['lastname']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $editor['editor_id']; ?>"><?php echo $editor['editor_id'].' - '.$editor['firstname']." ".$editor['lastname']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_image; ?></label>
                        <div class="col-sm-10">
                            <input  type="file" name="image" value="<?php echo $entry_image; ?>" class="btn-primary"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_info; ?></label>
                        <div class="col-sm-10">
                            <textarea name="description" placeholder="<?php echo $entry_info;?>" class="form-control"></textarea>
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