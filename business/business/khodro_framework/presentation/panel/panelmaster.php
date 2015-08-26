<?php
  class panelMaster
  {
      public 
        $siteTitle = 'فروشگاه'
       ,$page = 'newProduct.tpl'
       ,$focusAdder ='newProduct'
       ,$fullname
       ,$advPage
	   ,$advManagement
       ,$passwordPage
	   ,$passwordGenerate
       ,$shopPage
	   ,$shopAdd
       ,$usersPage
	   ,$usersInfo
	   ,$panelRightTop
      ;
      
	    private function router(){
	  	if(isset($_GET['page'])){
			$this->focusAdder = $_GET['page'];
			$this->page = $_GET['page'] . '.tpl';
			}
		  }
	  
      function __construct()
      {
		   if(isset($_GET['page'])){
			  $this->focusAdder = $_GET['page'];
			  };
		  if($this->focusAdder=="advManagement"){$this->advManagement='class="bgcolor_subnav"';}
		  if($this->focusAdder=="passwordGenerate"){$this->passwordGenerate='class="bgcolor_subnav"';}
		  if($this->focusAdder=="shopAdd"){$this->shopAdd='class="bgcolor_subnav"';}
		  if($this->focusAdder=="usersInfo"){$this->usersInfo='class="bgcolor_subnav"';}	
		  if($_SESSION['username']=='admin'){
					$this->advPage="
						<li "; 
					$this->advPage.= $this->advManagement;
					$this->advPage .=">
							<h1>
							<a href='?page=advManagement'>مدیریت آگهی های سایت</a>
							</h1>
						</li>";  
					$this->passwordPage="
						<li "; 
					$this->passwordPage.= $this->passwordGenerate;
					$this->passwordPage .=">
							<h1>
							<a href='?page=passwordGenerate'>ساخت کلمه عبور</a>
							</h1>
						</li>"; 
					$this->shopPage="
						<li "; 
					$this->shopPage.= $this->shopAdd;
					$this->shopPage .=">
							<h1>
							<a href='?page=shopAdd'>اضافه کردن فروشگاه</a>
							</h1>
						</li>"; 
					$this->usersPage="
						<li "; 
					$this->usersPage.= $this->usersInfo;
					$this->usersPage .=">
							<h1>
							<a href='?page=usersInfo'>اطلاعات اعضا</a>
							</h1>
						</li>"; 
					  
		  }
		  $this->fullname=$_SESSION['fullname'];
		  
          $this->router();
          //$this->categories = DatabaseHandler::GetAll("SELECT * FROM categories");
          //$this->news = DatabaseHandler::GetAll("SELECT * FROM cms WHERE cmstype_id = 2");
          //$this->articles = DatabaseHandler::GetAll("SELECT * FROM cms WHERE cmstype_id = 1");
		$this->panelRightTop = ADVERTISMENT::advertisment_SelectRowByState('panelRightTop');
		$this->panelRightTop=$this->panelRightTop['name'];
		
		$this->panelRightBottom = ADVERTISMENT::advertisment_SelectRowByState('panelRightBottom');
		$this->panelRightBottom=$this->panelRightBottom['name'];
		
		$this->panelLeftTop = ADVERTISMENT::advertisment_SelectRowByState('panelLeftTop');
		$this->panelLeftTop=$this->panelLeftTop['name'];
		
		$this->panelLeftMiddle = ADVERTISMENT::advertisment_SelectRowByState('panelLeftMiddle');
		$this->panelLeftMiddle=$this->panelLeftMiddle['name'];
		
		$this->panelLeftBottom = ADVERTISMENT::advertisment_SelectRowByState('panelLeftBottom');
		$this->panelLeftBottom=$this->panelLeftBottom['name'];
      }
	  

  }
?>
