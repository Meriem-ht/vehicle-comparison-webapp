<?php
class connexion{
    private $dbname;
    private $host;
    private $user;
    private $password;

    public function __construct() {
        $configFile = __DIR__ . '/../config/config.php';
        
        if (file_exists($configFile)) {
            $config = require $configFile;
            $this->dbname = $config['db']['dbname'];
            $this->host = $config['db']['host'];
            $this->user = $config['db']['user'];
            $this->password = $config['db']['password'];
        } else {
            die("Configuration file not found. Please copy config/config.example.php to config/config.php and configure your database credentials.");
        }
    }

    public function connect (){
        $dsn = "mysql:dbname=$this->dbname;host=$this->host;";
        try {
            $c = new PDO($dsn, $this->user, $this->password);
            $c->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $c->exec("SET NAMES utf8mb4");
        } catch (PDOException $ex) {
            printf("Erreur de connexion à la base de données : %s", $ex->getMessage());
            exit();
        }
        return $c;
    }
    public function disconnect(&$c){
        $c=null;
    }
    public function request($c,$qtf){
        $c= $c->prepare($qtf);
        $c->execute();
        return $c->fetchAll(PDO::FETCH_ASSOC);
    }

}
?>