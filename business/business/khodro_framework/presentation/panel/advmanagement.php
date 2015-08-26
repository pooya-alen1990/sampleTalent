<?php
  class advmanagement
  {
      public 
        $msg_edit_adv='',$input	  
       ,$mainRightTop,$mainRightBottom ,$panelRightTop,$panelRightBottom,$panelLeftTop,$panelLeftMiddle,$panelLeftBottom
	   ,$banner1,$banner2,$banner3
	  ;
	  ## adv function
	  public function advImage($input){
		  		 if(isset($_POST['submit_'.$input.'']))
          			{
			$state=$input;
			$input=$_FILES[$input];
			if($input['error']==0 && 
					   ($input['type']=='image/gif' || 
						$input['type']=='image/png' || 
						$input['type']=='image/jpeg'))
						{
							$image_name=$input['name'];
							$tmp_name=$input['tmp_name'];
							$location="adv/";
							$name_db=ADVERTISMENT::advertisment_SelectRowByState($state);
							$image_address=$location.$name_db['name'];
							if(file_exists($image_address))
							unlink($image_address);
							ADVERTISMENT::advertisment_UpdateRowByState($state.$image_name,$state);
							move_uploaded_file($tmp_name,$location.$image_name);
							rename($location.$image_name,$location.$state.$image_name);
							$this->msg_edit_adv=MSG_EDIT_ADV_SUCCESS;}
				else{
							$this->msg_edit_adv=MSG_EDIT_ADV_FAILED_TYPE;}	
          }
		  
		  }
      
	  ## banner function
	   public function bannerImage($input){
		  		 if(isset($_POST['submit_'.$input.'']))
          			{
			$state=$input;
			$input=$_FILES[$input];
			if($input['error']==0 && 
					   ($input['type']=='image/gif' || 
						$input['type']=='image/png' || 
						$input['type']=='image/jpeg'))
						{
							$image_name=$input['name'];
							$tmp_name=$input['tmp_name'];
							$location="../js/slide_show/data1/images/";
							$name_db=ADVERTISMENT::advertisment_SelectRowByState($state);
							$image_address=$location.$name_db['name'];
							if(file_exists($image_address))
							unlink($image_address);
							ADVERTISMENT::advertisment_UpdateRowByState($state.$image_name,$state);
							move_uploaded_file($tmp_name,$location.$image_name);
							rename($location.$image_name,$location.$state.$image_name);
							$this->msg_edit_adv=MSG_EDIT_ADV_SUCCESS;}
				else{
							$this->msg_edit_adv=MSG_EDIT_ADV_FAILED_TYPE;}	
          }
		  
		  }
      public function __construct()
      {

		 //UPDATEING ADVERTISEMENT
		 
		#####   mainRightTop
		$this->advImage('mainRightTop');
		#####   mainRightBottom
		$this->advImage('mainRightBottom');	
		######   panelRightTop
		$this->advImage('panelRightTop');					
		######   panelRightBottom
		$this->advImage('panelRightBottom');					
		######   panelLeftTop
		$this->advImage('panelLeftTop');					
		######   panelLeftMiddle
		$this->advImage('panelLeftMiddle');				
		######   panelLeftBottom
		$this->advImage('panelLeftBottom');	
		//UPDATING BANNERS
		######   banner1
		$this->bannerImage('banner1');
		######   banner2
		$this->bannerImage('banner2');
		######   banner3
		$this->bannerImage('banner3');	
      }


  }
  
?>
