<html>
    <head>            
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/galleriffic-3.css" type="text/css" />        
        <script type="text/javascript" src="catalog/view/javascript/gallery/jquery-1.3.2.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/gallery/jquery.galleriffic.js"></script>        
        <script type="text/javascript" src="catalog/view/javascript/gallery/jquery.opacityrollover.js"></script>        
        <script type="text/javascript" src="catalog/view/javascript/gallery/jquery.history.js"></script>        
        <script type="text/javascript">
            //document.write('<style>.noscript { display: none; }</style>');
        </script>
    </head>
    <body>
        <table border="0">
            <tr>            
                <td style="width:600px; padding-left: 10px; padding-right: 10px;">
                    <nav id="menu" class="navbar" style="padding-left: 10px; size: 100%; padding-right: 5px;"><h3 style="color: white;"><?php echo $heading_title ?></h3></nav>                    
            </tr>
        </table>
        <table border="1" style="border-color: #dadada; border-bottom-width: 5px;">                           
            <tr>
                <td colspan="2" style="padding: 10px; width: 263px;">
                    <a href="<?php echo $view_all_gallery; ?>" >
                        <?php echo $entry_view_all_gallery; ?>
                    </a>            
                    <div id="page">
                        <div id="container">		                                                                            
                                <ul class="thumbs noscript">                                       
                                    <?php foreach ($gallerys as $gallerysingle) { ?>
                                    <li>
                                        <a class="thumb" name="" href="<?php echo $gallerysingle['image'];?>">                                
                                            <img border="1" class="image" width="90" height="90"src="<?php echo $gallerysingle['image'];?>">                                                                
                                        </a>          
                                        <br>
                                    </li>
                                    <?php } ?>                                           
                                </ul>                             
                        </div>
                    </div>  
                </td>  
            </tr>
        </table>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                // We only want these styles applied when javascript is enabled
                $('div.navigation').css({'width' : '300px', 'float' : 'left'});
                $('div.content').css('display', 'block');

                // Initially set opacity on thumbs and add
                // additional styling for hover effect on thumbs
                var onMouseOutOpacity = 0.67;
                $('#thumbs ul.thumbs li').opacityrollover({
                    mouseOutOpacity: onMouseOutOpacity,
                    mouseOverOpacity: 1.0,
                    fadeSpeed: 'fast',
                    exemptionSelector: '.selected'
                });

                // Initialize Advanced Galleriffic Gallery
                var gallery = $('#thumbs').galleriffic({
                    delay: 2500,
                    numThumbs: 15,
                    preloadAhead: 10,
                    enableTopPager: true,
                    enableBottomPager: true,
                    maxPagesToShow: 7,
                    imageContainerSel: '#slideshow',
                    controlsContainerSel: '#controls',
                    captionContainerSel: '#caption',
                    loadingContainerSel: '#loading',
                    renderSSControls: true,
                    renderNavControls: true,
                    enableHistory: false,
                    autoStart: false,
                    syncTransitions: true,
                    defaultTransitionDuration: 900,
                    onPageTransitionOut: function(callback) {
                        this.fadeTo('fast', 0.0, callback);
                    },
                    onPageTransitionIn: function() {
                        this.fadeTo('fast', 1.0);
                    }
                });
            });
        </script>
    </body>
</html>   
