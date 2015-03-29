<?php
header('Content-type: text/json');
echo '[';

    $date = DateTime::createFromFormat('d-m-y H:i:s', '04-03-15 08:00:00');
    $updated = $date->format('U');
    echo '  { "date": "'; echo $updated; echo '000",';
    echo ' "type": "meeting", "title": "Test Event 1", "description": "Peluncuran Buku 1", "url": "" },';

    $date = DateTime::createFromFormat('d-m-y H:i:s', '05-03-15 08:00:00');
    $updated = $date->format('U');
    echo '  { "date": "'; echo $updated; echo '000",';
    echo ' "type": "meeting", "title": "Test Event 2", "description": "Pelurcuran Buku 2", "url": "" }';    

echo ']';
?>
