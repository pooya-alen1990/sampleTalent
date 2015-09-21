<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class EDUCATIONS
{
       
    public static function educations_SelectAll()
    {
        $sql = 'CALL `sp_educations_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function educations_SelectRow($id)
    {
        $sql = 'CALL `sp_educations_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function educations_DeleteRow($id)
    {
        $sql = 'CALL `sp_educations_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function educations_UpdateRow($id, $user_id, $education_level, $education_average, $education_university, $education_branch, $education_sub_branch, $from_date, $to_date, $now, $activities, $attach_file)
    {
        $sql = 'CALL `sp_educations_UpdateRow`(:id, :user_id, :education_level, :education_average, :education_university, :education_branch, :education_sub_branch, :from_date, :to_date, :now, :activities, :attach_file)';
        $params = array (':id' => $id, ':user_id' => $user_id, ':education_level' => $education_level, ':education_average' => $education_average, ':education_university' => $education_university, ':education_branch' => $education_branch, ':education_sub_branch' => $education_sub_branch, ':from_date' => $from_date, ':to_date' => $to_date, ':now' => $now, ':activities' => $activities, ':attach_file' => $attach_file);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function educations_Insert($user_id, $education_level, $education_average, $education_university, $education_branch, $education_sub_branch, $from_date, $to_date, $now, $activities, $attach_file)
    {
        $sql = 'CALL `sp_educations_Insert`(:user_id, :education_level, :education_average, :education_university, :education_branch, :education_sub_branch, :from_date, :to_date, :now, :activities, :attach_file)';
        $params = array (':user_id' => $user_id, ':education_level' => $education_level, ':education_average' => $education_average, ':education_university' => $education_university, ':education_branch' => $education_branch, ':education_sub_branch' => $education_sub_branch, ':from_date' => $from_date, ':to_date' => $to_date, ':now' => $now, ':activities' => $activities, ':attach_file' => $attach_file);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>