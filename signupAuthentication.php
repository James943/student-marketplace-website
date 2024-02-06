<?php      
    include('connection.php');  
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName']; 
    $studentNumber = $_POST['studentNumber'];
    $email = $_POST['email'];
    $phoneNumber = $_POST['phoneNumber'];
    $location = $_POST['location'];
    $password = $_POST['password'];
        
              $sql =  "INSERT INTO sellers (firstName, lastName, studentNumber, email, phoneNumber, location, password)
         VALUES ('$firstName', '$lastName', '$studentNumber', '$email', '$phoneNumber', '$location', '$password')";
         
         if ($con->query($sql) === TRUE) {
             $sql = "select * from sellers where email = '$email' and password = '$password'";
             $result = mysqli_query($con, $sql);
             $row = mysqli_fetch_assoc($result);  
             session_start();
             $_SESSION['sellerID'] = $row['sellerID'];
             $_SESSION['firstName'] = $row['firstName'];
      echo ("<script LANGUAGE='JavaScript'>
    window.alert('New user created');
    window.location.href='index.html';
    </script>");
         
         } else {
         echo "Error: " . $sql . "<br>" . $con->error;
         }
         
?>