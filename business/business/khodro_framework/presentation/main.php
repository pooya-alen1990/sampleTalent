<?php
  class Main
  {
      public 
        $msg_login=''
	   ,$userInfo
	   ,$banner1,$banner2,$banner3
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
           		$_SESSION['fullname'] = $this->userInfo['fname'].$this->userInfo['lname'];
			header('Location: panel');
			
			}else{
				$this->msg_login=MSG_LOGIN_FAILED;
				}
          }
		$this->banner1 = ADVERTISMENT::advertisment_SelectRowByState('banner1');
		$this->banner1=$this->banner1['name'];
		$this->banner2 = ADVERTISMENT::advertisment_SelectRowByState('banner2');
		$this->banner2=$this->banner2['name'];
		$this->banner3 = ADVERTISMENT::advertisment_SelectRowByState('banner3');
		$this->banner3=$this->banner3['name'];
      }
  }
  
?>
