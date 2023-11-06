<?php
    // Check user is logged on
    if(isset($_SESSION['admin'])) {


    // Retrieve subjects and authors to populate combo box
    include("subauthor.php");
     
    ?>

<div class = "admin-form">
    <h1>Add a Quote</h1>

    <form action="index.php?page=../admin/insertquote" method="post">
        <p>
            <textarea name="quote" placeholder="Quote (Required)" required></textarea>
        </p>

        <div class="autocomplete">
            <p><input name="author_full" id="author_full" placeholder="Author Name (First Middle Last)"/></p>
        </div>

        <div class="autocomplete">
            <input name="subject1" id="subject1" placeholder="Subject 1 (required)" required/>
        </div>

        <br><br>

        <div class="autocomplete">
            <input name="subject2" id="subject2" placeholder="Subject 2"/>
        </div>

        <br><br>

        <div class="autocomplete">
            <input name="subject3" id="subject3" placeholder="Subject 3"/>
        </div>

        <p>
            <input class="form-submit" type="submit" name="submit" value="Submit Quote"/>
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
