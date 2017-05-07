<?php
 // memanggil file koneksi.php

 // membuat variable dengan nilai dari form
 $username = $_POST['username'];
 $hashpassword = $_POST['password'];
 $password = hash('sha256', $hashpassword);

// proses untuk login
login($username, $password);
// menyesuaikan dengan data di database
function login($username, $password)
{
    require_once '../../../connect/db_connect.php';
    $perintah = "select * from users WHERE user_name = '$username' AND password = '$password' ";
    $hasil = mysqli_query($connect, $perintah);
    $row = mysqli_fetch_array($hasil, MYSQLI_BOTH);
    if ($row['user_name'] == $username and $row['password'] == $password) {
        session_start(); // memulai fungsi session
        $user_id = $row['user_id'];
        $_SESSION['user_id'] = $user_id;
        $_SESSION['user_name'] = $username;
        header("location:../home.php"); // jika berhasil login, maka masuk ke file home.php
    } else {
        echo "Gagal Masuk"; // jika gagal, maka muncul teks gagal masuk
    }
}
