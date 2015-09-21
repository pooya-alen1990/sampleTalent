<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class COMMENTS
{
       
    public static function comments_SelectAll()
    {
        $sql = 'CALL `sp_comments_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function comments_SelectRow($id)
    {
        $sql = 'CALL `sp_comments_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function comments_DeleteRow($id)
    {
        $sql = 'CALL `sp_comments_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function comments_UpdateRow($id, $full_name, $mail, $text, $add_time, $activate, $ip, $user_id, $admin_id, $blog_id, $comment_id)
    {
        $sql = 'CALL `sp_comments_UpdateRow`(:id, :full_name, :mail, :text, :add_time, :activate, :ip, :user_id, :admin_id, :blog_id, :comment_id)';
        $params = array (':id' => $id, ':full_name' => $full_name, ':mail' => $mail, ':text' => $text, ':add_time' => $add_time, ':activate' => $activate, ':ip' => $ip, ':user_id' => $user_id, ':admin_id' => $admin_id, ':blog_id' => $blog_id, ':comment_id' => $comment_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function comments_Insert($full_name, $mail, $text, $add_time, $activate, $ip, $user_id, $admin_id, $blog_id, $comment_id)
    {
        $sql = 'CALL `sp_comments_Insert`(:full_name, :mail, :text, :add_time, :activate, :ip, :user_id, :admin_id, :blog_id, :comment_id)';
        $params = array (':full_name' => $full_name, ':mail' => $mail, ':text' => $text, ':add_time' => $add_time, ':activate' => $activate, ':ip' => $ip, ':user_id' => $user_id, ':admin_id' => $admin_id, ':blog_id' => $blog_id, ':comment_id' => $comment_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>