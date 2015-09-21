<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class ROLES
{
       
    public static function roles_SelectAll()
    {
        $sql = 'CALL `sp_roles_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function roles_SelectRow($id)
    {
        $sql = 'CALL `sp_roles_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function roles_DeleteRow($id)
    {
        $sql = 'CALL `sp_roles_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function roles_UpdateRow($id, $title)
    {
        $sql = 'CALL `sp_roles_UpdateRow`(:id, :title)';
        $params = array (':id' => $id, ':title' => $title);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function roles_Insert($title)
    {
        $sql = 'CALL `sp_roles_Insert`(:title)';
        $params = array (':title' => $title);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>