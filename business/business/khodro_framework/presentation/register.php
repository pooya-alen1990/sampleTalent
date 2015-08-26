<?php
  class Register
  {
      public 
        $msg_register=''
		,$state
		,$username,$password,$fname,$lname,$shopname,$mobile,$tel,$city,$email,$address,$error
		,$fname_error,$lname_error,$username_error,$email_error,$shopname_error,$address_error,$city_error,$tel_error,$mobile_error
      ;
      
      public function __construct()
      {
		  $form = new validation();
          if(isset($_POST['submit_register']))
          {
			$error = null;
			$get_error = null;
			$this->username=$_POST['username'];
			$this->password='';
			$this->fname=$_POST['fname'];
			$this->lname=$_POST['lname'];
			$this->shopname=$_POST['shopname'];
			$this->subgroup=$_POST['subgroup'];
			$this->tel=$_POST['tel'];
			$this->mobile=$_POST['mobile'];
			$this->city=$_POST['city'];
			$this->email=$_POST['email'];
			$this->address=$_POST['address'];
			$this->activate=0;
			
			$this->username_error = $form->username_validation($this->username, 'نام کاربری');
			$this->fname_error = $form->name_validation($this->fname, 'نام');
			$this->lname_error = $form->name_validation($this->lname, 'نام خانوادگی');
			$this->email_error = $form->email_validation($this->email, 'ایمیل');
			$this->address_error = $form->address_validation($this->address, true, 'آدرس');
			$this->shopname_error = $form->name_validation($this->shopname, 'نام فروشگاه');
			$this->city_error = $form->name_validation($this->city, 'شهر');
			$this->tel_error = $form->digits_validation($this->tel, 'تلفن ثابت');
			$this->mobile_error = $form->digits_validation($this->mobile, 'تلفن همراه');
				$this->error = $this->fname_error.$this->lname_error.$this->username_error.$this->email_error.$this->address_error.$this->shopname_error.$this->tel_error.$this->city_error.$this->mobile_error;
			if($this->error == null){
				if(!authentication::checkUserName($this->username)){
				$this->state = USERS::users_Insert($this->username, $this->password, $this->fname, $this->lname, $this->shopname, $this->subgroup, $this->tel, $this->mobile, $this->city, $this->email, $this->address, $this->activate);
				if($this->state){
				$this->msg_register=MSG_REGISTER_SUCCESS;
				}else{
					$this->msg_register=MSG_REGISTER_FAILED;
					}
				}else{
					$this->msg_register=MSG_REGISTER_SAME_USERNAME;
					}
			}
          }
      }
  }
  
?>
