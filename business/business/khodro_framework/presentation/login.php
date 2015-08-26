<?php
  class Login
  {
      public 
        $msg_login=''
	   ,$userInfo
      ;
      
      public function __construct()
      {
          if(isset($_POST['login']))
          {
			$username=$_POST['username'];
			$password=$_POST['password'];
			
			if(USERS::users_Login($username,$password)){
           $this->userInfo = USERS::users_Login($username,$password);
		   		$_SESSION['userid'] = $this->userInfo['id'];
           		$_SESSION['fullname'] = $this->userInfo['fname'].' '.$this->userInfo['lname'];
				$_SESSION['username'] = $this->userInfo['username'];
			header('Location: panel');
			
			}else{
				$this->msg_login=MSG_LOGIN_FAILED;
				}
          }
      }
  }
  
?>
