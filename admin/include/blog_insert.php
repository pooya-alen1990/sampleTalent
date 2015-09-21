<?php


/**
 * fetching form info
 */

$subject_list = "";
$subjects = BLOG_SUBJECT::blog_subject_SelectAll();
foreach($subjects as $value){
    $subject_list .= "<label>$value[subject_name]<input class='pull-right' type='checkbox' id='subject-$value[id]' name='subjects[]' value='subject-$value[id]'></label> ";
}

$audience_list = "";
$audiences = BLOG_AUDIENCE::blog_audience_SelectAll();
foreach($audiences as $value){
    $audience_list .= "<label>$value[audience_name]<input class='pull-right' type='checkbox' id='audience-$value[id]' name='audiences[]' value='audience-$value[id]'></label> ";
}

$type_list = "";
$types = BLOG_TYPE::blog_type_SelectAll();
foreach($types as $value){
    $type_list .= "<label>$value[type_name]<input class='pull-right' type='checkbox' id='type-$value[id]' name='types[]' value='type-$value[id]'></label> ";

}



$title_input = "";
$title_en_input = "";
$image_input = "";
$text_input = "";
$source_input = "";
$video_input = "";
$description_input = "";
$keywords_input = "";
$read_time_input = "";
$result = "";

$submit = "insert";
$page_title = "افزودن بلاگ";
$display = "style='display:block'";



if(isset($_GET["id"])){

    $update_blog = BLOGS::blogs_SelectRow($_GET["id"]);
    $keywords = DatabaseHandler::GetAll("SELECT * FROM blog_keywords WHERE blog_id = '$_GET[id]' ; ");

    foreach($keywords as $keyword){
        $keywords_input .= $keyword["keyword"]. ' , ';
    }

    $title_input = $update_blog['title'];
    $title_en_input = $update_blog['title_en'];
    $image_input = $update_blog["image"];
    $text_input = $update_blog['text'];
    $source_input = $update_blog['source'];
    $video_input = $update_blog['video'];
    $description_input = $update_blog['description'];
    $read_time_input = $update_blog['read_time'];

    $submit = "update";
    $page_title = "ویرایش بلاگ";
    $display = "style='display:none'";
}






/**
 * updating form
 */
if(isset($_POST['update'])){

    $title = $_POST['title'];
    $title_en = $_POST['title_en'];
    $image = $_POST["image"];
    $text = $_POST['text'];
    $source = $_POST['source'];
    $video = $_POST['video'];
    $description = $_POST['description'];
    $keywords = $_POST['keywords'];
    $read_time = $_POST['read_time'];
    $admin_id = $update_blog['admin_id'];
    $hit_count = $update_blog['hit_count'];
    $add_time = $update_blog['add_time'];
    $modify_time = time();
    $activate = 0;


    $update_blog = BLOGS::blogs_UpdateRow($_GET["id"],$title,$title_en,$image,$text,$source,$video,$description,$read_time,$hit_count,$admin_id,$add_time,$modify_time,$activate);

    if($update_blog){
        $blog_id = DatabaseHandler::GetOne("SELECT `id` FROM blogs WHERE `add_time` = '$add_time' ; ");


        $keywords = explode(",", $keywords);
        foreach ($keywords as $keyword) {
            $keyword = trim($keyword);
            BLOG_KEYWORDS::blog_keywords_Insert($blog_id,$keyword);
        }


//        if(isset($_POST['types'])){
//            $types = $_POST['types'];
//            foreach ($types as $type) {
//                $type = explode("-", $type);
//                B_T::b_t_Insert($blog_id, $type['1']);
//            }
//        }
//
//        if(isset($_POST['subjects'])) {
//            $subjects = $_POST['subjects'];
//            foreach ($subjects as $subject) {
//                $subject = explode("-", $subject);
//                B_S::b_s_Insert($blog_id, $subject['1']);
//            }
//        }
//        if(isset($_POST['audiences'])) {
//            $audiences = $_POST['audiences'];
//            foreach ($audiences as $audience) {
//                $audience = explode("-", $audience);
//                B_A::b_a_Insert($blog_id, $audience['1']);
//            }
//        }
        $result = '<div class="col-lg-12 col-md-6">
                        <div class="alert alert-success alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            ویرایش / افزودن بلاگ با موفقیت انجام شد. بلاگ مورد نظر غیر فعال بوده و برای فعال شدن از <a href="index.php?page=blog_list">لیست بلاگ ها</a> اقدام نمایید.
                            <br>
                            همچنین شما می توانید از <a href="../blog/detail.php?title='.$title_en.'">این لینک</a> پیش نمایش بلاگ وارد شده را ببینید.
                        </div>
                    </div>';
    }

}








