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
        <?php foreach ($editors as $editor) { ?>		
        <p>
        <div class="float_l">
            <img src="<?php echo $editor['image'];?>" width="150px" />
        </div>
        <div class="content">
            <b>Nama : <?php echo $editor['firstname'].' '.$editor['lastname'] ;?></b><br>
            <b>Info : </b><?php echo $editor['info'];?><br>
            <b>Email : </b><?php echo $editor['email'];?><br>
            <b>No. Telp : </b><?php echo $editor['telephone'];?><br>
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
