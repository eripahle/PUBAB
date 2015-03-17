<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
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
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form" class="form-horizontal">
		  <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
            <li><a href="#tab-about" data-toggle="tab"><?php echo $tab_about; ?></a></li>
          </ul>
		  <div class="tab-content">
            <div class="tab-pane active" id="tab-general">
			  <div class="form-group">
				<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
				<div class="col-sm-10">
				  <select name="customer_status" id="input-status" class="form-control">
					<option value="1"<?php echo $customer_status ? ' selected="selected"' : ''; ?>><?php echo $text_enabled; ?></option>
					<option value="0"<?php echo $customer_status ? '' : ' selected="selected"'; ?>><?php echo $text_disabled; ?></option>
				  </select>
				</div>
			  </div>
			</div>
			<div class="tab-pane" id="tab-about">
			  <div class="col-sm-9">
				<h2><?php echo $text_support; ?></h2>
				<?php echo $text_need_support; ?><br /><br />
				<a class="btn btn-success" href="http://www.opencart.com/index.php?route=extension/extension/info&amp;extension_id=4112" target="_blank" rel="nofollow"><?php echo $button_review; ?></a>	 
			  </div>
			  <div class="col-sm-3">
				<h2><?php echo $text_follow; ?></h2>
			    <iframe src="p?href=http%3A%2F%2Fwww.facebook.com%2FEquotix&amp;width=292&amp;height=558&amp;show_faces=true&amp;colorscheme=light&amp;stream=true&amp;show_border=false&amp;header=false&amp;appId=391573267589280" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:292px; height:558px;" allowTransparency="true"></iframe>
			  </div>
			</div>
		  </div>
		</form>
      </div>
    </div>
	<div style="color:#222222;text-align:center;"><?php echo $heading_title; ?> v1.2.1 by <a href="http://www.marketinsg.com" target="_blank">MarketInSG</a></div>
  </div>
</div>
<?php echo $footer; ?>