<?php

// Check user is logged on
if (isset($_SESSION['admin'])) {

// Retrieve quote ID and sanitise it (in case someone edits the URL)
$quote_ID = filter_var($_REQUEST['ID'], FILTER_SANITIZE_NUMBER_INT);

// Adjust heading and find quote
$heading_type = "delete_quote";
$heading = "";
$sql_conditions = "WHERE ID = $quote_ID";

include("content/results.php");

// $author_ID = $find_rs['Author_ID'];


?>

<p>
    <span class="tag white-tag">
    <a href="index.php?page=../admin/deletequote&ID=<?php echo $quote_ID; ?>&author=<?php echo $author_ID ?>">Yes, Delete it!</a>
    </span>

    &nbsp;

    <span class="tag white-tag">
    <a href="javascript:history.back()">No, take me back</a>
    </span>

</p>

<?php

} // End user logged on if

else {
    $login_error = 'Please login to access this page';
    header("Location: index.php?page=../admin/login&error=$login_error");

}

?>