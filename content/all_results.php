<?php

// q = quotes table
// a = author table
// s = s1, s2, and s3 are subjects

$find_sql = "SELECT 

q.*,
a.*,
s1.Subject AS Subject1,
s2.Subject AS Subject2,
s3.Subject AS Subject13,

FROM 
quotes q

JOIN author a ON a.Author_ID = q.Author_ID
JOIN all_subjects s1 ON q.Subject1_ID = s1.Subject_ID
JOIN all_subjects s2 ON q.Subject2_ID = s2.Subject_ID
JOIN all_subjects s3 ON q.Subject3_ID = s3.Subject_ID

";
$find_query = mysqli_query($dbconnect, $find_sql);
$find_rs = mysqli_fetch_assoc($find_query);
$find_count = mysqli_num_rows($find_query);

?>

<h2>All Results (<?php echo $find_count; ?>)</h2>

<?php

while($find_rs = mysqli_fetch_assoc($find_query)){
    $quote = $find_rs['Quote'];

    $author_first = $find_rs['First'];
    $author_middle = $find_rs['Middle'];
    $author_last = $find_rs['Last'];

    // Put space before middle initial so if it's blank we don't have two spaces between the first and last names
    $author_middle = " ".$author_middle;


?>

<div class="results">
    <?php echo $quote; ?>

    <p><i><?php echo $author_first.$author_middle." ".$author_last; ?></i></p>

</div>

<br />

<?php

}

?>