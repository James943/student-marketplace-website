<?php      
    include('connection.php');  
    $pname = $_POST['pname'];
    $price = $_POST['price'];
    $catagory = $_POST['catagory'];
    $productdesc = $_POST['productdesc'];
             
$target_dir = "Images/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
  if($check !== false) {
    echo ("<script LANGUAGE='JavaScript'>
    window.alert('File is an image')</script>");
    $uploadOk = 1;
  } else {
    echo ("<script LANGUAGE='JavaScript'>
    window.alert('File is not an image.')</script>");
    $uploadOk = 0;
  }
}

// Check if file already exists
if (file_exists($target_file)) {
  echo ("<script LANGUAGE='JavaScript'>
    window.alert('Sorry, file already exists.')</script>");
  $uploadOk = 0;
}


// Check file size
if ($_FILES["fileToUpload"]["size"] > 10000000) {
  echo ("<script LANGUAGE='JavaScript'>
    window.alert('Sorry, your file must be less than 10MB.')</script>");
  $uploadOk = 0;
}

// Allow certain file formats
//if($imageFileType != "jpg") {
 // echo ("<script LANGUAGE='JavaScript'>
 //   window.alert('Sorry, only JPG files are allowed.')</script>");
 // $uploadOk = 0;
//}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
  echo ("<script LANGUAGE='JavaScript'>
    window.alert('Sorry, your file was not uploaded.')
    window.location.href='sellerPage.html';
    </script>");
// if everything is ok, try to upload file
} else {

        $sql1 = "select * from items";
        
        $result = mysqli_query($con, $sql1);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);
        $count = $count + 1;
        
        session_start();
        $sellerID = $_SESSION['sellerID'];
        $sql2 =  "INSERT INTO items (itemID, sellerID, itemName, price, catagory, description)
                         VALUES ('$count', '$sellerID', '$pname', '$price', '$catagory', '$productdesc')";
         
         if (($con->query($sql2) === TRUE)  && (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file))) {
             
            echo ("<script LANGUAGE='JavaScript'>
            window.alert('The file has been uploaded.');</script>");
        
        
        
        rename($target_file, 'Images/item' . $count . '.jpg');
             
        echo ("<script LANGUAGE='JavaScript'>
    window.alert('Item listed');
    window.location.href='index.html';
    </script>");
    
         } else {
    
    echo ("<script LANGUAGE='JavaScript'>
    window.alert('Sorry, there was an error uploading your file.')</script>");
    

         echo "Error: " . $sql2 . "<br>" . $con->error;
         
         }
    

}


?>