<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class AUTHORS
{
       
    public static function authors_SelectAll()
    {
        $sql = 'CALL `sp_authors_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function authors_SelectRow($id)
    {
        $sql = 'CALL `sp_authors_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function authors_DeleteRow($id)
    {
        $sql = 'CALL `sp_authors_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function authors_UpdateRow($id, $full_name)
    {
        $sql = 'CALL `sp_authors_UpdateRow`(:id, :full_name)';
        $params = array (':id' => $id, ':full_name' => $full_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function authors_Insert($full_name)
    {
        $sql = 'CALL `sp_authors_Insert`(:full_name)';
        $params = array (':full_name' => $full_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>