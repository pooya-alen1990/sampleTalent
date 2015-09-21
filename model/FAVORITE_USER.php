<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class FAVORITE_USER
{
       
    public static function favorite_user_SelectAll()
    {
        $sql = 'CALL `sp_favorite_user_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function favorite_user_SelectRow($id)
    {
        $sql = 'CALL `sp_favorite_user_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function favorite_user_DeleteRow($id)
    {
        $sql = 'CALL `sp_favorite_user_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function favorite_user_UpdateRow($id, $favorite_blog, $user_id)
    {
        $sql = 'CALL `sp_favorite_user_UpdateRow`(:id, :favorite_blog, :user_id)';
        $params = array (':id' => $id, ':favorite_blog' => $favorite_blog, ':user_id' => $user_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function favorite_user_Insert($favorite_blog, $user_id)
    {
        $sql = 'CALL `sp_favorite_user_Insert`(:favorite_blog, :user_id)';
        $params = array (':favorite_blog' => $favorite_blog, ':user_id' => $user_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>