<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class B_S
{
       
    public static function b_s_SelectAll()
    {
        $sql = 'CALL `sp_b_s_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function b_s_SelectRow($id)
    {
        $sql = 'CALL `sp_b_s_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function b_s_DeleteRow($id)
    {
        $sql = 'CALL `sp_b_s_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function b_s_UpdateRow($id, $blog_id, $subject_id)
    {
        $sql = 'CALL `sp_b_s_UpdateRow`(:id, :blog_id, :subject_id)';
        $params = array (':id' => $id, ':blog_id' => $blog_id, ':subject_id' => $subject_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function b_s_Insert($blog_id, $subject_id)
    {
        $sql = 'CALL `sp_b_s_Insert`(:blog_id, :subject_id)';
        $params = array (':blog_id' => $blog_id, ':subject_id' => $subject_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>