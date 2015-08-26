<?php
  class editpassword
  {
      public 
        $msg_edit_password=''
	  
      ;
      
      public function __construct()
      {

		  //UPDATEING

		  if(isset($_POST['editpassword']))
          {
			
			$oldpassword=$_POST['oldpassword'];
			$password=$_POST['password'];
			$repassword=$_POST['repassword'];
			$id=$_SESSION['userid'];
			
		if(USERS::users_CheckPassword($id,$oldpassword)){
			if($password==$repassword){
				if(USERS::users_UpdateRowPassword($id, $password)){				
					$this->msg_edit_password=MSG_EDIT_PASSWORD_SUCCESS;
				}else{
					$this->msg_edit_password=MSG_EDIT_PASSWOR_FAILED;
					}
			}else{$this->msg_edit_password=MSG_REPASSWORD;}
		}else{$this->msg_edit_password=MSG_OLD_PASSWORD;}
          }
		 

		
      }


  }
  
?>
