<?php      
    include('connection.php');  
    $itemID = $_POST['itemID'];
    
    $sql = "UPDATE items SET unlisted = '1' WHERE itemID = '$itemID'";
         
         if ($con->query($sql) === TRUE) {
             
            echo ("<script LANGUAGE='JavaScript'>
            window.alert('Item unlisted');
            window.location.href='manage.html';</script>");
        
         } else {
             echo "Error: " . $sql . "<br>" . $con->error;
         }
        
?>