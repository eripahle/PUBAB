<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-jne-reguler" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-jne-reguler" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-key"><?php echo $entry_tax; ?></label>
            <div class="col-sm-10">
              <select name="jne_reguler_tax_class_id">
                      <option value="0"><?php echo $text_none; ?></option>
                      <?php foreach ($tax_classes as $tax_class) { ?>
                      <?php if ($tax_class['tax_class_id'] == $jne_reguler_tax_class_id) { ?>
                      <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
                      <?php } else { ?>
                      <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
                      <?php } ?>
                      <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="jne_reguler_status">
                        <?php if ($jne_reguler_status) { ?>
                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                        <option value="0"><?php echo $text_disabled; ?></option>
                        <?php } else { ?>
                        <option value="1"><?php echo $text_enabled; ?></option>
                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                </select>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-account"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="jne_reguler_sort_order" value="<?php echo $jne_reguler_sort_order; ?>" size="1" />
            </div>
          </div>
          
            <?php foreach ($geo_zones as $geo_zone) { ?>
            
              <div class="form-group">
                <label class="col-sm-3 control-label">
                <?php echo $geo_zone['name']; ?></label>
              </div>
    
              <div class="form-group required">
                <label class="col-sm-2 control-label">
                <?php echo $entry_rate; ?></label>
                <div class="col-sm-10">
                  <textarea name="jne_reguler_<?php echo $geo_zone['geo_zone_id']; ?>_rate" cols="100" rows="15"><?php echo ${'jne_reguler_' . $geo_zone['geo_zone_id'] . '_rate'}; ?>
                  </textarea>
                </div>
              </div>

              <div class="form-group required">
                <label class="col-sm-2 control-label">
                <?php echo $entry_status; ?></label>
                <div class="col-sm-10">
                  <select name="jne_reguler_<?php echo $geo_zone['geo_zone_id']; ?>_status">
                      <?php if (${'jne_reguler_' . $geo_zone['geo_zone_id'] . '_status'}) { ?>
                      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                      <option value="0"><?php echo $text_disabled; ?></option>
                      <?php } else { ?>
                      <option value="1"><?php echo $text_enabled; ?></option>
                      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                      <?php } ?>
                    </select>
                </div>
              </div>
            <?php } ?>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>