<?php
require_once "../core/core.php";

$blog_types = BLOG_TYPE::blog_type_SelectAll();
$blog_subjects = BLOG_SUBJECT::blog_subject_SelectAll();
$blog_audiences = BLOG_AUDIENCE::blog_audience_SelectAll();
$blog_type = "";
$blog_subject = "";
$blog_audience = "";


foreach ($blog_types as $value) {

    $blog_type .= "
            <a class='mediabox'>
                    <p class='icon-graduation-cap' for='typeAll'></p>
                    <p>
                           <input type='checkbox' class='re type' name='type-$value[id]' id='type-$value[id]' value='type-$value[id]'>
                           <label for='type-$value[id]'>$value[type_name]</label>
                    </p>
            </a>";
}

foreach ($blog_subjects as $value) {
    $blog_subject .= "
            <a class='mediabox'>
                    <p class='icon-graduation-cap' for='typeAll'></p>
                    <p>
                           <input type='checkbox' class='re subject' name='subject-$value[id]' id='subject-$value[id]' value='subject-$value[id]'>
                           <label for='subject-$value[id]'>$value[subject_name]</label>
                    </p>
            </a>";
}

foreach ($blog_audiences as $value) {
    $blog_audience .= "
            <a class='mediabox'>
                    <p class='icon-graduation-cap' for='typeAll'></p>
                    <p>
                           <input type='checkbox' class='re audience' name='audience-$value[id]' id='audience-$value[id]' value='audience-$value[id]'>
                           <label for='audience-$value[id]'>$value[audience_name]</label>
                    </p>
            </a>";
}

?>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>blog</title>
    <link rel="stylesheet" type="text/css" href="../view/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../view/css/blog.css">
    <link rel="stylesheet" type="text/css" href="../view/css/rayweb.css">
</head>
<body>
<header>
    <div class="logo">
        <a href="index.html" class="pull-left"><img src="../view/images/logo.png" class="img-responsive"></a>
        <div class="user hidden-xs">
            <a href="#" data-toggle="modal" data-target="#userLog">ورود کاربران</a>
            <a href="#" data-toggle="modal" data-target="#orgLog">ورود سازمان ها</a>
        </div>
    </div>
    <div class="head-box">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="head-menu collapse navbar-collapse " id="bs-example-navbar-collapse-1">
            <input type="search" class="col-md-5 hidden-xs hidden-sm" placeholder="شغل مورد نظر من">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="col-md-5 col-sm-7">
                <ul class="nav navbar-nav head-nav">
                    <li><a href="#"><img class="img-responsive" src="../view/images/home.png"></a> </li>
                    <li><a href="#"><img class="img-responsive" src="../view/images/profile.png"></a> </li>
                    <li><a href="#"><img class="img-responsive" src="../view/images/improve.png"></a> </li>
                    <li><a href="#"><img class="img-responsive" src="../view/images/improve.png"></a> </li>
                    <li><a href="#"><img class="img-responsive" src="../view/images/improve.png"></a> </li>
                    <li><a href="#"><img class="img-responsive" src="../view/images/improve.png"></a> </li>
                    <li><a href="#"><img class="img-responsive" src="../view/images/list.png"></a> </li>
                    <li><a href="#"></a> </li>
                </ul>
            </div><!-- /.navbar-collapse -->
            <div class="col-md-2 col-sm-5 expert"><a href="#">متخصص HR</a></div>
        </div>
    </div>
