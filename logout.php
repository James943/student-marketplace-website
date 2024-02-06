<?php
session_start();
session_destroy();
echo ("<script LANGUAGE='JavaScript'>
window.alert('Logged out');
window.location.href='index.html';
</script>");
?>