<?php

/**
 * Created by PhpStorm.
 * User: pooya
 * Date: 9/16/15
 * Time: 1:16 PM
 */
class G {

    /**
     * this method is used for create avatar from full name ;)
     */
    public static function convertToAvatar($full_name){
        $avatar_name = '';
        $avatar_explode = explode(" ",$full_name);
        for($i = 0; $i < 2 ; $i++){
            @$avatar_explode[$i] = mb_substr($avatar_explode[$i],0,1, 'utf-8');
            $avatar_explode[$i] = strtoupper($avatar_explode[$i]);
            $avatar_name .= $avatar_explode[$i]." ";
        }
        return $avatar_name;
    }

    public static function randomColor($id){

        $colors = array( "#a8c53d","#96db4d","#ffd058","#7ca9ab","#daf4b8","#26e2aa","#9c9f67","#5ce296" ,"#dc945a","#3bfae5");
        return $colors[$id % 11];
    }

    public static function alternative($field,$text){
        $field = trim($field);
        if(!empty($field)){
            return $field;
        }else{
            return $text;
        }
    }
}