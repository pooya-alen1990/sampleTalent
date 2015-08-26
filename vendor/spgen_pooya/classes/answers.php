<?php
    /**
 * Created by PhpStorm.
 * User: pooya
 * Date: 8/25/15
 * Time: 3:03 PM
 */
Class ANSWERS
{
       
    public static function answers_SelectAll()
    {
        $sql = 'CALL `sp_answers_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function answers_SelectRow($id)
    {
        $sql = 'CALL `sp_answers_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function answers_DeleteRow($id)
    {
        $sql = 'CALL `sp_answers_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function answers_UpdateRow($id, $answer_title, $answer_value)
    {
        $sql = 'CALL `sp_answers_UpdateRow`(:id, :answer_title, :answer_value)';
        $params = array (':id' => $id, ':answer_title' => $answer_title, ':answer_value' => $answer_value);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function answers_Insert($answer_title, $answer_value)
    {
        $sql = 'CALL `sp_answers_Insert`(:answer_title, :answer_value)';
        $params = array (':answer_title' => $answer_title, ':answer_value' => $answer_value);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>