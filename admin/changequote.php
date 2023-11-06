<?php

// Check user is logged on
if (isset($_SESSION['admin'])) {

    if(isset($_REQUEST['submit']))
{

// Retrieve quote and author ID form
// Check they are integers (in case someone edits the URL)
$quote_ID = filter_var($_REQUEST['ID'], FILTER_SANITIZE_NUMBER_INT);
$old_author = filter_var($_REQUEST['authorID'], FILTER_SANITIZE_NUMBER_INT); 

    include("processform.php");
    
// Delete author if there are no quotes associated with that author
if ($old_author != $author_ID) {
    delete_ghost($dbconnect, $old_author);
} // End check author changed

// Update quote
$stmt = $dbconnect -> prepare("UPDATE `quotes` SET `Author_ID` = ?, `Quote` = ?, `Subject1_ID` = ?, `Subject2_ID` = ?, `Subject3_ID` = ? WHERE `ID` = ?;");
$stmt -> bind_param("isiiii", $author_ID, $quote, $subject_ID_1, $subject_ID_2, $subject_ID_3, $quote_ID);
$stmt -> execute();

// Close stmt once everything has been inserted
$stmt -> close();

$heading = "";
$heading_type = "edit_success";
$sql_conditions = "WHERE ID = $quote_ID";

include("content/results.php");

} // End submit button pushed

}// End user logged on it

else{
    $login_error = 'Please login to access this page';
    header("Location: index.php?page=../admin/login&error=$login_error");
}