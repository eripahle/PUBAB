<?php echo $header; ?>
<div class="container">
    <div class="row">                
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php }else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>

        
        <div id="content" class="<?php echo $class; ?>">
            <?php echo $content_top; ?>            
        </div>
        
	</div>
</div>
<?php echo $footer; ?>