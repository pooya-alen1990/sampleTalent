<?php

require_once "../core/core.php";

if (!isset($_SESSION['MM_admin_mobile'])) {
    header('Location: login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Pooya Sabramooz">
    <link rel="Shortcut icon" href="images/favicon.png">

    <title>
        پنل ادمین تلنت یاب
    </title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right" style="float:left !important">
                <li><a href="logout.php">خروج</a></li>
                <li><a href="#">داشبورد</a></li>
                <li><a href="index.php?page=edit">ویرایش</a></li>
                <li><a href="index.php?page=password_update">تغییر رمز عبور</a></li>
                <li>
                    <a href="index.php?page=home"><?php echo $_SESSION['MM_admin_first_name'] . ' ' . $_SESSION['MM_admin_last_name']; ?></a>
                </li>
            </ul>
            <a class="navbar-brand" href="index.php" style="float:right; margin-left:20px;">
                تلنت یاب
            </a>

            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="جستجو...">
            </form>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <?php include('include/sidebar.php'); ?>
        <div class="col-sm-9 col-md-10 main visible-print-block">

            <?php
            if (isset($_GET['page'])) {

                if (is_file("include/$_GET[page].php")) {
                    include("include/$_GET[page].php");
                } elseif (is_file("include/tabriz/$_GET[page].php")) {
                    include("include/tabriz/$_GET[page].php");
                } else {
                    echo 'صفحه مورد نظر وجود ندارد.';
                }

            } else {
                include('include/home.php');
            }
            ?>

        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/tablesorter.js"></script>
<script src="js/docs.min.js"></script>
<script>
    $(document).ready(function () {
            $("table.tablesorter").tablesorter();
        }
    );
</script>
</body>
</html>
