<?php
$fileName = 'adatok.json';
$JsonFile = fopen($fileName, "a+");
echo fread($JsonFile,filesize($fileName));
