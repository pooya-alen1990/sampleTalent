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


    $query = 'SELECT blogs.id,blogs.title,blogs.text,blogs.read_time, blogs.image, b_a.blog_id, b_a.audience_id, b_s.blog_id, b_s.subject_id, b_t.blog_id, b_t.type_id
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
    foreach ($blogs as $blog) {
        $output .= '<div class="col-sm-4 blog-content article-ver">
                        <div>
                            <a href="#" class="article-img">
                                <div class="article-info">
                                    <span class="article-view">1300 بازدید</span>
                                    <span class="article-time">'.$blog["read_time"].' دقیقه</span>
                                </div>
                                <img src="../view/images/article.png">
                                <div class="article-hover"></div>
                            </a>
                            <div class="add-fav">
                                <a href="#">
                                    <img src="../view/images/add-fav.png">
                                </a>
                            </div>
                            <div class="article-text">
                                <h3>'.$blog["title"].'</h3>
                                <p>'.$blog["text"].'</p>
                            </div>
                        </div>
                    </div>

        ';
    }

echo $output;

}