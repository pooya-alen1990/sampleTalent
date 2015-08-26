<?php
  class authentication
  {
/*      public static function login($email, $password)
      {
         $query = "CALL sp_users_login(:email,:password)" ;
         $params = array(':email' => $email, ':password' => $password);
         DatabaseHandler::Close();
         return DatabaseHandler::GetRow($query, $params);
      }*/
      public static function checkUserName($username)
      {
		 $query = "CALL sp_users_sameusername(:username)" ;
         $params = array(':username' => $username);
         DatabaseHandler::Close();
         return DatabaseHandler::GetRow($query, $params);
          
      }
  }
  
?>
