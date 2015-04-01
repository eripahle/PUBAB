<h3><?php echo $heading_title; ?></h3>
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
    <div id="list">
        <?php foreach ($comunitys as $comunity) { ?>		
        <p>
        <div class="float_l">
            <img src="image/gallery/himakom.jpg" width="140px" />
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
    
     <div id=paging align=left><?php echo $linkHalaman?></div> 
    </div>
</body>
