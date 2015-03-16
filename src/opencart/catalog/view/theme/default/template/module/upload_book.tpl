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
                                    <option value="<?php echo $category_class['category_id']; ?>" selected="selected"><?php echo $category_class['name']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $category_class['category_id']; ?>"><?php echo $category_class['name']; ?></option>
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
                                <input type="file" name="filebuku" required value="<?php echo $browse; ?>" class="btn btn-primary" >
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