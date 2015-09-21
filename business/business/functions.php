<?php
	function connectToDB(){
		$mysqli=new mysqli(SERVER_NAME,DB_USERNAME,DB_PASSWORD,DB_NAME);
		return $mysqli;
	}
	function isEmail($email){
			if(filter_var($email,FILTER_VALIDATE_EMAIL)){
				return true;
			}
			else {
				return false;
			}
	}
	function isTel($tel){
			if(preg_match('/^[0-9]{1,}$/',$tel)){
				return true;
			}
			else {
				return false;
			}
	}
	function toSafeString($str){
			$mysqli=connectToDB();
			$str=$mysqli->real_escape_string($str);
			$mysqli->close();
			$str=htmlentities($str,ENT_QUOTES,"utf-8");
			$str=trim($str);
			return $str;
	}
	 function isEmptyPOST($str_var){
		 	
			if(isset($_POST[$str_var])){
				$var=$_POST[$str_var];
				if(empty($var)){
					return true;
				}	
				else{
					return false;
				}
			}
			else{
				return true;
			}
	}
?>