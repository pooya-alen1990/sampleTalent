<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class BLOGS
{
       
    public static function blogs_SelectAll()
    {
        $sql = 'CALL `sp_blogs_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function blogs_SelectRow($id)
    {
        $sql = 'CALL `sp_blogs_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function blogs_DeleteRow($id)
    {
        $sql = 'CALL `sp_blogs_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function blogs_UpdateRow($id, $title, $image, $text, $read_time, $hit_count, $author_id, $add_time, $modify_time, $activate)
    {
        $sql = 'CALL `sp_blogs_UpdateRow`(:id, :title, :image, :text, :read_time, :hit_count, :author_id, :add_time, :modify_time, :activate)';
        $params = array (':id' => $id, ':title' => $title, ':image' => $image, ':text' => $text, ':read_time' => $read_time, ':hit_count' => $hit_count, ':author_id' => $author_id, ':add_time' => $add_time, ':modify_time' => $modify_time, ':activate' => $activate);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function blogs_Insert($title, $image, $text, $read_time, $hit_count, $author_id, $add_time, $modify_time, $activate)
    {
        $sql = 'CALL `sp_blogs_Insert`(:title, :image, :text, :read_time, :hit_count, :author_id, :add_time, :modify_time, :activate)';
        $params = array (':title' => $title, ':image' => $image, ':text' => $text, ':read_time' => $read_time, ':hit_count' => $hit_count, ':author_id' => $author_id, ':add_time' => $add_time, ':modify_time' => $modify_time, ':activate' => $activate);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>