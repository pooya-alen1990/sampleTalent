<?php

#FETCHING INFORMATION
error_reporting(E_ALL);
ini_set('display_errors','1');
    $connection = mysqli_connect("localhost","root","123","bakhti") or die("sdf");

    if(isset($_POST["blog_submit"])){
        $editor1 = $_POST["editor1"];
        mysqli_query($connection , "INSERT INTO `test`(`id`, `text`) VALUES ('','$editor1')");
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>A Simple Page with CKEditor</title>
        <!-- Make sure the path to CKEditor is correct. -->
        <script src="ckeditor/ckeditor.js"></script>
    </head>
    <body>
        <form method="post">
            <textarea name="editor1" id="editor1" rows="10" cols="80">
                This is my textarea to be replaced with CKEditor.
            </textarea>
            <input type="submit" name="blog_submit">
        </form>
            
            <script type="text/javascript">
                    //<![CDATA[
                     
                    // This call can be placed at any point after the
                    // <textarea>, or inside a <head><script> in a
                    // window.onload event handler.
                     
                    // Replace the <textarea id="editor1"> with an CKEditor
                    // instance, using default configurations.
                    CKEDITOR.replace( 'editor1', {
                            filebrowserBrowseUrl : '/talentyab/vendor/pdw_file_browser/index.php?editor=ckeditor',
                            filebrowserImageBrowseUrl : '/talentyab/vendor/pdw_file_browser/index.php?editor=ckeditor&filter=image',
                            filebrowserFlashBrowseUrl : '/talentyab/vendor/pdw_file_browser/index.php?editor=ckeditor&filter=flash',
                        }
                    );
                     
                    //]]>
            </script>
<?php


        $result = mysqli_query($connection , "SELECT * FROM `test` ; ");
        while($row = mysqli_fetch_assoc($result)){
            echo $row['text']."<hr>";
        }

   
?>
    </body>
</html>