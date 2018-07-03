<?php
require_once 'CallDAO.php';
header('Content-Type: application/json');
$obj = new CallDAO();
$list = $obj->ListCall();
echo json_encode($list);