<style type="text/css">
    .float_l{float:left;}
    .float_r{float: right;}
    .clear{clear: both;}

    #list{
        width: 440px;        
    }

    #list img{
        border: 2px solid #000;
        padding: 5px;
        margin-right: 10px;
    }
    .content{
        text-align: justify;        
        padding-right: 220px;     
        //margin-right: 200px;
    }


    hr{
        width: 400px;
    }
</style>
<body>
    <table border="0">
        <tr>
            <td>
                <h3><?php echo $heading_title1; ?></h3>
            </td>
            <td>
                <h3><?php echo $heading_title2; ?></h3>
            </td>
        </tr>
        <tr>
            <td>
                <div id="list">
                    <?php foreach ($testimonys as $testimony) { ?>		
                    <p>
                    <table>
                        <tr>
                            <td>
                                <div class="float_l">
                                    <img src="image/<?php echo $testimony['image'];?>" width="70px" />
                                </div>
                            <td>
                                <div class="content">
                                    <B>Author : <?php echo $testimony['author'];?></B><br>
                                    Testimony : <?php echo $testimony['text'];?><br>
                                </div>
                        </tr>
                    </table>
                    </p>
                    <div class="clear"></div>
                    <hr>
                    <?php } ?>
                    <a href="<?php echo $viewAlltestimony; ?>" >View All Testimony</a>
                </div>
            <td>                                
                <div id="list">
                    <p>
                    <table>
                        <tr>
                            <td>
                                <div class="float_l">
                                    <img src="image/gallery/event1.jpg" width="70px" />
                                </div>
                            <td>
                                <div class="content">
                                    <b>Name : Editor 1</b><br>
                                    Desc : Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum <br>
                                </div>      
                        <tr>
                    </table>
                    <div class="clear"></div>
                    </p>
                    
                    <table>
                        <tr>
                            <td>
                                <div class="float_l">
                                    <img src="image/gallery/event1.jpg" width="70px" />
                                </div>
                            <td>
                                <div class="content">
                                    <b>Name : Editor 2</b><br>
                                    Desc : Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum Percobaan testimony Lorem Ipsum <br>
                                </div>      
                        <tr>
                    </table>
                    <br>
                    <br>
                    <a href="<?php echo $viewAlleditor; ?>" >View All Editor Info</a>
                </div>
        </tr>
    </table>
</body>
