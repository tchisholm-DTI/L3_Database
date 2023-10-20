<?php

if(isset($_REQUEST['login'])) {

// Get username from form
$username = clean_input($dbconnect, $_REQUEST['username']);
$options = ['cost' => 9,];

// Get username and hashed password from database

$login_sql = "SELECT * FROM `users` WHERE `username` = '$username'";
$login_query=mysqli_query($dbconnect, $login_sql);
$login_rs = mysqli_fetch_assoc($login_query);

// Hash password and compare with password in databases
if (password_verify($_REQUEST['password'], $login_rs['password'])) {

// Password matches
echo 'password is valid';
$_SESSION['admin'] = $login_rs['username'];
header("Location: index.php?page=../admin/addquote");

} // End valid password if

else{
    
echo 'invalid password';
unset($_SESSION);
$login_error = "Incorrect username/password";
header("Location: index.php?page=../admin/login&error=$login_error");

} // End invalid password else

} // End if login button has been pushed

?>