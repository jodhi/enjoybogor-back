<?php
    // if (isset($_SERVER['HTTP_ORIGIN'])) {
    //     header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    //     header('Access-Control-Allow-Credentials: true');
    //     header('Access-Control-Max-Age: 86400');    // cache for 1 day
    // }
    //
    // //http://stackoverflow.com/questions/15485354/angular-http-post-to-php-and-undefined
    // $postdata = file_get_contents("php://input");
    // if (isset($postdata)) {
    //     $request = json_decode($postdata);
    //     $username = $request->username;
    //     $password = $request->password;
    //     if ($username != "") {
    //         echo "username is: " . $username;
    //         echo "<br>";
    //         echo "password is: " . $password;
    //     } else {
    //         echo "Empty username parameter!";
    //     }
    // } else {
    //     echo "Not called properly with username parameter!";
    // }

    $json_input_data=json_decode(file_get_contents('php://input'), true);

    $usrn=$json_input_data["username"];
    $pass=$json_input_data["password"];
    if ($usrn!="") {
        echo "usrname is ".$usrn;
        echo "pass is ".$pass;
    } else {
        echo "empty username";
    }
