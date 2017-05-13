<?php

include '../Users/connect/db_connect.php';



$json_input_data=json_decode(file_get_contents('php://input'), true);
$username=$json_input_data['username'];
$password=hash('sha256', $json_input_data['password']);


if (isset($username) && isset($password)) {
    //echo " in here ";
    $perintah = "select * from users WHERE username = '$username' AND password = '$password' ";
    $hasil = mysqli_query($connect, $perintah);

        //create an array
        while ($row =mysqli_fetch_assoc($hasil)) {
            $id = $row['user_id'];
            $nama = $row['user_name'];
            $email = $row['email'];
        }
    if ($nama==null & $email==null) {
        echo json_encode(array('status' => false, 'message' => 'username or password error'));
        return;
    }
    $key = "eenjoy";//key
    $token = $id.$nama.$keterangan . time().$key;


    $jwt = hash('sha256', $token);
    //echo "  token= ".$token;

    header('Content-type: application/json');
    echo json_encode(array('status' => true, 'token' => $jwt, 'nama' => $nama, 'id' => $id));
} else {
    // header('Content-type: application/json');
    echo json_encode(array('status' => false, 'message' => 'please fill username and password'));
}

  mysqli_close($connect);
