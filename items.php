<?php      
    include('connection.php');
    
    if(isset($_GET['catagory'])) {
        $extraWhere = "AND catagory='".$_GET['catagory']."'";
    } elseif (isset($_GET['search'])) {
        $search = $_GET['search'];
        $extraWhere = "AND (catagory LIKE '%$search%' OR itemName LIKE '%$search%' OR description LIKE '%$search%')";
    } else if (isset($_GET['manage'])) {
        session_start();
        $extraWhere = "AND items.sellerID='".$_SESSION['sellerID']."'";
    } else {
        $extraWhere = "";  
    }
    
    $sql = "SELECT itemID, itemName, price, description, firstName, lastName, email, phoneNumber, location FROM items INNER JOIN sellers ON items.sellerID=sellers.sellerID WHERE unlisted='0' ".$extraWhere." order by itemID ASC";
    $result = mysqli_query($con, $sql);
  
$data = array();
while ($row = mysqli_fetch_object($result))
{
    array_push($data, $row);
}
 
echo json_encode($data);
exit();
 
 
?>