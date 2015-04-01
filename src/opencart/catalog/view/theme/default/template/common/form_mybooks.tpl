<?php echo $header; ?>
<div class="container">
    <div class="container-fluid">
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
 
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
            </ul>
          <div class="tab-content">
                <?php foreach ($languages as $language) { ?>
                	<?php if($group_id!=2) { ?>
                     	 <div class="form-group required">
	                    <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?>
	                    </label>
	                    <div class="col-sm-10">
	                      <input type="text" name="product_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control" />
	                      <?php if (isset($error_name[$language['language_id']])) { ?>
	                      <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
	                      <?php } ?>
	                    </div>
	                  </div>
	                <?php } ?>
	            <?php } ?>
	                <?php if($group_id!=2) { ?>
	                  <div class="form-group required">
		                <label class="col-sm-2 control-label" for="input-author"><?php echo $entry_author; ?></label>
		                <div class="col-sm-10">
		                  <input type="text" name="author" value="<?php echo $author; ?>" placeholder="<?php echo $entry_author; ?>" id="input-author" class="form-control" />
		                  <?php if ($error_author) { ?>
		                  <div class="text-danger"><?php echo $error_author; ?></div>
		                  <?php } ?>
		                </div>
	              	 </div> 
	              	 
	                  <div class="form-group">
	                    <label class="col-sm-2 control-label" for="input-category"><span data-toggle="tooltip" title="<?php echo $help_category; ?>"><?php echo $entry_category; ?></span></label>
	                    <div class="col-sm-10">
	                      <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-category" class="form-control" />
	                      <div id="product-category" class="well well-sm" style="height: 150px; overflow: auto;">
	                        <?php foreach ($product_categories as $product_category) { ?>
	                        <div id="product-category<?php echo $product_category['category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_category['name']; ?>
	                          <input type="hidden" name="product_category[]" value="<?php echo $product_category['category_id']; ?>" />
	                        </div>
	                        <?php } ?>
	                      </div>
	                    </div>
	                  </div>
                 	<?php } ?>
                  <?php if(!$get_product_id){ ?>
                  <div class="form-group required">
                    <label class="col-sm-2 control-label" for="input-color-page"><?php echo $entry_color_page; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="color_page" value="<?php echo $color_page; ?>" placeholder="<?php echo $entry_color_page; ?>" id="input-color-page" class="form-control" />
                    </div>
                  </div>

                  <div class="form-group required">
                    <label class="col-sm-2 control-label" for="input-bw-page"><?php echo $entry_bw_page; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="bw_page" value="<?php echo $bw_page; ?>" placeholder="<?php echo $entry_bw_page; ?>" id="input-bw-page" class="form-control" />
                    </div>
                  </div>
                   
                  <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>             
                        <div class="col-sm-10">                                
                            <input  type="file" name="image" value="<?php echo $image; ?>" class="btn btn-primary" >
	                 		 <?php if ($error_extension_image) { ?>
	                  			<div class="text-danger"><?php echo $error_extension_image; ?></div>
	                 		 <?php } ?>
                        </div>                                                                       
                   </div>  

                   <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-book"><?php echo $entry_book; ?></label>             
                        <div class="col-sm-10">                                
                            <input  type="file" name="book" value="<?php echo $book; ?>" class="btn btn-primary" >
	                 		 <?php if ($error_extension_book) { ?>
	                  			<div class="text-danger"><?php echo $error_extension_book; ?></div>
	                 		 <?php } ?>
                        </div>                                                                       
                   </div>  
                   <?php }?>
                   <?php if($group_id!=2) { ?>
	                  <div class="form-group">
	                   <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
	                    <div class="col-sm-10">
	                      <textarea name="product_description[<?php echo $language['language_id']; ?>][description]" rows="10" placeholder="<?php echo $entry_description; ?>" id="input-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['description'] : ''; ?></textarea>
	                    </div>
	                  </div>
	                <?php }?>
                  <?php if(!$get_product_id){ ?>
                  <div class="form-group">
	            		<label class="col-sm-2 control-label" for="input-price"><?php echo $entry_price; ?></label>
	                    <div class="col-sm-10">
	                      <input type="text" name="price" value="<?php echo $price; ?>" placeholder="<?php echo $entry_price; ?>" id="input-price" class="form-control" />
	                    </div>        
                  </div>

                   <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_paper_size; ?></label>
                            <div class="col-sm-10">
                                <select name="paper_size" id="input-category-class" class="form-control">
                                    <option value="0"><?php echo $text_none; ?></option>
                                    <?php foreach ($paper_size as $paper_size) { ?>
                                    <?php if ($paper_size['paper_size_id'] == $paper_size) { ?>
                                    <option value="<?php echo $paper_size['paper_size_id']; ?>" selected="selected"><?php echo $paper_size['size']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $paper_size['paper_size_id']; ?>"><?php echo $paper_size['size']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                </select>
                            </div>
                    </div>

                    <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_paper_type; ?></label>
                            <div class="col-sm-10">
                                <select name="paper_type" id="input-category-class" class="form-control">
                                    <option value="0"><?php echo $text_none; ?></option>
                                    <?php foreach ($paper_type as $paper_type) { ?>
                                    <?php if ($paper_type['paper_type_id'] == $paper_type) { ?>
                                    <option value="<?php echo $paper_type['paper_type_id']; ?>" selected="selected"><?php echo $paper_type['type']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $paper_type['paper_type_id']; ?>"><?php echo $paper_type['type']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                </select>
                            </div>
                    </div>  
                   <?php }?>
                  <?php if($get_product_id && $group_id!=2){ ?>
                  		<div class="form-group">
		                    <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status_author; ?></label>
		                    <div class="col-sm-10">
		                      <select name="status1" id="input-status1" class="form-control">
		                        <?php if ($status1) { ?>
		                        <option value="1" selected="selected"><?php echo $text_agree; ?></option>
		                        <option value="0"><?php echo $text_disagree; ?></option>
		                        <?php } else { ?>
		                        <option value="1"><?php echo $text_agree; ?></option>
		                        <option value="0" selected="selected"><?php echo $text_disagree; ?></option>
		                        <?php } ?>
		                      </select>
		                    </div>
		                </div>
                  <?php } ?>
                  <?php if($group_id==2) {?>
	                  <div class="form-group">
	                        <label class="col-sm-2 control-label" for="input-book"><?php echo $entry_book; ?></label>             
	                        <div class="col-sm-10">                                
	                            <input  type="file" name="book" value="<?php echo $book; ?>" class="btn btn-primary" >
		                 		 <?php if ($error_extension_book) { ?>
		                  			<div class="text-danger"><?php echo $error_extension_book; ?></div>
		                 		 <?php } ?>
	                        </div>                                                                       
	                   </div> 
                  		<div class="form-group">
		                    <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status_editor; ?></label>
		                    <div class="col-sm-10">
		                      <select name="status2" id="input-status1" class="form-control">
		                        <?php if ($status1) { ?>
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
                  
        	<div class="buttons">
		          <div class="pull-right">
		            <button type="submit" form="form-product" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
		            <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
           		 </div>
        	</div>
               
           </div>
      </form>
          
      </div>

    </div>
  </div>
  <script type="text/javascript src=admin/view/javascript">
      $('#input-description').summernote({height: 300});
  </script> 
  <script type="text/javascript"><!--
// Manufacturer
$('input[name=\'manufacturer\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=common/manufacturer/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				json.unshift({
					manufacturer_id: 0,
					name: '<?php echo $text_none; ?>'
				});
				
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['manufacturer_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'manufacturer\']').val(item['label']);
		$('input[name=\'manufacturer_id\']').val(item['value']);
	}	
});

// Category
$('input[name=\'category\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=common/categorybooks/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['category_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'category\']').val('');
		
		$('#product-category' + item['value']).remove();
		
		$('#product-category').append('<div id="product-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_category[]" value="' + item['value'] + '" /></div>');	
	}
});

