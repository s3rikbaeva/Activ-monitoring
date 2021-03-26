<?php
    $connect = mysqli_connect('localhost', 'root');
    if ($connect->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    echo "Connected successfully";
?>