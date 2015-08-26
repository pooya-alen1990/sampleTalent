<?php
Class USERS
{
       
    public static function users_SelectAll()
    {
        $sql = 'CALL `sp_users_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function users_SelectRow($id)
    {
        $sql = 'CALL `sp_users_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function users_DeleteRow($id)
    {
        $sql = 'CALL `sp_users_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function users_UpdateRow($id, $username, $password, $fname, $lname, $shopname, $subgroup, $tel, $mobile, $city, $email, $address, $activate)
    {
        $sql = 'CALL `sp_users_UpdateRow`(:id, :username, :password, :fname, :lname, :shopname, :subgroup, :tel, :mobile, :city, :email, :address, :activate)';
        $params = array (':id' => $id, ':username' => $username, ':password' => $password, ':fname' => $fname, ':lname' => $lname, ':shopname' => $shopname, ':subgroup' => $subgroup, ':tel' => $tel, ':mobile' => $mobile, ':city' => $city, ':email' => $email, ':address' => $address, ':activate' => $activate);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function users_Insert($username, $password, $fname, $lname, $shopname, $subgroup, $tel, $mobile, $city, $email, $address, $activate)
    {
        $sql = 'CALL `sp_users_Insert`(:username, :password, :fname, :lname, :shopname, :subgroup, :tel, :mobile, :city, :email, :address, :activate)';
        $params = array (':username' => $username, ':password' => $password, ':fname' => $fname, ':lname' => $lname, ':shopname' => $shopname, ':subgroup' => $subgroup, ':tel' => $tel, ':mobile' => $mobile, ':city' => $city, ':email' => $email, ':address' => $address, ':activate' => $activate);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
	 public static function users_Login($username,$password)
    {
        $sql = 'CALL `sp_users_Login`(:username, :password)';
        $params = array (':username' => $username, ':password' => $password);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
	 public static function users_CheckPassword($id,$password)
    {
        $sql = 'CALL `sp_users_CheckPassword`(:id, :password)';
        $params = array (':id' => $id, ':password' => $password);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
     public static function users_UpdateRowPassword($id, $password)
    {
        $sql = 'CALL `sp_users_UpdateRowPassword`(:id, :password)';
        $params = array (':id' => $id, ':password' => $password);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>