<html>
    <head>            
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
        <!-- Grid CSS File (only needed for demo page)-->
        <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/paragridma_layout.css">
        <!-- Core CSS File. The CSS code needed to make eventCalendar works -->
        <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/eventCalendar.css">
        <!-- Theme CSS file: it makes eventCalendar nicer -->
        <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/eventCalendar_theme_responsive.css">
        <!--<script src="js/jquery.js" type="text/javascript"></script>
        <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script> -->       
        
    </head>
    <body id="responsiveDemo">	        
        <h3><?php echo $heading_title; ?></h3>
        <hr />
        <div class="container">		
            <div class="row">
                <div class="g4">			
                    <div id="eventCalendarDefault"></div>				
                    <script>
                        $(document).ready(function() {
                            $("#eventCalendarDefault").eventCalendar({
                                eventsjson: 'catalog/view/javascript/json/event.humanDate.json.php',
                                //eventsjson: '<?php echo $events ?>' ,
                                eventsLimit: 2,
                                showDescription: true,
                                eventsScrollable: true
                            });
                        });
                    </script>
                </div>			
            </div>
        </div>		
    </body>
    <script src="catalog/view/javascript/js/jquery.eventCalendar.js" type="text/javascript"></script>
</html>   