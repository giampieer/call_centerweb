<?php
class ConnectionDB {
  const SERVER = "localhost";
  const USER = "giampieer24";
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