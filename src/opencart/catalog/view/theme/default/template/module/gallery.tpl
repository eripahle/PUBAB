<html>
    <head>            
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/galleriffic-3.css" type="text/css" />        
        <script type="text/javascript" src="catalog/view/javascript/gallery/jquery-1.3.2.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/gallery/jquery.galleriffic.js"></script>        
        <script type="text/javascript" src="catalog/view/javascript/gallery/jquery.opacityrollover.js"></script>        
        <script type="text/javascript" src="catalog/view/javascript/gallery/jquery.history.js"></script>        

        <script type="text/javascript">
            document.write('<style>.noscript { display: none; }</style>');
        </script>
    </head>
    <body>
        <div id="page">
            <div id="container">		
                <h1><a href="index.html">Gallery Event in PUBAPP - 2015</a></h1>                                
                <br>                			
                <!-- Start Advanced Gallery Html Containers -->
                <div id="gallery" class="content">
                    <div id="controls" class="controls">
                    <div class="slideshow-container">
                        <div id="loading" class="loader"></div>
                        <div id="slideshow" class="slideshow"></div>
                    </div>
                    <div id="caption" class="caption-container"></div>
                    </div>
                </div>            
                <div id="thumbs">
                    <ul class="thumbs noscript">                    
                        <?php foreach ($gallerys as $gallerysingle) { ?>
                        <li>
                            <a class="thumb" name="" href="Title #0">                                
                                <img widht="200" height="200" src="<?php echo $gallerysingle['image'];?>" alt="Title #0">                                
                            </a>
                            <div class="caption">
                                <div class="download">
                                    <a href="">Download Original</a>
                                </div>
                                <div class="image-title"><?php echo $gallerysingle['title'];?></div>
                                <div class="image-desc"><?php echo $gallerysingle['description'];?></div>
                            </div>
                        </li>
                        <?php } ?>                   

                    </ul>
                </div>  
                <div style="clear: both;"></div>
            </div>
        </div>              
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                // We only want these styles applied when javascript is enabled
                $('div.navigation').css({'width' : '200px', 'float' : 'left'});
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
                    playLinkText: 'Play Slideshow',
                    pauseLinkText: 'Pause Slideshow',
                    prevLinkText: '&lsaquo; Previous Photo',
                    nextLinkText: 'Next Photo &rsaquo;',
                    nextPageLinkText: 'Next &rsaquo;',
                    prevPageLinkText: '&lsaquo; Prev',
                    enableHistory: false,
                    autoStart: false,
                    syncTransitions: true,
                    defaultTransitionDuration: 900,
                    onSlideChange: function(prevIndex, nextIndex) {
                        // 'this' refers to the gallery, which is an extension of $('#thumbs')
                        this.find('ul.thumbs').children()
                                .eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
                                .eq(nextIndex).fadeTo('fast', 1.0);
                    },
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
