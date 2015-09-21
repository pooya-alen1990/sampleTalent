<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class BLOG_AUDIENCE
{
       
    public static function blog_audience_SelectAll()
    {
        $sql = 'CALL `sp_blog_audience_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function blog_audience_SelectRow($id)
    {
        $sql = 'CALL `sp_blog_audience_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function blog_audience_DeleteRow($id)
    {
        $sql = 'CALL `sp_blog_audience_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function blog_audience_UpdateRow($id, $audience_name)
    {
        $sql = 'CALL `sp_blog_audience_UpdateRow`(:id, :audience_name)';
        $params = array (':id' => $id, ':audience_name' => $audience_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function blog_audience_Insert($audience_name)
    {
        $sql = 'CALL `sp_blog_audience_Insert`(:audience_name)';
        $params = array (':audience_name' => $audience_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>