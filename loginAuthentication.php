<?php      
    include('connection.php');  
    $email = $_POST['email'];  
    $password = $_POST['password'];  
      
        //to prevent from mysqli injection  
        $email = stripcslashes($email);  
        $password = stripcslashes($password);  
        $email = mysqli_real_escape_string($con, $email);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select * from sellers where email = '$email' and password = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_assoc($result);  
        $count = mysqli_num_rows($result);  
          
        if ($count == 1) {
            session_start();
            $_SESSION['sellerID'] = $row['sellerID'];
            $_SESSION['firstName'] = $row['firstName'];
            echo ("<script LANGUAGE='JavaScript'>
            window.alert('Succesfully logged in');
            window.location.href='index.html';
            </script>");
        } else {
            echo ("<script LANGUAGE='JavaScript'>
            window.alert('Email or password is incorrect');
            window.location.href='login.html';
            </script>");
        }
        mysqli_close($con);
?>