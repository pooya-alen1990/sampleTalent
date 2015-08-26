<?php
	class login{
		public function checkLogin($username,$password){
			$username=toSafeString($username);
			$password=toSafeString($password);
			$mysqli=connectToDB();
			$result=$mysqli->query("CALL sp_login('$username','$password');") or die("SELECT query login error");
			$mysqli->close();
			if($result->fetch_assoc()){
				return true;
			}
			else {
				return false;
			}
		}
		
	}
?>