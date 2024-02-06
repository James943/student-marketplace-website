<?php      
    include('connection.php');
      
        $sql = "SELECT firstName,lastName, email FROM sellers WHERE sellerID =".$_GET['sellerID'];  
        $result = mysqli_query($con, $sql);  
        
$data = array();
while ($row = mysqli_fetch_object($result))
{
    array_push($data, $row);
}
 
echo json_encode($data);
exit();
 
 
?>