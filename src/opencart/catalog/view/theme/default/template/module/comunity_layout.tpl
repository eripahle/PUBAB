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
    <h3><?php echo $heading_title; ?></h3><br>
    <div id="list">
        <?php foreach ($comunitys as $comunity) { ?>		
        <p>
        <div class="float_l">
            <img src="<?php echo $comunity['image'];?>" width="140px" />
        </div>
        <div class="content">
            Name : <?php echo $comunity['name'];?><br>
            <a target="_blank" href="<?php echo $comunity['link'];?>">Link : <?php echo $comunity['link'];?></a><br>
            Description : <?php echo $comunity['description'];?><br>            
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
