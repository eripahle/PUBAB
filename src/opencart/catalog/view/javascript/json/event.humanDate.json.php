<?php

header('Content-type: text/json');
include ("../../../controller/tool/calendar_machine.php");
$calendar = new calendar_machine();
$result = $calendar->getResult_query();
while ($row = mysql_fetch_array($result)) {
    $event_date = $row['event_date'];
    $title = $row['title'];
    $description = $row['description'];
    echo '[';

    $date = DateTime::createFromFormat('yy-m-d H:i:s', $row['event_date'].' 08:00:00');
    $updated = $date->format('U');
    echo '  { "date": "';
    echo $updated;
    echo '000",';
    echo ' "type": "meeting", "title": "'.$row['title'].'", "description": "'.$row['description'].'", "url": "" },';

    $date = DateTime::createFromFormat('d-m-y H:i:s', '05-03-15 08:00:00');
    $updated = $date->format('U');
    echo '  { "date": "';
    echo $updated;
    echo '000",';
    echo ' "type": "meeting", "title": "Test Event 2", "description": "Pelurcuran Buku 2", "url": "" }';

    echo ']';
}
?>
