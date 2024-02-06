<?php      
    include('connection.php');  
    $name = $_POST['name'];
    $price = $_POST['price'];
    $description = $_POST['description'];
    $itemID = $_GET['itemID'];
    
    $sql = "UPDATE items SET itemName = '$name', price = '$price', description = '$description' WHERE itemID = '$itemID'";
         
         if ($con->query($sql) === TRUE) {
             
            echo ("<script LANGUAGE='JavaScript'>
            window.alert('Item updated');
            window.location.href='manage.html';</script>");
        
         } else {
             echo "Error: " . $sql . "<br>" . $con->error;
         }
        
?>