<?php
Class ADVERTISMENT
{
       
    public static function advertisment_SelectAll()
    {
        $sql = 'CALL `sp_advertisment_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function advertisment_SelectRow($id)
    {
        $sql = 'CALL `sp_advertisment_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function advertisment_DeleteRow($id)
    {
        $sql = 'CALL `sp_advertisment_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function advertisment_UpdateRow($id, $name, $state)
    {
        $sql = 'CALL `sp_advertisment_UpdateRow`(:id, :name, :state)';
        $params = array (':id' => $id, ':name' => $name, ':state' => $state);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function advertisment_Insert($name, $state)
    {
        $sql = 'CALL `sp_advertisment_Insert`(:name, :state)';
        $params = array (':name' => $name, ':state' => $state);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>