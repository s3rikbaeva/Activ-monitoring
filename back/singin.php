<?php
    require_once 'connect.php';


    $login = $_POST['login'];
    $password = md5($_POST['password']);

    $check_user = mysqli_query($connect, "SELECT * FROM `users` WHERE `login` = '$login' AND `password` = '$password'");
    if (mysqli_num_rows($check_user) > 0){

        $user = mysqli_fetch_accos($check_user);





    }else{
        print_r("Error");
    }

?>

<pre>
    <?php
        print_r($check_user);
        print_r($user);
    ?>
</pre>
