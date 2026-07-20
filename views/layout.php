<?php
require_once("CommonViews.php");
$r=new commonViews();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Vehicom</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
    <script src="./assets/js/jquery-3.6.0.js"></script>
    <script src="./assets/js/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/356c3beb3c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
<?php
         $r->Navbar();
        ?>
    <div class="container">
    <div class="navLinks" >
      <?php
        $r->Menu();
      ?>
    </div>
    <?php
         echo $content;
       
        ?>
        
    </div>
    <?php
    $r->Footer();
    ?>
</body>

</html>