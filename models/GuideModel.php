<?php
require_once("ConnexionModel.php");
class guideModel{

    
    public function getGuide(){
    $obj = new connexion();
    $c = $obj->connect();
    $qtf = "SELECT * FROM guide_marque";
    $r = $obj->request($c, $qtf);
    $obj->disconnect($c);
    return $r;
}
}


?>