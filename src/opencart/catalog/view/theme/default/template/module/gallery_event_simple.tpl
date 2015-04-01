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
        <h2><?php echo $heading_title ?></h2>
        <a href="<?php echo $view_all_gallery; ?>" ><?php echo $entry_view_all_gallery; ?></a>
        <div id="page">
            <div id="container">		                                
                <!-- Start Advanced Gallery Html Containers -->                                        
                <div id="thumbs" class="navigation">
                    <ul class="thumbs noscript">                    
                        <?php foreach ($gallerys as $gallerysingle) { ?>
                        <li>
                            <a class="thumb" name="" href="<?php echo $gallerysingle['image'];?>">                                
                                <img widht="100" height="100" src="<?php echo $gallerysingle['image'];?>">                                                                
                            </a>                          
                            <div class="download">
                                    <a href="<?php echo $gallerysingle['image'];?>">Download</a>
                            </div>                            
                        </li>
                        <?php } ?>                   

                    </ul>
                </div>  
            </div>
        </div>              
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
