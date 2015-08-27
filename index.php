<?php
    require_once "core/core.php";
    DatabaseHandler::Execute("UPDATE blogs SET activate = !activate WHERE id = '1' ");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>check</title>
</head>
<body>

site asli

<?php echo SIGNUP_SUCCESS; ?>

<img src="view/images/1.png">

</body>
</html>