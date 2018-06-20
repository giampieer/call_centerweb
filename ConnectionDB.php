<?php
class ConnectionDB {
    const SERVER = "180.172.10.35";
    const USER = "root";
    const PASS = "";
    const DATABASE = "callcenterregistrollamadas";
    private  $cn = null;

    public function getconnectionDB() {
        try {
            $this->cn = mysqli_connect(self::SERVER,self::USER, self::PASS, self::DATABASE);
        } catch (Exception $exc) {
        }
        return $this->cn;
    }
}