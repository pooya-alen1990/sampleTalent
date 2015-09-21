<?php
 /**
  * Created by PhpStorm.
  * User: pooya
  * Date: 8/25/15
  * Time: 3:03 PM
  */
Class BLOG_KEYWORDS
{
       
    public static function blog_keywords_SelectAll()
    {
        $sql = 'CALL `sp_blog_keywords_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function blog_keywords_SelectRow($id)
    {
        $sql = 'CALL `sp_blog_keywords_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function blog_keywords_DeleteRow($id)
    {
        $sql = 'CALL `sp_blog_keywords_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function blog_keywords_UpdateRow($id, $blog_id, $keyword)
    {
        $sql = 'CALL `sp_blog_keywords_UpdateRow`(:id, :blog_id, :keyword)';
        $params = array (':id' => $id, ':blog_id' => $blog_id, ':keyword' => $keyword);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function blog_keywords_Insert($blog_id, $keyword)
    {
        $sql = 'CALL `sp_blog_keywords_Insert`(:blog_id, :keyword)';
        $params = array (':blog_id' => $blog_id, ':keyword' => $keyword);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>