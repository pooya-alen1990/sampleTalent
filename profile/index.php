<?php
    require_once "../core/core.php";
    $_SESSION["MM_USER_ID"] = '1';
    $user_id = $_SESSION["MM_USER_ID"];
?>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>profile</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/master.css">
    <link rel="stylesheet" type="text/css" href="css/rayweb.css">
    <link rel="stylesheet" type="text/css" href="css/timeline.css">
    <link rel="stylesheet" type="text/css" href="css/croppic.css">
</head>
<body>
<header>
    <div class="col-sm-10 col-sm-offset-1 top-header">
        <div class="col-sm-6 text-left">
            <img src="images/logo.png" width="25%">
        </div>
        <div class="col-sm-6">
            <ul class="nav-top">
                <li><a href="#"><i class="icon-bell"></i></a></li>
                <li><a href="#"><i class="icon-gift"></i></a></li>
                <li><a href="#">پروفایل من</a></li>
                <li><a href="#">خروج</a></li>
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="nav-color">

    </div>
    <div class="search-nav">
        <div class="col-sm-10 col-sm-offset-1">
            <div class="col-sm-6 text-left">
                <div>
                    <span><i class="icon-camera"></i></span><input type="text" class="search">
                </div>
            </div>
            <div class="col-sm-6">
                <ul class="nav-icons">
                    <li><a><i class="icon-home"></i></a></li>
                    <li><a><i class="icon-home"></i></a></li>
                    <li><a><i class="icon-home"></i></a></li>
                    <li><a><i class="icon-home"></i></a></li>
                    <li><a><i class="icon-home"></i></a></li>
                    <li><a><i class="icon-home"></i></a></li>
                    <li><a><i class="icon-home"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>

</header>
<!-- <div class="image">
    <img src="images/backgrund.jpg" class="img-responsive">
</div> -->
<div class="left-menu left-menu-hidden">
    <a href="#"><i class="icon-up-open-big"></i> <span style="width:20px;">بالا</span></a>
    <a href="#"><i class="icon-edit"></i> <span style="width:20px;">ایجاد رزومه</span></a>
    <a href="#"><i class="icon-cancel"></i> <span style="width:20px;">نتایج ارزیابی</span></a>
    <a href="#"><i class="icon-home"></i> <span style="width:20px;">برنامه توسعه</span></a>
    <a href="#"><i class="icon-clock"></i> <span style="width:20px;">دشبورد فرصت ها</span></a>
    <a href="#"><i class="icon-down-open-big"></i> <span style="width:20px;">پایین</span></a>
</div>



<?php include("include/resume.php"); ?>
<?php include("include/development_program.php"); ?>
<?php include("include/dashboard.php"); ?>




<!--<script src=" https://code.jquery.com/jquery-2.1.3.min.js"></script>-->
 <script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/modernize.js"></script>
<script type="text/javascript" src="js/carbonads.js" id="_carbonads_js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/croppic.js"></script>
<script type="text/javascript" src="js/edit.js"></script>
<script type="text/javascript" src="js/cropic_custom.js"></script>
<script>
    $(document).ready(function(){

        $("a.add").click(function(){
            $(this).parents(".add-tip1").children("form").slideToggle();
            if($(this).children("i").hasClass("icon-plus")){
                $(this).children("i").removeClass("icon-plus")
                $(this).children("i").addClass("icon-minus")
            }else {
                $(this).children("i").addClass("icon-plus")
                $(this).children("i").removeClass("icon-minus")
            }
        })

            $('.edit_popover').popover({
                html : true,
                content: function() {
                    return $(this).parents().children(".edit-content").html();
                }
            });

        $(window).scroll(function(){
            if($(window).scrollTop() > 450){
                $(".left-menu").removeClass("left-menu-hidden");
            }else{
                $(".left-menu").addClass("left-menu-hidden");
            }
        })

    });
</script>
</body>
</html>