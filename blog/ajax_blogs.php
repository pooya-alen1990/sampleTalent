<?php
/**
 * Created by PhpStorm.
 * User: pooya
 * Date: 9/1/15
 * Time: 8:47 PM
 */

require_once "../core/core.php";


if (isset($_POST["valuesTest"])) {

    parse_str($_POST['valuesTest'], $output);

    $values = array_values($output);

    $category = "";

    $type_statement = "";
    $subject_statement = "";
    $audience_statement = "";

    $type_statement_final = "";
    $subject_statement_final = "";
    $audience_statement_final = "";

    foreach ($values as $value) {
        $test = explode("-", $value);

        $category = $test["0"];
        if($category == "type"){
            $type_statement .= $test["1"] . ",";
        }
        if($category == "subject"){
            $subject_statement .= $test["1"] . ",";
        }
        if($category == "audience"){
            $audience_statement .= $test["1"] . ",";
        }



    }


    $type_statement = substr($type_statement, 0, -1);
    if (!empty($type_statement)) {
        $type_statement = "AND b_t.type_id IN ( $type_statement )";
    }

    if (strpos($type_statement, 'all') === false) {
        $type_statement_final = $type_statement;
    }
    //
    $subject_statement = substr($subject_statement, 0, -1);
    if (!empty($subject_statement)) {
        $subject_statement = "AND b_s.subject_id IN ( $subject_statement )";
    }

    if (strpos($subject_statement, 'all') === false) {
        $subject_statement_final = $subject_statement;
    }
    //
    $audience_statement = substr($audience_statement, 0, -1);
    if (!empty($audience_statement)) {
        $audience_statement = "AND b_a.audience_id IN ( $audience_statement )";
    }

    if (strpos($audience_statement, 'all') === false) {
        $audience_statement_final = $audience_statement;
    }


    $query = 'SELECT blogs.id,blogs.title,blogs.video,blogs.add_time,blogs.source,blogs.title_en,blogs.hit_count,blogs.description,blogs.read_time, blogs.image, b_a.blog_id, b_a.audience_id, b_s.blog_id, b_s.subject_id, b_t.blog_id, b_t.type_id
                    FROM blogs
                    INNER JOIN b_a ON blogs.id = b_a.blog_id
                    INNER JOIN b_s ON blogs.id = b_s.blog_id
                    INNER JOIN b_t ON blogs.id = b_t.blog_id
                    WHERE 1=1
                    ' . $type_statement_final . '
                    ' . $subject_statement_final . '
                    ' . $audience_statement_final . '
                    GROUP BY (blogs.id)';

    $blogs = DatabaseHandler::GetAll($query);
    $output = "";

    $clearfix = 1;
    $clearfixOutput = '';
    foreach ($blogs as $blog) {
        if ($clearfix%3 == 0) {
            # code...
            $clearfixOutput = "<div class='clearfix'></div>";
        }else{
            $clearfixOutput = "";
        }
        $clearfix ++;
        $blog["description"] = mb_substr($blog["description"], 0 , 170 , 'UTF-8')." ... ";
        $blog["add_time"] = jdate("d/m/Y",$blog["add_time"]);
        if($blog["source"] != ""){
            $blog["source"] = "منبع : ".$blog["source"];
        }

        $href = 'href="detail.php?title='.$blog["title_en"].'" target="_blank"';

        $video = "";
        if($blog["video"] != ""){
            $video = $blog["video"];

            $output .= '<!-- Modal -->
                            <div class="modal fade" id="myModal'.$blog["title_en"].'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">'.$blog["title"].'</h4>
                                  </div>
                                  <div class="modal-body">
                                    '.$video.'
                                    <br>
                                    '.$blog["description"].'
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">بستن</button>
                                  </div>
                                </div>
                              </div>
                            </div>';

            $href = 'data-toggle="modal" data-target="#myModal'.$blog["title_en"].'" href="#"';

        }
        

        $output .= '<div class="col-sm-4 blog-content article-ver">
                        <div>
                            <div '.$href.'  class="article-img">
                                <div class="article-info">
                                    <span class="article-view">
                                    '.$blog["hit_count"].' بازدید
                                    </span>
                                    <span class="article-time">'.$blog["read_time"].' دقیقه <i class="icon-clock"></i></span>
                                </div>
                                <img src="'.$blog["image"].'" height="200">
                                <div class="article-hover">
                                    <div class="col-sm-6 blog-social">
                                        <ul>
                                            <li><a href="#"><i class="icon-facebook-official"></i></a></li>
                                            <li><a href="#"><i class="icon-twitter-squared"></i></a></li>
                                            <li><a href="#"><i class="icon-gplus-squared"></i></a></li>
                                            <li><a href="#"><i class="icon-linkedin-squared"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-6 blog-info">
                                        <img src="../view/images/logo-white.png" class="img-responsive">
                                        <p>'.$blog["add_time"].'</p>
                                        <p>'.$blog["source"].'</p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="review"><p class="text-center" dir="ltr">+'.$blog["hit_count"].'</p></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="add-fav">
                                <a href="#">
                                    <img src="../view/images/add-fav.png">
                                    <span>اضافه به علاقه مندی ها</span>
                                </a>
                            </div>
                            <div class="article-text">
                                <a '.$href.' ><h3>'.$blog["title"].'</h3></a>
                                <p>'.$blog["description"].'</p>
                            </div>
                        </div>
                    </div>
                    '.$clearfixOutput.'
        ';
    }

echo $output;

}