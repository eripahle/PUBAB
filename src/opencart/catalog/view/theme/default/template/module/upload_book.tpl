<h3><?php echo $heading_title; ?></h3>
<div class="container-fluid">        
    <div class="panel panel-default">        
        <div class="panel-body">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>                    
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab-general">                                                        
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_judul_buku; ?></label>
                            <div class="col-sm-10">
                                <input type="text" name="titlebook" placeholder="<?php echo $help_entry_judul_buku; ?>" id="input-titlebook" class="form-control" />
                            </div>
                        </div>                                                    
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_kategori_buku; ?></label>
                            <div class="col-sm-10">
                                <select name="category_class_id" id="input-category-class" class="form-control">
                                    <option value="0"><?php echo $text_non; ?></option>
                                    <?php foreach ($category_classes as $category_class) { ?>
                                    <?php if ($category_class['category_class_id'] == $category_class_id) { ?>
                                    <option value="<?php echo $category_class['category_class_id']; ?>" selected="selected"><?php echo $category_class['name']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $category_class['category_class_id']; ?>"><?php echo $category_class['name']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>                              
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_isbn; ?></label>
                            <div class="col-sm-10">
                                <input type="number" name="isbn" placeholder="<?php echo $help_entry_isbn; ?>" id="input-titlebook" class="form-control" />
                            </div>
                        </div>                                
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_harga; ?></label>
                            <div class="col-sm-10">
                                <input type="number" name="harga" placeholder="<?php echo $help_entry_harga; ?>" id="input-titlebook" class="form-control" />
                            </div>
                        </div>                                      
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_jumlah_halaman; ?></label>
                            <div class="col-sm-10">
                                <input type="text" name="jumlahhalaman" placeholder="<?php echo $help_entry_jumlah_halaman; ?>" id="input-titlebook" class="form-control" />
                            </div>
                        </div>                                
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_sinopsis; ?></label>
                            <div class="col-sm-10">
                                <input type="text" name="sinopsis" placeholder="<?php echo $help_entry_sinopsis; ?>" id="input-titlebook" class="form-control" />
                            </div>
                        </div>                                                                                                             
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_cover; ?></label>
                            <div class="col-sm-10">
                                <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                            </div>
                        </div>            
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-titlebook"><?php echo $entry_file_buku; ?></label>
                            <div class="col-sm-10">                                
                                <input type="file" name="file" required value="<?php echo $browse; ?>" class="btn btn-primary" >
                            </div>                                
                            </table>

                        </div>                                

                    </div>          
            </form>
        </div>
    </div>
    <div class="page-footer">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-product" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>                                
        </div>
    </div>
    <br>
</div>
</div>

<script type="text/javascript"><!--
var image_row = < ?php echo $image_row; ? > ;
            function addImage() {
                html = '<tr id="image-row' + image_row + '">';
                html += '  <td class="text-left"><a href="" id="thumb-image' + image_row + '"data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /><input type="hidden" name="product_image[' + image_row + '][image]" value="" id="input-image' + image_row + '" /></td>';
                html += '  <td class="text-right"><input type="text" name="product_image[' + image_row + '][sort_order]" value="" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>';
                html += '  <td class="text-left"><button type="button" onclick="$(\'#image-row' + image_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
                html += '</tr>';

                $('#images tbody').append(html);

                image_row++;
            }
//--></script> 
<script type="text/javascript"><!--
// Manufacturer
    $('input[name=\'manufacturer\']').autocomplete({
        'source': function(request, response) {
            $.ajax({
                url: 'index.php?route=catalog/manufacturer/autocomplete&token=<?php echo $token; ?>&filter_name=' + encodeURIComponent(request),
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
                url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' + encodeURIComponent(request),
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
                url: 'index.php?route=catalog/filter/autocomplete&token=<?php echo $token; ?>&filter_name=' + encodeURIComponent(request),
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
                url: 'index.php?route=catalog/download/autocomplete&token=<?php echo $token; ?>&filter_name=' + encodeURIComponent(request),
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
                url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' + encodeURIComponent(request),
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