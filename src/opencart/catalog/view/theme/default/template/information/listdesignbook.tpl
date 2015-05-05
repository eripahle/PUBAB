<?php echo $header; ?>
<div class="container">
    <div class="row">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>

        
        <div id="content" class="<?php echo $class; ?>">
            <?php if($content_top!=null){
                echo $content_top;
            } else { ?>
                <h1 align="center">Sory, Not list Book for Design</h1>
            <?php }
             ?>
           
        </div>
        
        <?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?>