if(isset($_GET["id"])){

    $update_blog = BLOGS::blogs_SelectRow($_GET["id"]);
    $keywords = DatabaseHandler::GetAll("SELECT * FROM blog_keywords WHERE blog_id = '$_GET[id]' ; ");

    foreach($keywords as $keyword){
        $keywords_input .= $keyword["keyword"]. ' , ';
    }

    $title_input = $update_blog['title'];
    $title_en_input = $update_blog['title_en'];
    $image_input = $update_blog["image"];
    $text_input = $update_blog['text'];
    $source_input = $update_blog['source'];
    $video_input = $update_blog['video'];
    $description_input = $update_blog['description'];
    $read_time_input = $update_blog['read_time'];

    $submit = "update";
    $page_title = "ویرایش بلاگ";
}






/**
 * submiting form
 */
if(isset($_POST['insert'])){

    $title = $_POST['title'];
    $title_en = $_POST['title_en'];
    $image = $_POST["image"];
    $text = $_POST['text'];
    $source = $_POST['source'];
    $video = $_POST['video'];
    $description = $_POST['description'];
    $keywords = $_POST['keywords'];
    $read_time = $_POST['read_time'];
    $admin_id = $_SESSION['MM_admin_id'];
    $hit_count = 0;
    $add_time = time();
    $modify_time = 0;
    $activate = 0;


    $insert_blog = BLOGS::blogs_Insert($title,$title_en,$image,$text,$source,$video,$description,$read_time,$hit_count,$admin_id,$add_time,$modify_time,$activate);

    if($insert_blog){
        $blog_id = DatabaseHandler::GetOne("SELECT `id` FROM blogs WHERE `add_time` = '$add_time' ; ");


        $keywords = explode(",", $keywords);
        foreach ($keywords as $keyword) {
            $keyword = trim($keyword);
            BLOG_KEYWORDS::blog_keywords_Insert($blog_id,$keyword);
        }


        if(isset($_POST['types'])){
            $types = $_POST['types'];
            foreach ($types as $type) {
                $type = explode("-", $type);
                B_T::b_t_Insert($blog_id, $type['1']);
            }
        }

        if(isset($_POST['subjects'])) {
            $subjects = $_POST['subjects'];
            foreach ($subjects as $subject) {
                $subject = explode("-", $subject);
                B_S::b_s_Insert($blog_id, $subject['1']);
            }
        }
        if(isset($_POST['audiences'])) {
            $audiences = $_POST['audiences'];
            foreach ($audiences as $audience) {
                $audience = explode("-", $audience);
                B_A::b_a_Insert($blog_id, $audience['1']);
            }
        }
        $result = '<div class="col-lg-12 col-md-6">
                        <div class="alert alert-success alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            ویرایش / افزودن بلاگ با موفقیت انجام شد. بلاگ مورد نظر غیر فعال بوده و برای فعال شدن از <a href="index.php?page=blog_list">لیست بلاگ ها</a> اقدام نمایید.
                            <br>
                            همچنین شما می توانید از <a href="../blog/detail.php?title='.$title_en.'">این لینک</a> پیش نمایش بلاگ وارد شده را ببینید.
                        </div>
                    </div>';
    }

}
?>
<script src="../vendor/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
     function openFileBrowser(id){
          fileBrowserlink = "/talentyab/vendor/pdw_file_browser/index.php?editor=standalone&returnID=" + id;
          window.open(fileBrowserlink,'pdwfilebrowser', 'width=1000,height=650,scrollbars=no,toolbar=no,location=no');
     }
</script>
<h3 class="sub-header">
<?php echo $page_title; ?>
</h3>
<?php echo $result; ?>
﻿<script src="js/jquery.js"></script>

