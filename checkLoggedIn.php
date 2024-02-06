<?php
session_start();
if(isset($_SESSION['sellerID'])) {
    echo $_SESSION['firstName'];
}
?>