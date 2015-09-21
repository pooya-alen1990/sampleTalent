<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class PERMISSIONS
{
       
    public static function permissions_SelectAll()
    {
        $sql = 'CALL `sp_permissions_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function permissions_SelectRow($id)
    {
        $sql = 'CALL `sp_permissions_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function permissions_DeleteRow($id)
    {
        $sql = 'CALL `sp_permissions_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function permissions_UpdateRow($id, $title, $ENtitle)
    {
        $sql = 'CALL `sp_permissions_UpdateRow`(:id, :title, :ENtitle)';
        $params = array (':id' => $id, ':title' => $title, ':ENtitle' => $ENtitle);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function permissions_Insert($title, $ENtitle)
    {
        $sql = 'CALL `sp_permissions_Insert`(:title, :ENtitle)';
        $params = array (':title' => $title, ':ENtitle' => $ENtitle);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>