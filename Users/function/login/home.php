<?php
 session_start();
 if (empty($_SESSION['user_id'])) {
 header("location:login.php"); // jika belum login, maka dikembalikan ke file form_login.php
 }
 else {
 header("location:../../home.php");
  } ?>