<?php
    session_start();
    if ($_SESSION['user']) {
        header('Location: profile.php');
    }

?>


<?php
    if ($_SESSION['message']) {
        echo '<p class="msg"> ' . $_SESSION['message'] . ' </p>';
    }
    unset($_SESSION['message']);
?>
