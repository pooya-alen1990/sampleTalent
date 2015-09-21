<?php
/**
 * Created by PhpStorm.
 * User: pooya
 * Date: 9/7/15
 * Time: 5:20 PM
 */

require_once "../core/core.php";

if(isset($_GET["title"])){

    $blog = DatabaseHandler::GetRow("SELECT * FROM `blogs` WHERE `title_en` = '$_GET[title]' ; ");
    if(!isset($blog["id"])) { die("پست مورد نظر وجود ندارد."); }

    $page_title = "Talentyab | $blog[title_en]";

    $keywords = "";
    $keywords_array = DatabaseHandler::GetAll("SELECT * FROM `blog_keywords` WHERE `blog_id` = '$blog[id]' ; ");
    foreach($keywords_array as $keyword){
        $keywords .= $keyword["keyword"]." , ";
    }

    $author = ADMINS::admins_SelectRow($blog["admin_id"]);
    $author_name = $author["first_name"]." ".$author["last_name"];

    $comments = DatabaseHandler::GetAll("SELECT * FROM `comments` WHERE `activate` = '1' AND `blog_id` = '$blog[id]' AND `comment_id` = '0' ;  ");
    $comments_echo = '';

    foreach($comments as $comment) {
        $avatar = "";
        if($comment["admin_id"] == "1"){
            $avatar = '<a class="profile-pic" href="#"><img src="../view/images/logo_thumb.png"></a>';
        }else{
            $avatar = '<a class="profile-pic avatar-letter" style="background-color:'.G::randomColor($comment["id"]).'; " href="#">'.G::convertToAvatar($comment["full_name"]).'</a>';
        }

        $comments_echo .= '
                    <div class="comment">
                        <div class="pull-left reply-btn" data-id="'.$comment["id"].'"><a href="#">پاسخ</a></div>
                        '.$avatar.'
                        <a class="user-name" href="#">'.$comment["full_name"].'</a>
                        <div class="comment-text">
                            <p>'.$comment["text"].'</p>
                     </div>';

        $comments_echo .= '     <div class="add-comment reply-section-'.$comment["id"].' all-reply" style="display: none;">
                                        <form method="post" id="comment" class="sub-comment">
                                            <div class="form-inline">
                                                <div class="col-sm-5 col-xs-12 pull-right">
                                                    <input type="text" name="full_name" id="full_name_'.$comment["id"].'" placeholder="نام">
                                                </div>
                                                <div class="col-sm-7 col-xs-12 pull-right">
                                                    <input type="email" name="email" id="email_'.$comment["id"].'" placeholder="ایمیل" >
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="answer">
                                                <div class="write-comment">
                                                    <input type="hidden" name="blog_id" id="blog_id_'.$comment["id"].'" value="'.$blog["id"].'">
                                                    <input type="hidden" name="comment_id" id="comment_id_'.$comment["id"].'" value="'.$comment["id"].'">
                                                    <textarea rows="3" name="text" id="text_'.$comment["id"].'"></textarea>
                                                    <div class="form-submit">
                                                        <input type="submit" data-id="'.$comment["id"].'" class="sub_submit_comment btn" value="ارسال">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                 </div>
                                 <div class="clearfix"></div>
                                 <div id="output-'.$comment["id"].'"></div>
                                 <div class="clearfix"></div>
                                 ';

        $sub_comments = DatabaseHandler::GetAll("SELECT * FROM `comments` WHERE `activate` = '1' AND `comment_id` = '$comment[id]' ;  ");

        foreach($sub_comments as $sub_comment) {
            $avatar = "";
            if($comment["admin_id"] == "1"){
                $avatar = '<a class="profile-pic" href="#"><img src="../view/images/logo_thumb.png"></a>';
            }else{
                $avatar = '<a class="profile-pic avatar-letter" style="background-color:'.G::randomColor($sub_comment["id"]).'; " href="#">'.G::convertToAvatar($sub_comment["full_name"]).'</a>';
            }


            $comments_echo .= '
                        <div class="sub-comment">
                            '.$avatar.'
                            <a class="user-name" href="#">'.$sub_comment["full_name"].'</a>
                            <div class="comment-text">
                                <p>'.$sub_comment["text"].'</p>
                            </div>
                        </div>';
        }

        $comments_echo .= '</div>';
    }


}else{
    die("صفحه مورد نظر وجود ندارد.");
}