</header>
<div id="tabs" class="tabs">
    <nav>
        <ul>
            <li><a href="#section-1"><span>فیلتر بر اساس جنس محتوا</span><i class="icon-down-open-big"></i></a></li>
            <li><a href="#section-2"><span>فیلتر بر اساس موضوع</span><i class="icon-down-open-big"></i></a></li>
            <li><a href="#section-3"><span>فیلتر بر اساس نوع مخاطب</span><i class="icon-down-open-big"></i></a></li>
        </ul>
    </nav>
    <form id="content">
    <div class="content container">

        <section id="section-1">
            <a href="#" class="mediabox active">
                <p class="icon-graduation-cap" for="typeAll"></p>
                <p>
                    <input type="checkbox" class="re typeAll" id="typeAll" checked name="type-all" value="type-all">
                    <label for="typeAll">همه</label>
                </p>
            </a>
            <?php echo $blog_type; ?>
        </section>
        <section id="section-2">
            <a href="#" class="mediabox active">
                <p class="icon-graduation-cap"></p>
                <p>
                    <input type="checkbox" class="re subjectAll" id="subjectAll" checked name="subject-all" value="subject-all">
                    <label for="subjectAll">همه</label>
                </p>
            </a>
            <?php echo $blog_subject; ?>
        </section>
        <section id="section-3">
            <a href="#" class="mediabox active">
                <p class="icon-graduation-cap"></p>
                <p>
                    <input type="checkbox" class="re audienceAll" id="audienceAll" checked name="audience-all" value="audience-all">
                    <label for="audienceAll">همه</label>
                </p>
            </a>
            <?php echo $blog_audience; ?>
        </section>

    </div><!-- /content -->
    </form>
</div><!-- /tabs -->
<div class="container blog-part" >

<div id="output"></div>


<!--    <div class="col-md-8 col-xs-12 pull-left blog-content article-hor">-->
<!--        <div>-->
<!--            <a href="#" class="article-img">-->
<!--                <div class="article-info">-->
<!--                    <span class="article-view">1300 بازدید</span>-->
<!--                    <span class="article-time">7 دقیقه</span>-->
<!--                </div>-->
<!--                <img src="../view/images/article-hor.png">-->
<!--                <div class="article-hover"></div>-->
<!--            </a>-->
<!--            <div class="article-text">-->
<!--                <h3>5 روش برای خود آگاهی بیشتر</h3>-->
<!--                <p>ممکن است این پرسش در ذهن همه ما ایجاد شود که چگونه می توان خود آگاهی را پرورش و توسعه داد؟ بدون شک میزان بالای خودآگاهی هر فردی نشان شخصیت قوی او بوده و این توانایی .....</p>-->
<!--                <div class="add-fav">-->
<!--                    <a href="#">-->
<!--                        <img src="../view/images/add-fav.png">-->
<!--                    </a>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->

<!--    <div class="col-md-8 col-xs-12 pull-right blog-content article-hor">-->
<!--        <div>-->
<!--            <a href="#" class="article-img">-->
<!--                <div class="article-info">-->
<!--                    <span class="article-view">1300 بازدید</span>-->
<!--                    <span class="article-time">7 دقیقه</span>-->
<!--                </div>-->
<!--                <img src="../view/images/article-hor.png">-->
<!--                <div class="article-hover"></div>-->
<!--            </a>-->
<!--            <div class="article-text">-->
<!--                <h3>5 روش برای خود آگاهی بیشتر</h3>-->
<!--                <p>ممکن است این پرسش در ذهن همه ما ایجاد شود که چگونه می توان خود آگاهی را پرورش و توسعه داد؟ بدون شک میزان بالای خودآگاهی هر فردی نشان شخصیت قوی او بوده و این توانایی .....</p>-->
<!--                <div class="add-fav">-->
<!--                    <a href="#">-->
<!--                        <img src="../view/images/add-fav.png">-->
<!--                    </a>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
</div>
<div class="pie-chart">
    <img src="../view/images/easy-pie-chart.png" class="img-responsive">
</div>
<div class="clearfix"></div>
<footer>
    <div class="col-md-9 footer-nav">
        <div class="col-sm-2 pull-right">
            <h4>کاریابی</h4>
            <ul>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
            </ul>
        </div>
        <div class="col-sm-2 pull-right">
            <h4>کارفرمایان</h4>
            <ul>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
            </ul>
        </div>
        <div class="col-sm-2 pull-right">
            <h4>فرصت های توسعه</h4>
            <ul>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
            </ul>
        </div>
        <div class="col-sm-2 pull-right">
            <h4>محتوای آموزش</h4>
            <ul>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
            </ul>
        </div>
        <div class="col-sm-2 pull-right"><img src="../view/images/logo-white.png">
            <ul>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
                <li><a href="#"> -...</a></li>
            </ul>
        </div>
        <div class="col-sm-2 pull-right">
            <h4>همراهی ما</h4>
            <ul class="social">
                <li><a href="#"><i class="icon-twitter-squared"></i></a></li>
                <li><a href="#"><i class="icon-facebook-official"></i></a></li>
                <li><a href="#"><i class="icon-gplus-squared"></i></a></li>
                <li><a href="#"><i class="icon-linkedin-squared"></i></a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-3"></div>