<form method="post" role="form" class="form-horizontal pull-right" dir="rtl">

    <div class="form-group">
        <div class="col-md-10">
            <input id="title" class="col-md-3 pull-right" type="text" name="title" value="<?php echo $title_input; ?>" tabindex="1" autofocus require></div>
        <label class="control-label col-md-2" for="title">
            عنوان
        </label>
    </div>

    <div class="form-group">
        <div class="col-md-10">
            <input id="title_en" class="col-md-3 pull-right" type="text" name="title_en" value="<?php echo $title_en_input; ?>" tabindex="1" require ></div>
        <label class="control-label col-md-2" for="title_en">
          عنوان انگلیسی یونیک
        </label>
    </div>

    <div class="form-group">

        <div class="col-md-10">
        	<input type="text" name="image" class="col-md-3 pull-right input-file"  value="<?php echo $image_input; ?>" id="filepath" onclick="openFileBrowser('filepath');" />
        </div>
        <label class="control-label col-md-2" for="image">
         تصویر ابتدایی
        </label>
    </div>

    <div class="form-group">

        <div class="col-md-10">
            <input id="title" class="col-md-3 pull-right" type="text" name="admin_id" disabled  value="<?php echo "$_SESSION[MM_admin_first_name] $_SESSION[MM_admin_last_name]"; ?>"></div>
        <label class="control-label col-md-2" for="admin_id">
            نویسنده
        </label>
    </div>

    <div class="form-group">

        <div class="col-md-10">
            <input class="col-md-3 pull-right" type="text"  value="<?php echo $read_time_input; ?>" name="read_time" tabindex="2" require>
        </div>
        <label class="control-label col-md-2" for="read_time">
زمان تخمینی مطالعه
        </label>
    </div>

    <div class="form-group">

        <div class="col-md-10">
            <textarea class="col-md-3 pull-right"  value="<?php echo $video_input; ?>" name="video"></textarea>
        </div>
        <label class="control-label col-md-2" for="video">
لینک ویدیو (اختیاری)
        </label>
    </div>

    <div class="form-group">
        <div class="col-md-10">
            <textarea require name="text" id="editor1" rows="10" cols="80"><?php echo $text_input; ?></textarea>
        </div>
        <label class="control-label col-md-2" for="text">
          متن بلاگ
        </label>
    </div>

    <div class="form-group">

        <div class="col-md-10">
            <input class="col-md-3 pull-right"  value="<?php echo $source_input; ?>" type="text" name="source">
        </div>
        <label class="control-label col-md-2" for="source">
    منبع
        </label>
    </div>

    <div class="form-group" <?php echo $display; ?>>

        <div class="col-md-10">
            <?php echo $subject_list; ?>
        </div>
        <label class="control-label col-md-2" for="subject">
تگ های موضوعی
        </label>
    </div>


    <div class="form-group" <?php echo $display; ?>>

        <div class="col-md-10">
            <?php echo $audience_list; ?>
        </div>
        <label class="control-label col-md-2" for="audience">
تگ های مخاطب
        </label>
    </div>


    <div class="form-group" <?php echo $display; ?> >

        <div class="col-md-10">
            <?php echo $type_list; ?>
        </div>
        <label class="control-label col-md-2" for="type">
تگ های نوع مقاله
        </label>
    </div>


    <div class="form-group">
        <div class="col-md-10">
            <textarea class="col-md-8 pull-right" name="description" ><?php echo $description_input; ?></textarea>
        </div>
        <label class="control-label col-md-2" for="title">
خلاصه
(description)
        </label>
    </div>

    <div class="form-group">
        <div class="col-md-10">
            <textarea class="col-md-8 pull-right" name="keywords" ><?php echo $keywords_input; ?></textarea>
        </div>
        <label class="control-label col-md-2" for="title">
کلمات کلیدی
            (keywords seperate by comma ",")
        </label>
    </div>



<div class="col-md-2">
    <input type="reset" value="ویرایش" class="form-control btn btn-warning" tabindex="16"><br><br>
</div>
<div class="col-md-2">
    <input type="submit" name="<?php echo $submit; ?>" class="form-control btn btn-primary" value="ثبت" tabindex="17">
</div>
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