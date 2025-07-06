
<?php
    session_start();
    require_once './API/API.php';

    // Vérifier si l'utilisateur est connecté ou non
    if (!isset($_SESSION['user'])) {
        header('Location: ./login.php');
        exit();
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Lifeguard Connect</title> 
    <link rel="shortcut icon" href="image/heartbeat-solid.svg" type="image/x-icon">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet" href="styleadmin.css">
</head>
<body>
    <!-- Header -->
    <div class="header">
        <a href="#" class="logo"><i class="fas fa-heartbeat"></i> Lifeguard.</a>
        <nav class="navbar">
            <a href="logout.php">Déconnexion</a>
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div>
    </div>
    <!-- Header -->

    <!-- Statistiques -->
    <section class="dashboard">
        <div class="statistics">
            <div class="statistic-box">
                <h3>Nombre de patients</h3>
                <p>500</p>
            </div>
            <div class="statistic-box">
                <h3>Nombre d'employés</h3>
                <p>50</p>
            </div>
        </div>
    </section>
    <!-- Statistiques -->

    <!-- Footer -->
    <section class="footer">
        <div class="credit">created by <span>Jamel Rabla</span> | all right reserved</div>
    </section>
    <!-- Footer  -->

    <script src="dashboard.js"></script>
    <script src="./js/script.js"></script>
</body>
</html>

