<?php
Class PRODUCTS
{
       
    public static function products_SelectAll()
    {
        $sql = 'CALL `sp_products_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function products_SelectRow($id)
    {
        $sql = 'CALL `sp_products_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function products_DeleteRow($id)
    {
        $sql = 'CALL `sp_products_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function products_UpdateRow($id, $productname, $explain, $price, $date, $hitcounter, $user_id)
    {
        $sql = 'CALL `sp_products_UpdateRow`(:id, :productname, :explain, :price, :date, :hitcounter, :user_id)';
        $params = array (':id' => $id, ':productname' => $productname, ':explain' => $explain, ':price' => $price, ':date' => $date, ':hitcounter' => $hitcounter, ':user_id' => $user_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function products_Insert($productname, $explain, $price, $date, $hitcounter, $user_id)
    {
        $sql = 'CALL `sp_products_Insert`(:productname, :explain, :price, :date, :hitcounter, :user_id)';
        $params = array (':productname' => $productname, ':explain' => $explain, ':price' => $price, ':date' => $date, ':hitcounter' => $hitcounter, ':user_id' => $user_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
	 public static function products_SelectRowsByUserId($userid)
    {
        $sql = 'CALL `sp_products_SelectRowsByUserId`(:userid)';
        $params = array (':userid' => $userid);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql, $params);
    }
}
?>