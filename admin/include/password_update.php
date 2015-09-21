<h3 class="sub-header">تغییر رمز عبور</h3>
<?php
$error = '';
error_reporting(E_ALL);
ini_set('display_errors', '1');
date_default_timezone_set('Asia/Tehran');


if (isset($_POST['submit'])) {

    if (isset($_POST['old_password']) && $_POST['password'] != '' && $_POST['repassword'] != '') {
        $id = $_SESSION['MM_admin_id'];


        $old_password_row = ADMINS::admins_SelectRow($id);

        $old_password = $_POST['old_password'];
        $old_password_hash = sha1($old_password);
        $password = $_POST['password'];
        $password_hash = sha1($password);

        $repassword = $_POST['repassword'];

        if ($old_password_hash == $old_password_row['password']) {
            if ($password == $repassword) {

                $change_password_result = DatabaseHandler::Execute("UPDATE admins SET password='$password_hash' WHERE id='$id';");

                if ($change_password_result) {
                    $error = ADMIN_CHANGE_PASSWORD_SUCCESS;
                } else {
                    $error = ADMIN_CHANGE_PASSWORD_FAILED;
                }
            } else {
                $error = ADMIN_CHANGE_PASSWORD_MATCH;
            }
        } else {
            $error = ADMIN_CHANGE_PASSWORD_CURRENT;
        }
    } else {
        $error = ADMIN_CHANGE_PASSWORD_FIELDS;
    }
}

?>
<div class="col-xs-3 col-xs-offset-9">
    <form method="post" role="form" class="form">
        <label for="old_password">کلمه عبور فعلی :</label><input type="password" name="old_password"
                                                                 class="form-control" required>
        <label for="password">کلمه عبور جدید :</label><input type="password" name="password" class="form-control"
                                                             required>
        <label for="repassword">تکرار کلمه عبور جدید :</label><input type="password" class="form-control"
                                                                     name="repassword" required><br>
        <input type="submit" name="submit" value="تایید" class="form-control btn btn-md btn-primary">
    </form>
</div>
<?php echo $error; ?>