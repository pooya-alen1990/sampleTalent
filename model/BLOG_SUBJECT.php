<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class BLOG_SUBJECT
{
       
    public static function blog_subject_SelectAll()
    {
        $sql = 'CALL `sp_blog_subject_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function blog_subject_SelectRow($id)
    {
        $sql = 'CALL `sp_blog_subject_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function blog_subject_DeleteRow($id)
    {
        $sql = 'CALL `sp_blog_subject_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function blog_subject_UpdateRow($id, $subject_name)
    {
        $sql = 'CALL `sp_blog_subject_UpdateRow`(:id, :subject_name)';
        $params = array (':id' => $id, ':subject_name' => $subject_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function blog_subject_Insert($subject_name)
    {
        $sql = 'CALL `sp_blog_subject_Insert`(:subject_name)';
        $params = array (':subject_name' => $subject_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>