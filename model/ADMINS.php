<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class ADMINS
{
       
    public static function admins_SelectAll()
    {
        $sql = 'CALL `sp_admins_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function admins_SelectRow($id)
    {
        $sql = 'CALL `sp_admins_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function admins_DeleteRow($id)
    {
        $sql = 'CALL `sp_admins_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function admins_UpdateRow($id, $first_name, $last_name, $password, $mobile, $about, $roles_id)
    {
        $sql = 'CALL `sp_admins_UpdateRow`(:id, :first_name, :last_name, :password, :mobile, :about, :roles_id)';
        $params = array (':id' => $id, ':first_name' => $first_name, ':last_name' => $last_name, ':password' => $password, ':mobile' => $mobile, ':about' => $about, ':roles_id' => $roles_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function admins_Insert($first_name, $last_name, $password, $mobile, $about, $roles_id)
    {
        $sql = 'CALL `sp_admins_Insert`(:first_name, :last_name, :password, :mobile, :about, :roles_id)';
        $params = array (':first_name' => $first_name, ':last_name' => $last_name, ':password' => $password, ':mobile' => $mobile, ':about' => $about, ':roles_id' => $roles_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>