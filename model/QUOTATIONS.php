<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class QUOTATIONS
{

    public static function quotations_SelectOneRandom()
    {
        $sql = 'CALL `sp_quotations_SelectOneRandom`()';
        DatabaseHandler::Close();
        return DatabaseHandler::GetRow($sql);
    }
    public static function quotations_DeleteRow($id)
    {
        $sql = 'CALL `sp_quotations_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function quotations_UpdateRow($id, $author, $text)
    {
        $sql = 'CALL `sp_quotations_UpdateRow`(:id, :author, :text)';
        $params = array (':id' => $id, ':author' => $author, ':text' => $text);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function quotations_Insert($author, $text)
    {
        $sql = 'CALL `sp_quotations_Insert`(:author, :text)';
        $params = array (':author' => $author, ':text' => $text);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>