?>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
    <title><?php echo $page_title; ?></title>
    <meta name="Keywords" content="<?php echo $keywords; ?>" >
    <meta name="Description" content="<?php echo $blog["description"]; ?>" >
    <link rel="stylesheet" type="text/css" href="../view/css/bootstrap.min.css" >
    <link rel="stylesheet" type="text/css" href="../view/css/blogIn.css" >
    <link rel="stylesheet" type="text/css" href="../view/css/rayweb.css" >
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
            <div class="col-md-7">
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
            
        </div>
    </div>
</header>
<div class="clearfix"></div>

<section class="main-blog">
    <div class="blog-side col-md-4">
        <div class="author">
            <h4>درباره نویسنده</h4>
            <div class="author-profile">
                <a href="#" class="author-pic"><img src="../view/images/author.png"></a>
                <a href="#" class="author-name purple"><?php echo $author_name; ?></a>
            </div>
            <div class="about-author">
                <p class="text-justify">
                    <?php echo $author["about"]; ?>
                </p>

            </div>
        </div>
        <div class="related-subj purple">
            <h4 class="text-center">مطالب مرتبط</h4>
        </div>
    </div>
    <div class="blog-part col-md-8">
        <div class="blog-post">
            <div class="blog-title">
                <h2><?php echo $blog["title"]; ?></h2>
            </div>
            <div class="blog-context">
                <img src="<?php echo $blog["image"]; ?>" class="img-responsive">
                <?php echo $blog["text"]; ?>
                <div class="text-center">
                    <a href="#" class="btn-favorite">افزودن این مقاله به علاقه مندی ها</a>
                </div>
                <div class="comment-part">
                    <h4 class="purple">دیدگاه ها</h4>


                    <?php echo $comments_echo;   ?>


                    <h4 class="purple">نظر شما</h4>
                    <div class="add-comment">
                        <form method="post" id="comment">
                            <div class="form-inline">
                                <div class="col-sm-5 col-xs-12 pull-right">
                                    <input type="text" name="full_name" placeholder="نام">
                                </div>
                                <div class="col-sm-7 col-xs-12 pull-right">
                                    <input type="email" name="email" placeholder="ایمیل" >
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="answer">
                                <div class="write-comment">
                                    <input type="hidden" name="blog_id" value="<?php echo $blog["id"]; ?>">
                                    <textarea rows="3" name="text"></textarea>
                                    <div class="form-submit">
                                        <input type="submit" id="submit_comment" class="btn" value="ارسال">
                                    </div>
                                    <div id="output"></div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

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
<script>

    $(document).ready(function () {

        $("#submit_comment").click(function(e){
            e.preventDefault();
            $.post('ajax_comment.php', {
                comment: $('form#comment').serialize()
            }, function (response) {
                $("#output").html(response);
                //console.log(response);

            });
        });

        $(".sub_submit_comment").click(function(e){
            e.preventDefault();
            id = $(this).attr("data-id");
            $.post('ajax_comment.php', {

                sub_comment: 1,
                full_name: $("#full_name_"+id+"").val(),
                text: $("#text_"+id+"").val(),
                email: $("#email_"+id+"").val(),
                blog_id: $("#blog_id_"+id+"").val(),
                comment_id: $("#comment_id_"+id+"").val()

            }, function (response) {
                $("#output-"+id+"").slideDown().html(response);
                $(".reply-section-"+id+"").slideUp();
                //console.log(response);

            });
        });

        $(".reply-btn").click(function(e){
            e.preventDefault();
            id = $(this).attr("data-id");


            $(".all-reply").slideUp();
            $(".all-reply").removeClass("slideActive");
            if($(".reply-btn").hasClass("slideActive")){
                $(".reply-section-"+id+"").slideUp();
                $(".reply-btn").removeClass("slideActive");
            }else{
                $(".reply-section-"+id+"").slideDown();
                $(".reply-btn").addClass("slideActive");
            }



        });




    });

</script>
</body>
</html>