<h3 class="sub-header">
ویرایش
</h3>

<?php
$error = '';
$id = $_SESSION['MM_admin_id'];



if (isset($_POST['submit'])) {
    $error = DatabaseHandler::Execute("UPDATE `admins` SET `first_name`='$_POST[first_name]',`last_name`='$_POST[last_name]',`mobile`='$_POST[mobile]',`about`='$_POST[about]' WHERE `id` = '$id' ; ");
    if($error){
        $error = ADMIN_EDIT_SUCCESS;
    }else{
        $error = ADMIN_EDIT_FAILED;
    }
}

$user = ADMINS::admins_SelectRow($id);

?>
<div class="col-xs-3 col-xs-offset-9">
    <form method="post" role="form" class="form">
        <label for="old_password">نام :</label><input type="text" value="<?php echo $user["first_name"]; ?>" name="first_name" class="form-control" >
        <label for="password">نام خانوادگی :</label><input type="text" value="<?php echo $user["last_name"]; ?>" name="last_name" class="form-control"  >
        <label for="repassword">شماره موبایل :</label><input type="text" value="<?php echo $user["mobile"]; ?>" class="form-control" name="mobile" >
        <label for="about">متن درباره شما (قابل مشاهده هنگام افزودن بلاگ یا کامنت) :</label><textarea name="about" class="form-control"><?php echo $user["about"]; ?></textarea><br>
        <input type="submit" name="submit" value="ویرایش" class="form-control btn btn-md btn-primary">
    </form>
</div>
<?php echo $error; ?>