$('#product-category').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});

// Filter
$('input[name=\'filter\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=common/filter/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['filter_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter\']').val('');
		
		$('#product-filter' + item['value']).remove();
		
		$('#product-filter').append('<div id="product-filter' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_filter[]" value="' + item['value'] + '" /></div>');	
	}	
});

$('#product-filter').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});

// Downloads
$('input[name=\'download\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=common/download/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['download_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'download\']').val('');
		
		$('#product-download' + item['value']).remove();
		
		$('#product-download').append('<div id="product-download' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_download[]" value="' + item['value'] + '" /></div>');	
	}	
});

$('#product-download').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});

// Related
$('input[name=\'related\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=common/mybooks/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['product_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'related\']').val('');
		
		$('#product-related' + item['value']).remove();
		
		$('#product-related').append('<div id="product-related' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_related[]" value="' + item['value'] + '" /></div>');	
	}	
});

$('#product-related').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});
//--></script> 
  <script type="text/javascript"><!--
var attribute_row = <?php echo $attribute_row; ?>;

function addAttribute() {
    html  = '<tr id="attribute-row' + attribute_row + '">';
	html += '  <td class="text-left" style="width: 20%;"><input type="text" name="product_attribute[' + attribute_row + '][name]" value="" placeholder="<?php echo $entry_attribute; ?>" class="form-control" /><input type="hidden" name="product_attribute[' + attribute_row + '][attribute_id]" value="" /></td>';
	html += '  <td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span><textarea name="product_attribute[' + attribute_row + '][product_attribute_description][<?php echo $language['language_id']; ?>][text]" rows="5" placeholder="<?php echo $entry_text; ?>" class="form-control"></textarea></div>';
    <?php } ?>
	html += '  </td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#attribute-row' + attribute_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
    html += '</tr>';
	
	$('#attribute tbody').append(html);
	
	attributeautocomplete(attribute_row);
	
	attribute_row++;
}

