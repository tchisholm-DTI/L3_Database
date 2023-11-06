<?php
    // Check user is logged on
    if(isset($_SESSION['admin'])) {


    // Retrieve subjects and authors to populate combo box
    include("subauthor.php");

    // Retrieve current values for quote ...
    $ID = $_REQUEST['ID'];

    // Get values from DB
    $edit_query = get_data($dbconnect, "WHERE q.ID = $ID");

    $edit_results_query = $edit_query[0];
    $edit_results_rs = mysqli_fetch_assoc($edit_results_query);

    $author_ID = $edit_results_rs['Author_ID'];
    $author_full_name = $edit_results_rs['Full_Name'];
    $quote = $edit_results_rs['Quote'];
    $subject_1 = $edit_results_rs['Subject1'];
    $subject_2 = $edit_results_rs['Subject2'];
    $subject_3 = $edit_results_rs['Subject3'];
     
    ?>

<div class = "admin-form">
    <h1>Edit a Quote</h1>

    <form action="index.php?page=../admin/changequote&ID=<?php echo $ID; ?>&authorID=<?php echo $author_ID; ?>" method="post">
        <p>
            <textarea name="quote" placeholder="Quote (Required)" required><?php echo $quote; ?></textarea>
        </p>

        <div class="important">
            If you edit an author, it will change the author name for the quote being edited. It does not edit the author name on all quoted attributed to that author.
        </div>

        <div class="autocomplete">
            <p><input name="author_full" id="author_full" value="<?php echo str_replace('  ', ' ', $author_full_name); ?>" /></p>
        </div>

        <div class ="light-blue">
            Blank subjects appear as n/a. You can either edit these/add a subject or leave them as n/a.
        </div>

        <br />

        <div class="autocomplete">
            <input name="subject1" id="subject1" value = "<?php echo $subject_1; ?>" required/>
        </div>

        <br><br>

        <div class="autocomplete">
            <input name="subject2" id="subject2" value = "<?php echo $subject_2; ?>" />
        </div>

        <br><br>

        <div class="autocomplete">
            <input name="subject3" id="subject3" value = "<?php echo $subject_3; ?>" />
        </div>

        <p>
            <input class="form-submit" type="submit" name="submit" value="Edit Quote"/>
        </p>

    </form>

    <script>
        <?php include("autocomplete.php"); ?>

        /* Arrays containing lists. */
        var all_tags = <?php print("$all_subjects")?>;
        autocomplete(document.getElementById("subject1"), all_tags);
        autocomplete(document.getElementById("subject2"), all_tags);
        autocomplete(document.getElementById("subject3"), all_tags);

        var all_author = <?php print("$all_authors") ?>;
        autocomplete(document.getElementById("author_full"), all_author);

    </script>
</div>

<?php
    } // End user logged on it

    else{
        $login_error = 'Please login to access this page';
        header("Location: index.php?page=../admin/login&error=$login_error");
    }
?>
