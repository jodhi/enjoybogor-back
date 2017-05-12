<?php

function login($username, $password)
{
    require_once 'connect/db_connect.php';
    $perintah = "select * from users WHERE username = '$username' AND password = '$password' ";
    $hasil = mysqli_query($connect, $perintah);
    $row = mysqli_fetch_array($hasil, MYSQLI_BOTH);
    if ($row['username'] == $username and $row['password'] == $password) {
        $user_id = $row['user_id'];
        return "true";
    } else {
        return "false";
    }
}

function register($user_name, $username, $user_contact, $email, $password)
{
    require_once 'connect/db_connect.php';
    $sql = "INSERT INTO users (user_id,username,user_name,date_signup,points,user_contact,email,password,active) VALUES ('','$username','$user_name',NOW(),0, '$user_contact', '$email', '$password',1)";
    if ($connect->query($sql) === true) {
        return "true";
    } else {
        return "false";
        //echo "Error " . $sql . ' ' . $connect->connect_error;
    }

    $connect->close();
}

function info_user($username)
{
    require_once 'connect/db_connect.php';
    $sql = "SELECT * FROM users WHERE username ='$username'  ";

    $result = $connect->query($sql);


    $row = $result->fetch_assoc();

    $back=array("user_name"=>$row['user_name'],"contact"=>$row['username'],"email"=>$row['email'],"points"=>$row['points']);

    $back_encoded = json_encode($back);
    echo $back_encoded;
}



    $json_input_data=json_decode(file_get_contents('php://input'), true);
// check type of control
    $type=$json_input_data["type"];

if ($type==="login") {
    $username=$json_input_data["username"];
    $password=hash('sha256', $json_input_data["password"]);
    $status = login($username, $password);
    $back=array("status"=>$status);

    $back_encoded = json_encode($back);
    echo $back_encoded;
} elseif ($type==="register") {
    $username=$json_input_data["username"];
    $user_name=$json_input_data["user_name"];
    $user_contact=$json_input_data["user_contact"];
    $email=$json_input_data["email"];
    $password=hash('sha256', $json_input_data["password"]);
    $status = register($user_name, $username, $user_contact, $email, $password);
    $back=array("status"=>$status);

    $back_encoded = json_encode($back);
    echo $back_encoded;
} elseif ($type==="user_info") {
    $username=$json_input_data["username"];
} elseif ($type==="list_restaurant") {
} elseif ($type==="list_voucher") {
} elseif ($type==="list_menu") {
} elseif ($type==="info_user") {
    $username=$json_input_data["username"];
    $status = info_user($username);
    //$back=array("status"=>$status);

    //$back_encoded = json_encode($back);
}



//echo "makan";

    // ///---sender
    // if ($usrn!="") {
    //     $back=array("type"=>$type);
    //     $back_encoded = json_encode($back);
    //     echo $back_encoded;
    // } else {
    //     echo "empty username";
    // }
    //
   ?>
