<h3><?php echo $heading_title; ?></h3>
<br>
<style type="text/css">
    .float_l{float:left;}
    .float_r{float: right;}
    .clear{clear: both;}

    #list{
        width: 800px;
    }

    #list img{
        border: 2px solid #000;
        padding: 5px;
        margin-right: 10px;
    }
    .content{
        text-align: justify;
    }


    hr{
        width: 600px;
    }
</style>

<body>    
    <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
    <br>
    <div id="list">
        <?php foreach ($testimonys as $testimony) { ?>		
        <p>
        <div class="float_l">
             <img src="image/<?php echo $testimony['image'];?>" width="70px" />
        </div>
        <div class="content">
            <b>Author : <?php echo $testimony['author'];?></b><br>
            Testimony : <?php echo $testimony['text'];?><br>
        </div>
    </p>
    <div class="clear"></div>
    <hr>
    <?php } ?>
    
     <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
    </div>
</body>
