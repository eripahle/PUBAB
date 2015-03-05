<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons">
          <a href="<?php echo $add_href; ?>" class="button"><?php echo $button_add_menu; ?></a>
          <a onclick="$('[name=stay]').val(1); $('#form').submit();" class="button"><?php echo $button_save_and_stay; ?></a>
          <a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a>
          <a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a>
          <a href="<?php echo $clear_cache_href; ?>" class="button"><?php echo $button_clear_cache; ?></a>
      </div>
    </div>
    <div class="content">
        <?php if($items) { ?>
            <table class="list">
                <thead>
                    <tr>
                        <td class="left" width="50%"><?php echo $entry_name; ?></td>
                        <td class="right" width="20%"><?php echo $entry_action; ?></td>
                    </tr>
                </thead>
                <tbody>
                <?php foreach ($items as $item) { ?>
                    <tr>
                        <td class="left"><?php echo $item['name']; ?></td>
                        <td class="right">
                            <a href="<?php echo $item['edit_href']; ?>" class="button"><?php echo $button_edit; ?></a>
                            <a href="<?php echo $item['copy_href']; ?>" class="button"><?php echo $button_copy; ?></a>
                            <a href="<?php echo $item['remove_href']; ?>" onclick="return confirm('Удалить?');" class="button"><?php echo $button_remove; ?></a>
                        </td>

                    </tr>
                <?php } ?>
                </tbody>
            </table>
        <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table id="module" class="list">
          <thead>
            <tr>
             <td class="left"><?php echo $entry_name; ?></td>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
                <td class="left"><?php echo $text_menu_type; ?></td>
                <td class="left"><?php echo $text_custom_css; ?></td>
              <td class="right"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
          <?php $module_row = 0; ?>
          <?php if(count($items)) { ?>
              <?php foreach ($modules as $module) { ?>
              <tbody id="module-row<?php echo $module_row; ?>">
                <tr>
                  <td class="left">
                      <select name="zmenu_module[<?php echo $module_row; ?>][zmenu_id]">
                          <?php foreach($items as $item) { ?>
                             <option value="<?php echo $item['id']; ?>" <?php if($module['zmenu_id'] == $item['id']) { ?> selected <?php } ?>><?php echo $item['name']; ?></option>
                          <?php } ?>
                      </select>
                  </td>
                  <td class="left"><select name="zmenu_module[<?php echo $module_row; ?>][layout_id]">
                      <?php foreach ($layouts as $layout) { ?>
                          <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                          <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                          <?php } ?>
                      <?php } ?>
                    </select></td>
                  <td class="left"><select name="zmenu_module[<?php echo $module_row; ?>][position]">
                      <?php if ($module['position'] == 'content_top') { ?>
                      <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                      <?php } else { ?>
                      <option value="content_top"><?php echo $text_content_top; ?></option>
                      <?php } ?>
                      <?php if ($module['position'] == 'content_bottom') { ?>
                      <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                      <?php } else { ?>
                      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                      <?php } ?>
                      <?php if ($module['position'] == 'column_left') { ?>
                      <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                      <?php } else { ?>
                      <option value="column_left"><?php echo $text_column_left; ?></option>
                      <?php } ?>
                      <?php if ($module['position'] == 'column_right') { ?>
                      <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                      <?php } else { ?>
                      <option value="column_right"><?php echo $text_column_right; ?></option>
                      <?php } ?>
                      <?php if ($module['position'] == 'zmodule_main_menu') { ?>
                          <option value="zmodule_main_menu" selected="selected"><?php echo $text_main_menu_position; ?></option>
                          <?php } else { ?>
                          <option value="zmodule_main_menu"><?php echo $text_main_menu_position; ?></option>
                       <?php } ?>
                    </select></td>
                    <td class="left"><select name="zmenu_module[<?php echo $module_row; ?>][status]">
                        <?php if ($module['status']) { ?>
                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                        <option value="0"><?php echo $text_disabled; ?></option>
                        <?php } else { ?>
                        <option value="1"><?php echo $text_enabled; ?></option>
                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                      </select></td>
                    <td>
                        <select name="zmenu_module[<?php echo $module_row; ?>][menu_type]">
                            <option value="horizontal" <?php if($module['menu_type'] == 'horizontal') { ?> selected <?php } ?>><?php echo $text_menu_horizontal; ?></option>
                            <option value="vertical" <?php if($module['menu_type'] == 'vertical') { ?> selected <?php } ?>><?php echo $text_menu_vertical; ?></option>
                        </select>
                    </td>
                    <td class="left"><input type="text" name="zmenu_module[<?php echo $module_row; ?>][css_class]" value="<?php echo $module['css_class']; ?>"  /></td>
                  <td class="right"><input type="text" name="zmenu_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
                  <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
                </tr>
              </tbody>
              <?php $module_row++; ?>
              <?php } ?>

          <tfoot>
            <tr>
              <td colspan="7"></td>
              <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
            </tr>
          </tfoot>
            <?php } ?>
        </table>
          <input type="hidden" name="stay" value="0" />
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
    html += '<td class="left"><select name="zmenu_module[' + module_row + '][zmenu_id]">';
    <?php foreach($items as $item) { ?>
    html += '<option value="<?php echo $item['id']; ?>"><?php echo $item['name']; ?></option>';
    <?php } ?>
    html += '</select></td>';
	html += '    <td class="left"><select name="zmenu_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="zmenu_module[' + module_row + '][position]">';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
    html += '      <option value="zmodule_main_menu"><?php echo $text_main_menu_position; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="zmenu_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
    html += '    <td>';
    html += '        <select name="zmenu_module[' + module_row + '][menu_type]">';
    html += '            <option value="horizontal"><?php echo $text_menu_horizontal; ?></option>';
    html += '            <option value="vertical"><?php echo $text_menu_vertical; ?></option>';
    html += '        </select>';
    html += '    </td>';
    html += '    <td class="left"><input type="text" name="zmenu_module[' + module_row + '][css_class]" value=""  /></td>';
	html += '    <td class="right"><input type="text" name="zmenu_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}

//--></script> 
<?php echo $footer; ?>