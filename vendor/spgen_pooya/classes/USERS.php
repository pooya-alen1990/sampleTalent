<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
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
     public static function users_UpdateRow($id, $first_name, $last_name, $password, $job_title, $gender, $marriage_state, $profile_pic, $cover_pic, $birthday, $mobile, $tel, $address, $email, $website, $job_state, $job_kind, $salary, $city_id, $about_me, $register_date)
    {
        $sql = 'CALL `sp_users_UpdateRow`(:id, :first_name, :last_name, :password, :job_title, :gender, :marriage_state, :profile_pic, :cover_pic, :birthday, :mobile, :tel, :address, :email, :website, :job_state, :job_kind, :salary, :city_id, :about_me, :register_date)';
        $params = array (':id' => $id, ':first_name' => $first_name, ':last_name' => $last_name, ':password' => $password, ':job_title' => $job_title, ':gender' => $gender, ':marriage_state' => $marriage_state, ':profile_pic' => $profile_pic, ':cover_pic' => $cover_pic, ':birthday' => $birthday, ':mobile' => $mobile, ':tel' => $tel, ':address' => $address, ':email' => $email, ':website' => $website, ':job_state' => $job_state, ':job_kind' => $job_kind, ':salary' => $salary, ':city_id' => $city_id, ':about_me' => $about_me, ':register_date' => $register_date);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function users_Insert($first_name, $last_name, $password, $job_title, $gender, $marriage_state, $profile_pic, $cover_pic, $birthday, $mobile, $tel, $address, $email, $website, $job_state, $job_kind, $salary, $city_id, $about_me, $register_date)
    {
        $sql = 'CALL `sp_users_Insert`(:first_name, :last_name, :password, :job_title, :gender, :marriage_state, :profile_pic, :cover_pic, :birthday, :mobile, :tel, :address, :email, :website, :job_state, :job_kind, :salary, :city_id, :about_me, :register_date)';
        $params = array (':first_name' => $first_name, ':last_name' => $last_name, ':password' => $password, ':job_title' => $job_title, ':gender' => $gender, ':marriage_state' => $marriage_state, ':profile_pic' => $profile_pic, ':cover_pic' => $cover_pic, ':birthday' => $birthday, ':mobile' => $mobile, ':tel' => $tel, ':address' => $address, ':email' => $email, ':website' => $website, ':job_state' => $job_state, ':job_kind' => $job_kind, ':salary' => $salary, ':city_id' => $city_id, ':about_me' => $about_me, ':register_date' => $register_date);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>