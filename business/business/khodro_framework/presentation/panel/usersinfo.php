<?php
  class usersinfo
  {
      public 
        $msg_edit_profile=''
	   ,$usersInfo
	   ,$password
	   ,$user_id
	   ,$msg_update
	   ,$id
	   ,$code
	   ,$userRow
      ;
      
      public function __construct()
      {
		// DELETING USERS
		if(isset($_POST['deleteuser'])){
		$this->user_id=$_POST['user_id'];
			USERS::users_DeleteRow($this->user_id);			
		}
		//FETCHING USERS
        $this->usersInfo = USERS::users_SelectAll();
		if(isset($_POST['passwordGenerator'])){
		// GENERATING PASSWORD
				  $text='123456789';
				  $captcha='';
				  for($i=1;$i<=5;$i++)
				  {
				  $start=rand(0,strlen($text)-1);
				  $captcha.=substr($text,$start,1);
				  }
				  $_SESSION['MM_captcha']=$captcha;
		//  UPDATING PASSWORD
		$this->id=$_POST['user_id'];
		$this->password=$_SESSION['MM_captcha'];
		USERS::users_UpdateRowPassword($this->id, $this->password);
		$userRow = USERS::users_SelectRow($this->id);
		$this->code = 'کلمه عبور : ';
		$this->code .= '<span style="color:red;">';
		$this->code .= $userRow['password'];
		$this->code .= '</span>';
		//header('Location: ?page=usersInfo');
		}
      }
  }
  
?>
