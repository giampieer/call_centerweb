<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 7/06/18
 * Time: 19:26
 */

require_once 'ConnectionDB.php';
class CallDAO {
    public function ListCall() {
        try {
            $sql = "select * from ozpbxcalls";
            $objc = new ConnectionDB();
            $cn = $objc->getconnectionDB();
            $list = array();
            $rs = mysqli_query($cn, $sql);
            while ($row = mysqli_fetch_assoc($rs)) {
                $list[] = $row;
            }
            mysqli_close($cn);
        } catch (Exception $exception) {
        }
        return $list;
    }

}