</footer>



<div class="modal fade modal-blog" id="userLog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">بازیابی رمز عبور</h4>
            </div>
            <div class="modal-body">
                <div class="col-sm-6">


                </div>
                <div class="col-sm-6">
                    <input type="text" class="input" placeholder="ایمیل">
                    <input type="password" class="input" placeholder="کلمه عبور">
                    <button type="button" class="btn btn-primary btn-block">ورود</button>
                    <button type="button" class="btn btn-secondary btn-block">عضویت در تلنت یاب</button>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="modal-footer text-center">


            </div>
        </div>
    </div>
</div>
<div class="modal fade modal-blog" id="orgLog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">بازیابی رمز عبور</h4>
            </div>
            <div class="modal-body">
                <div class="col-sm-6">


                </div>
                <div class="col-sm-6">
                    <input type="text" class="input" placeholder="ایمیل">
                    <input type="text" class="input" placeholder="کد امنیتی">
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="modal-footer text-center">

                <button type="button" class="btn btn-primary">بازیابی رمز عبور</button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="../view/js/jquery.js"></script>
<script type="text/javascript" src="../view/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../view/js/cbpFWTabs.js"></script>
<script>
    new CBPFWTabs( document.getElementById( 'tabs' ) );
</script>

<!--<form method="get">-->
<!---->
<!--    all : <input type="checkbox" class="re typeAll" id="typeAll" checked name="type-all" value="type-all"><label for="typeAll" style="width: 100px; height: 100px; background-color: brown; display: inline-block"></label><br>--><?php //echo $blog_type; ?>
<!--    all : <input type="checkbox" class="re subjectAll" id="subjectAll" checked name="subject-all" value="subject-all"><label for="subjectAll" style="width: 100px; height: 100px; background-color: brown; display: inline-block"></label><br>--><?php //echo $blog_subject; ?>
<!--    all : <input type="checkbox" class="re audienceAll" id="audienceAll" checked name="audience-all" value="audience-all"><label for="audienceAll" style="width: 100px; height: 100px; background-color: brown; display: inline-block"></label><br>--><?php //echo $blog_audience; ?>
<!---->
<!--</form>-->

<script>

    $(document).ready(function () {



        $.post('ajax_blogs.php', {
            valuesTest: $('form#content').serialize()
        }, function (response) {
            $("#output").html(response);
            //console.log(response);

        });

        $('.typeAll').change(function () {
            $('.typeAll').prop('checked', true);
            $('.type').prop('checked', false);
            $('.type').parents("a").removeClass("active");

        });
        $('.subjectAll').change(function () {
            $('.subjectAll').prop('checked', true);
            $('.subject').prop('checked', false);
            $('.subject').parents("a").removeClass("active");

        });
        $('.audienceAll').change(function () {
            $('.audienceAll').prop('checked', true);
            $('.audience').prop('checked', false);
            $('.audience').parents("a").removeClass("active");

        });

        $('.re').change(function () {

            if($(this).is(":checked")){
                $(this).parents("a").addClass("active");
            }else{
                $(this).parents("a").removeClass("active");
            }

            if($(".type").is(":checked")){
                $('.typeAll').prop('checked', false);
                $('.typeAll').parents("a").removeClass("active");
            }
            if($(".subject").is(":checked")){
                $('.subjectAll').prop('checked', false);
                $('.subjectAll').parents("a").removeClass("active");
            }
            if($(".audience").is(":checked")){
                $('.audienceAll').prop('checked', false);
                $('.audienceAll').parents("a").removeClass("active");
            }
            $.post('ajax_blogs.php', {

                valuesTest: $('form#content').serialize()

            }, function (response) {
                $("#output").html(response);
                console.log(response);
            });
        })

    });

</script>
</body>
</html>