<?php
require_once 'CallDAO.php';
header('Content-Type: application/json');
$op = $_REQUEST["op"];
switch ($op) {
  case 1: {
      $obj = new CallDAO();
      $list = $obj->ListCall();
      echo json_encode($list);
      break;
    }
  case 2: {
      $obj = new CallDAO();
      $list = $obj->ListCall();
      $value1 = 0;
      $value2 = 0;
      $value3 = 0;
      $value4 = 0;
      $value5 = 0;
      $value6 = 0;
      $value7 = 0;
      $value8 = 0;
      foreach ($list as $reg) {
        if ($reg['callstate'] === "CallerHungUp" || $reg['callstate'] === "CalleeHungUp") {
          $value1 ++;
        } elseif ($reg['callstate'] === "NotFound") {
          $value2 ++;
        } elseif ($reg['callstate'] === "Cancelled") {
          $value3 ++;
        }
          if ($reg['callerid'] === "1000") {
          $value4 ++;
        }
        elseif ($reg['callerid'] === "1001") {
          $value5 ++;
        }
        elseif ($reg['callerid'] === "1002") {
          $value6 ++;
        }
        elseif ($reg['callerid'] === "1003") {
          $value7 ++;
        }
        elseif ($reg['callerid'] === "1004") {
          $value8 ++;
        }
      }
      $data = [
        'callerhungup'=> $value1,
        'notfound'=> $value2,
        'cancelled'=> $value3,
        'callerid1000'=> $value4,
        'callerid1001'=> $value5,
        'callerid1002'=> $value6,
        'callerid1003'=> $value7,
        'callerid1004'=> $value8
      ];
      echo json_encode($data);
      break;
    }
}
?>