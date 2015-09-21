<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class BLOG_TYPE
{
       
    public static function blog_type_SelectAll()
    {
        $sql = 'CALL `sp_blog_type_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function blog_type_SelectRow($id)
    {
        $sql = 'CALL `sp_blog_type_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function blog_type_DeleteRow($id)
    {
        $sql = 'CALL `sp_blog_type_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function blog_type_UpdateRow($id, $type_name)
    {
        $sql = 'CALL `sp_blog_type_UpdateRow`(:id, :type_name)';
        $params = array (':id' => $id, ':type_name' => $type_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function blog_type_Insert($type_name)
    {
        $sql = 'CALL `sp_blog_type_Insert`(:type_name)';
        $params = array (':type_name' => $type_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>