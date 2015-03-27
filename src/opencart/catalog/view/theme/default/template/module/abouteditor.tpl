<h3><?php echo $heading_title; ?></h3>
<style type="text/css">
    .float_l{float:left;}
    .float_r{float: right;}
    .clear{clear: both;}

    #list{
        width: 600px;
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
        		
        <p>
        <div class="float_l">
            <img src="image/gallery/event1.jpg" width="70px" />
        </div>
        <div class="content">
            Name : Editor 1<br>
            Desc : Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum <br>
        </div>        
        </p>
        
        <p>
        <div class="float_l">
            <img src="image/gallery/event2.jpg" width="70px" />
        </div>
        <div class="content">
            Name : Editor 2<br>
            Desc : Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum <br>
        </div>        
        </p>
    <div class="clear"></div>
    <hr>
    
    <a href="<?php echo $viewAll; ?>" >View All Editor Info</a>
    </div>
</body>
