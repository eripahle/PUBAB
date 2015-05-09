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
        padding-right: 245px;     
        //margin-right: 200px;
    }


    hr{
        width: 400px;
    }
</style>
<body>
    <br>
    <table border="0">
        <tr>
            <td>
                <nav id="menu" class="navbar" style="padding-left: 10px; size: 100%; padding-right: 5px;"><h3 style="color: white;"><?php echo $heading_title1; ?></h3></nav>
            </td>
            <td>
                <a style="padding: 10px;" href="<?php echo $viewAlltestimony; ?>" >View All Testimony</a>
            </td>
            <td>
            <td>
                <nav id="menu" class="navbar" style="padding-left: 10px; size: 100%; padding-right: 5px;"><h3 style="color: white;"><?php echo $heading_title2; ?></h3></nav>
            </td>
            <td>
                <a style="padding: 10px" href="<?php echo $viewAlleditor; ?>" >View All Editor Info</a>
            </td>
        </tr>
        <tr>
            <td colspan="2">
               
                    <table border="1" style="border-color: #dadada; border-width: 2px; border-bottom-width: 5px;border-left-width: 5px;">
                        <tr>
                            <td style="padding: 8px; padding-right: 0px;">
                                <?php foreach ($testimonys as $testimony) { ?>		
                                <p>
                                <table border="0">
                                    <tr>
                                        <td style="padding: 10px;">
                                            <div class="float_l">
                                                <img src="image/<?php echo $testimony['image'];?>" width="70px" />
                                            </div>
                                        <td style="width: 290px; padding: 10px">                                
                                            <B>Author : <?php echo $testimony['author'];?></B><br>
                                            Testimony : <?php echo $testimony['text'];?><br>                                
                                    </tr>
                                </table>
                                </p>
                                <div class="clear"></div>
                                <hr>
                                <?php } ?>
                        </tr>
                    </table>
                
            <td style="padding: 5px;"> 
            <td colspan="2">         
                
                    <table border="1" style="border-color: #dadada; border-width: 2px; border-bottom-width: 5px; border-left-width: 5px;">
                        <tr>
                            <td style="padding: 8px;">
                                <?php foreach ($abouteditors as $abouteditor) { ?>                                    
                                <table border="0">
                                    <tr>                            
                                        <td style="padding: 10px;">
                                            <div class="float_l">
                                                <img src="<?php echo $abouteditor['image'];?>" width="70px" />
                                            </div>                            
                                        <td style="width: 400px; padding: 10px;">
                                            <b>Name : <?php echo $abouteditor['firstname'].' '.$abouteditor['lastname'];?></b><br>
                                            Desc : <?php echo $abouteditor['info']?><br>

                                    <tr>
                                    </tr>
                                </table>
                                <div class="clear"></div>
                                </p>
                                <?php } ?>
                    </table>
                    <br>
                    <br>

                
        </tr>
    </table>
</body>
