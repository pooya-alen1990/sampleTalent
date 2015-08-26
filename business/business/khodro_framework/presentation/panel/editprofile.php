<?php
  class Editprofile
  {
      public 
        $msg_edit_profile=''
	   ,$userInfo
	   ,$id
	   ,$msg_update
	   ,$username,$password,$fname,$lname,$shopname,$mobile,$tel,$city,$email,$address,$activate
      ;
      
      public function __construct()
      {
		$this->id=$_SESSION['userid'];
        $this->userInfo = USERS::users_SelectRow($this->id);

		$this->username=$this->userInfo['username'];
		$this->password=$this->userInfo['password'];
		$this->fname=$this->userInfo['fname'];
		$this->lname=$this->userInfo['lname'];
		$this->shopname=$this->userInfo['shopname'];
		$this->mobile=$this->userInfo['mobile'];
		$this->tel=$this->userInfo['tel'];
		$this->city=$this->userInfo['city'];
		$this->email=$this->userInfo['email'];
		$this->address=$this->userInfo['address'];
		$this->activate=$this->userInfo['activate'];
		  //UPDATEING

		  if(isset($_POST['update_profile']))
          {
			$id=$this->id;
			$username=$this->username;
			$password=$this->password;
			$fname=$_POST['fname'];
			$lname=$_POST['lname'];
			$shopname=$_POST['shopname'];
			$subgroup=$_POST['subgroup'];
			$tel=$_POST['tel'];
			$mobile=$_POST['mobile'];
			$city=$_POST['city'];
			$email=$_POST['email'];
			$address=$_POST['address'];
			$activate=$this->activate;
            $this->state = USERS::users_UpdateRow($id, $username, $password, $fname, $lname, $shopname, $subgroup, $tel, $mobile, $city, $email, $address, $activate);
			if($this->state){
				$this->userInfo = USERS::users_SelectRow($this->id);
			$this->msg_update=MSG_UPDATE_SUCCESS;
			}else{
				$this->msg_update=MSG_UPDATE_FAILED;
				}
          }

		
      }


  }
  
?>