function attributeautocomplete(attribute_row) {
	$('input[name=\'product_attribute[' + attribute_row + '][name]\']').autocomplete({
		'source': function(request, response) {
			$.ajax({
				url: 'index.php?route=common/attribute/autocomplete&filter_name=' +  encodeURIComponent(request),
				dataType: 'json',			
				success: function(json) {
					response($.map(json, function(item) {
						return {
							category: item.attribute_group,
							label: item.name,
							value: item.attribute_id
						}
					}));
				}
			});
		},
		'select': function(item) {
			$('input[name=\'product_attribute[' + attribute_row + '][name]\']').val(item['label']);
			$('input[name=\'product_attribute[' + attribute_row + '][attribute_id]\']').val(item['value']);
		}
	});
}

$('#attribute tbody tr').each(function(index, element) {
	attributeautocomplete(index);
});
//--></script> 
  <script type="text/javascript"><!--	
var option_row = <?php echo $option_row; ?>;

$('input[name=\'option\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=common/option/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						category: item['category'],
						label: item['name'],
						value: item['option_id'],
						type: item['type'],
						option_value: item['option_value']
					}
				}));
			}
		});
	},
	'select': function(item) {
		html  = '<div class="tab-pane" id="tab-option' + option_row + '">';
		html += '	<input type="hidden" name="product_option[' + option_row + '][product_option_id]" value="" />';
		html += '	<input type="hidden" name="product_option[' + option_row + '][name]" value="' + item['label'] + '" />';
		html += '	<input type="hidden" name="product_option[' + option_row + '][option_id]" value="' + item['value'] + '" />';
		html += '	<input type="hidden" name="product_option[' + option_row + '][type]" value="' + item['type'] + '" />';
		
		html += '	<div class="form-group">';
		html += '	  <label class="col-sm-2 control-label" for="input-required' + option_row + '"><?php echo $entry_required; ?></label>';
		html += '	  <div class="col-sm-10"><select name="product_option[' + option_row + '][required]" id="input-required' + option_row + '" class="form-control">';
		html += '	      <option value="1"><?php echo $text_yes; ?></option>';
		html += '	      <option value="0"><?php echo $text_no; ?></option>';
		html += '	  </select></div>';
		html += '	</div>';
		
		if (item['type'] == 'text') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control" /></div>';
			html += '	</div>';
		}
		
		if (item['type'] == 'textarea') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><textarea name="product_option[' + option_row + '][value]" rows="5" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control"></textarea></div>';
			html += '	</div>';			
		}
		 
		if (item['type'] == 'file') {
			html += '	<div class="form-group" style="display: none;">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control" /></div>';
			html += '	</div>';
		}
						
		if (item['type'] == 'date') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-3"><div class="input-group date"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
			html += '	</div>';
		}
		
		if (item['type'] == 'time') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><div class="input-group time"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="HH:mm" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
			html += '	</div>';
		}
				
		if (item['type'] == 'datetime') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><div class="input-group datetime"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
			html += '	</div>';
		}
			
		if (item['type'] == 'select' || item['type'] == 'radio' || item['type'] == 'checkbox' || item['type'] == 'image') {
			html += '<div class="table-responsive">';
			html += '  <table id="option-value' + option_row + '" class="table table-striped table-bordered table-hover">';
			html += '  	 <thead>'; 
			html += '      <tr>';
			html += '        <td class="text-left"><?php echo $entry_option_value; ?></td>';
			html += '        <td class="text-right"><?php echo $entry_quantity; ?></td>';
			html += '        <td class="text-left"><?php echo $entry_subtract; ?></td>';
			html += '        <td class="text-right"><?php echo $entry_price; ?></td>';
			html += '        <td class="text-right"><?php echo $entry_option_points; ?></td>';
			html += '        <td class="text-right"><?php echo $entry_weight; ?></td>';
			html += '        <td></td>';
			html += '      </tr>';
			html += '  	 </thead>';
			html += '  	 <tbody>';
			html += '    </tbody>';
			html += '    <tfoot>';
			html += '      <tr>';
			html += '        <td colspan="6"></td>';
			html += '        <td class="text-left"><button type="button" onclick="addOptionValue(' + option_row + ');" data-toggle="tooltip" title="<?php echo $button_option_value_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>';
			html += '      </tr>';
			html += '    </tfoot>';
			html += '  </table>';
			html += '</div>';
			
            html += '  <select id="option-values' + option_row + '" style="display: none;">';
			
            for (i = 0; i < item['option_value'].length; i++) {
				html += '  <option value="' + item['option_value'][i]['option_value_id'] + '">' + item['option_value'][i]['name'] + '</option>';
            }

            html += '  </select>';	
			html += '</div>';	
		}
		
		$('#tab-option .tab-content').append(html);
			
		$('#option > li:last-child').before('<li><a href="#tab-option' + option_row + '" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$(\'a[href=\\\'#tab-option' + option_row + '\\\']\').parent().remove(); $(\'#tab-option' + option_row + '\').remove(); $(\'#option a:first\').tab(\'show\')"></i> ' + item['label'] + '</li>');
		
		$('#option a[href=\'#tab-option' + option_row + '\']').tab('show');
		
		$('.date').datetimepicker({
			pickTime: false
		});
		
		$('.time').datetimepicker({
			pickDate: false
		});
		
		$('.datetime').datetimepicker({
			pickDate: true,
			pickTime: true
		});
				
		option_row++;
	}	
});
//--></script> 
  
  
  <script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.time').datetimepicker({
	pickDate: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});
//--></script> 
  <script type="text/javascript"><!--
$('#language a:first').tab('show');
$('#option a:first').tab('show');
//--></script></div>
<?php echo $footer; ?> 