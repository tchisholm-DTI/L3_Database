<?php

// Retrieve data from form
    $quote = $_REQUEST['quote'];

    $author_full = $_REQUEST['author_full'];
    $subject1 = $_REQUEST['subject1'];
    $subject2 = $_REQUEST['subject2'];
    $subject3 = $_REQUEST['subject3'];

    $first = "";
    $middle = "";
    $last = "";

// Initialise IDs
$subject_ID_1 = $subject_ID_2 = $subject_ID_3 = $author_ID = "";

// Handle blank fields
if ($author_full == "") {
    $author_full = $first = "Anoymous";
} 

if ($subject2 == "") {
    $subject2 = "n/a";
} 

if ($subject3 == "") {
    $subject3 = "n/a";
} 

// Check to see if subject/author is in DB, if it isn't, add it.

$subjects = array($subject1, $subject2, $subject3);
$subject_IDs = array();

// Statement to insert subjects
$stmt = $dbconnect -> prepare("INSERT INTO `all_subjects` (`Subject`) VALUES (?);");

foreach ($subjects as $subject) {
    $subjectID = get_search_ID($dbconnect, $subject);
    
    if ($subjectID == "no results") {

        // Insert the subject
        $stmt -> bind_param("s", $subject);
        $stmt -> execute();

        // Retrieve subject ID
        $subjectID = $dbconnect->insert_id;
    }
    $subject_IDs[] = $subjectID;
}

// Retrieve subject ids
$subject_ID_1 = $subject_IDs[0];
$subject_ID_2 = $subject_IDs[1];
$subject_ID_3 = $subject_IDs[2];



// Check to see if author exists
$find_author_id = "SELECT * FROM author a WHERE CONCAT(a.First, ' ', a.Middle, ' ', a.Last) LIKE '$author_full%' OR CONCAT(a.First, ' ', a.Last) LIKE '$author_full%' ";
$find_author_query = mysqli_query($dbconnect, $find_author_id);
$find_author_rs = mysqli_fetch_assoc($find_author_query);
$author_count = mysqli_num_rows($find_author_query);

// Retrieve author ID of author exists
if ($author_count > 0) {
    $author_ID = $find_author_rs['Author_ID'];
}

else{
    // Split author name and add to DB
    $names = explode(' ', $author_full);

    if(count($names) > 1) {
        $first = $names[0];
        $last = $names[count($names) - 1];}

    elseif (count($names) == 1) {
        $first = $names[0];}

    // Check if a middle name exists
    if (count($names) > 2){
        $middle = implode(' ', array_slice($names, 1, -1));
    }

// Add name to DB
$stmt = $dbconnect -> prepare("INSERT INTO `author` (`First`, `Middle`, `Last`) VALUES (?, ?, ?); ");
$stmt -> bind_param("sss", $first, $middle, $last);
$stmt -> execute();

$author_ID = $dbconnect -> insert_id;

} // End name split else

?>