<?php

$blog_list = false;
$comment_list = false;
$blog_insert = false;
$change_privileges = false;


$home_active = '';
$messages_active = '';
$blog_list_active = '';
$comment_list_active = '';
$blog_insert_active = '';
$change_privileges_active = '';


if (in_array('blog_list', $_SESSION['permissions'])) {
    $blog_list = true;
}
if (in_array('comment_list', $_SESSION['permissions'])) {
    $comment_list = true;
}
if (in_array('blog_insert', $_SESSION['permissions'])) {
    $blog_insert = true;
}
if (in_array('change_privileges', $_SESSION['permissions'])) {
    $change_privileges = true;
}


?>
<div class="col-sm-3 col-md-2 sidebar hidden-print">
    <ul class="nav nav-sidebar">
        <?php


        if (isset($_GET['page']) && $_GET['page'] == 'home') {
            $home_active = 'active';
        }
        echo "<li class='$home_active' ><a href='index.php?page=home'>داشبورد من</a></li>";


        if (isset($_GET['page']) && $_GET['page'] == 'messages') {
            $messages_active = 'active';
        }
        echo "<li class='$messages_active' ><a href='index.php?page=messages'>پیام های من</a></li>";



        if (isset($_GET['page']) && $_GET['page'] == 'blog_insert') {
            $blog_insert_active = 'active';
        }
        if ($blog_insert == true) {
            echo "<li class='$blog_insert_active' ><a href='index.php?page=blog_insert'>
                    افزودن بلاگ
            </a></li>";
        }


        if (isset($_GET['page']) && $_GET['page'] == 'blog_list') {
            $blog_list_active = 'active';
        }
        if ($blog_list == true) {
            echo "<li class='$blog_list_active' ><a href='index.php?page=blog_list'>
              لیست بلاگ
            </a></li>";
        }

        if (isset($_GET['page']) && $_GET['page'] == 'comment_list') {
            $comment_list_active = 'active';
        }
        if ($comment_list == true) {
            echo "<li class='$comment_list_active' ><a href='index.php?page=comment_list'>
لیست کامنت ها
            </a></li>";
        }


        if (isset($_GET['page']) && $_GET['page'] == 'change_privileges') {
            $change_privileges_active = 'active';
        }
        if ($change_privileges == true) {
            echo "<li class='$change_privileges_active' ><a href='index.php?page=change_privileges'>تغییر سطح دسترسی</a></li>";
        }

        ?>
    </ul>
</div>