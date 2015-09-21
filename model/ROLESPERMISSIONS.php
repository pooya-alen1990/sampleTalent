<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class ROLESPERMISSIONS
{
       
    public static function rolespermissions_SelectAll()
    {
        $sql = 'CALL `sp_rolespermissions_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function rolespermissions_SelectRow($id)
    {
        $sql = 'CALL `sp_rolespermissions_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function rolespermissions_DeleteRow($id)
    {
        $sql = 'CALL `sp_rolespermissions_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function rolespermissions_UpdateRow($id, $roles_id, $permissions_id)
    {
        $sql = 'CALL `sp_rolespermissions_UpdateRow`(:id, :roles_id, :permissions_id)';
        $params = array (':id' => $id, ':roles_id' => $roles_id, ':permissions_id' => $permissions_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function rolespermissions_Insert($roles_id, $permissions_id)
    {
        $sql = 'CALL `sp_rolespermissions_Insert`(:roles_id, :permissions_id)';
        $params = array (':roles_id' => $roles_id, ':permissions_id' => $permissions_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>