<footer>
    <div class="container">
        <center>
            <div class="row">
                <?php if ($informations) { ?>
                <div class="col-sm-3">
                    <h5><?php echo $text_publisher; ?></h5>
                    <ul class="list-unstyled">
                        <!-- <?php foreach ($informations as $information) { ?> 
                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>-->          
                        <li><a href="<?php echo $howtoselfpublish; ?>"><?php echo $text_howtoselftpublish; ?></a></li>
                        <li><a href="<?php echo $howtobeeditor; ?>"><?php echo $text_howtobeeditor; ?></a></li>
                        <li><a href="<?php echo $howtoshop; ?>"><?php echo $text_howtoshop; ?></a></li>
                        <li><a href="<?php echo $services; ?>"><?php echo $text_service; ?></a></li>
                    </ul>
                </div>
                <?php } ?>
                <div class="col-sm-3">
                    <h5><?php echo $text_books; ?></h5>
                    <ul class="list-unstyled">
                        <li><a href="<?php echo $bestseller; ?>"><?php echo $text_bestseller; ?></a></li>
                        <li><a href="<?php echo $popularbooks; ?>"><?php echo $text_popularbooks; ?></a></li>
                        <li><a href="<?php echo $newbooks; ?>"><?php echo $text_newbooks; ?></a></li>
                        <li><a href="<?php echo $catalogbooks; ?>"><?php echo $text_catalogbooks; ?></a></li>
                    </ul>
                </div>      
                <div class="col-sm-3">
                    <h5><?php echo $text_termandcondition; ?></h5>
                    <ul class="list-unstyled">
                        <li><a href="<?php echo $account; ?>"><?php echo $text_bookpricingandroyalty; ?></a></li>
                        <li><a href="<?php echo $order; ?>"><?php echo $text_orderbooks; ?></a></li>          
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5><?php echo $text_quickhelp; ?></h5>
                    <ul class="list-unstyled">
                        <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_faq; ?></a></li>
                        <li><a href="<?php echo $voucher; ?>"><?php echo $text_abouteditor; ?></a></li>
                        <li><a href="<?php echo $affiliate; ?>"><?php echo $text_comunity; ?></a></li>
                        <li><a href="<?php echo $special; ?>"><?php echo $text_videochatadmin; ?></a></li>
                    </ul>
                </div>
        </center>
    </div>
    <hr>
    <div class="row">
        <center>
            <div class="col-sm-4">
                <center>
                    <p><?php echo $text_home; ?>
                        <?php echo $text_about; ?>
                        <?php echo $text_contact; ?></p> 
                    <p><?php echo $text_ourgalleryevent; ?></p> 

                </center>
            </div>
            <div class="col-sm-4">
                <center>
                    <p><?php echo $powered; ?></p> 
                </center>
            </div>
            <div class="col-sm-4">
                <center>
                    <p><?php echo $text_followus; ?></p> 
                    <p><?php echo $text_linkedin; ?>
                        <?php echo $text_facebook; ?>
                        <?php echo $text_twitter; ?></p>
                </center>
            </div>
        </center>
    </div>
</div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>