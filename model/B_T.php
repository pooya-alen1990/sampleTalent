<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class B_T
{
       
    public static function b_t_SelectAll()
    {
        $sql = 'CALL `sp_b_t_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function b_t_SelectRow($id)
    {
        $sql = 'CALL `sp_b_t_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function b_t_DeleteRow($id)
    {
        $sql = 'CALL `sp_b_t_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function b_t_UpdateRow($id, $blog_id, $type_id)
    {
        $sql = 'CALL `sp_b_t_UpdateRow`(:id, :blog_id, :type_id)';
        $params = array (':id' => $id, ':blog_id' => $blog_id, ':type_id' => $type_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function b_t_Insert($blog_id, $type_id)
    {
        $sql = 'CALL `sp_b_t_Insert`(:blog_id, :type_id)';
        $params = array (':blog_id' => $blog_id, ':type_id' => $type_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>