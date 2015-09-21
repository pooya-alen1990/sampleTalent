<?php
/**
* Created by PhpStorm.
* User: pooya
* Date: 9/1/15
* Time: 18:47 PM
*/

require_once "../core/core.php";


if (isset($_POST["comment"])) {

    parse_str($_POST['comment'], $comment);

    if($comment["full_name"] == "" || $comment["email"] == "" || $comment["text"] == "") {
        echo COMMENT_FAILED;
    }else{
        $result = COMMENTS::comments_Insert($comment["full_name"],$comment["email"],$comment["text"],time(),0,$_SERVER["REMOTE_ADDR"],0,0,$comment["blog_id"],0);
        if($result){
            echo COMMENT_SUCCESS;
        }else{
            echo COMMENT_FAILED;
        }
    }
}

if (isset($_POST["sub_comment"])) {


    if($_POST["full_name"] == "" || $_POST["email"] == "" || $_POST["text"] == "") {
        echo COMMENT_FAILED;
    }else{
        $result = COMMENTS::comments_Insert($_POST["full_name"],$_POST["email"],$_POST["text"],time(),0,$_SERVER["REMOTE_ADDR"],0,0,$_POST["blog_id"],$_POST["comment_id"]);
        if($result){
            echo COMMENT_SUCCESS;
        }else{
            echo COMMENT_FAILED;
        }
    }

}
