<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class B_A
{
       
    public static function b_a_SelectAll()
    {
        $sql = 'CALL `sp_b_a_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function b_a_SelectRow($id)
    {
        $sql = 'CALL `sp_b_a_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function b_a_DeleteRow($id)
    {
        $sql = 'CALL `sp_b_a_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function b_a_UpdateRow($id, $blog_id, $audience_id)
    {
        $sql = 'CALL `sp_b_a_UpdateRow`(:id, :blog_id, :audience_id)';
        $params = array (':id' => $id, ':blog_id' => $blog_id, ':audience_id' => $audience_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function b_a_Insert($blog_id, $audience_id)
    {
        $sql = 'CALL `sp_b_a_Insert`(:blog_id, :audience_id)';
        $params = array (':blog_id' => $blog_id, ':audience_id' => $audience_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>