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
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_title; ?></label>
            <div class="col-sm-10">
              <input type="text" name="title" placeholder="<?php echo $help_title; ?>" id="input-name" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_date; ?></label>            
                <div class="col-sm-3">
                  <div class="input-group date">
                      <input type="text" name="date_available" placeholder="YYYY-MM-DD" 
                           data-date-format="YYYY-MM-DD" id="input-date-available" class="form-control" />                    
                           <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                <i class="fa fa-calendar"></i></button>
                           </span>
                  </div>
                </div>            
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_description; ?></label>
            <div class="col-sm-10">
               <textarea name="description" placeholder="<?php echo $entry_description;?>" class="form-control"></textarea>
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