<!-- 
Tweetbook is a Facebook and Twitter page link module for OpenCart - MarketInSG.
//-->
<?php if ($facebook && $twitter) { ?>
<div style="z-index:999;position:fixed;bottom:0px;<?php echo $position ? 'left:0px;' : 'right:0px;' ?>" class="tweetbook">
<?php } else { ?>
<div style="z-index:999;position:fixed;bottom:0px;<?php echo $position ? 'left:0px;' : 'right:0px;' ?>" class="tweetbook">
<?php } ?>
  <?php if ($facebook) { ?>
  <a href="<?php echo $facebook; ?>" target="_blank"><img border="0" style="width:50px; height:50px;" src="catalog/view/theme/default/image/f_logo.png" alt="" /></a>
  <?php } ?>
  <?php if($twitter) { ?>
  <a href="<?php echo $twitter; ?>" target="_blank"><img border="0" style="width:50px; height:50px;" src="catalog/view/theme/default/image/t_logo.png" alt="" /></a>
  <?php } ?>
</div>
<script type="text/javascript">
$(document).ready(function(){
	if ($(this).width() < 752) {
		$('.tweetbook').hide();
	} else {
		$('.tweetbook').show();
	}
});

$(window).resize(function() {
	if ($(this).width() < 752) {
		$('.tweetbook').hide();
	} else {
		$('.tweetbook').show();
	}
});
</script>