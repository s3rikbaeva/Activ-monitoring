<?php
    session_start();
    if ($_SESSION['user']) {
        header('Location: profile.php');
    }

?>
