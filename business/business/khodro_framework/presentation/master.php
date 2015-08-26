<?php
  class Master
  {
      public 
        $siteTitle = 'فروشگاه'
       ,$page = 'main.tpl'
       ,$mainRightTop
       ,$mainRightBottom
       ,$articles
	   ,$shopID
      ;
      
      function __construct()
      {
          $this->router();
          //$this->categories = DatabaseHandler::GetAll("SELECT * FROM categories");
          //$this->news = DatabaseHandler::GetAll("SELECT * FROM cms WHERE cmstype_id = 2");
          //$this->articles = DatabaseHandler::GetAll("SELECT * FROM cms WHERE cmstype_id = 1");
      }
	  
	  private function router(){
	  	if(isset($_GET['page'])){
			$this->page = $_GET['page'] . '.tpl';
			if($_GET['page']=="shopProducts"){
				$this->shopID = $_GET['shopID'];
			}
		}
		$this->mainRightTop = ADVERTISMENT::advertisment_SelectRowByState('mainRightTop');
		$this->mainRightTop=$this->mainRightTop['name'];
		
		$this->mainRightBottom = ADVERTISMENT::advertisment_SelectRowByState('mainRightBottom');
		$this->mainRightBottom=$this->mainRightBottom['name'];
		
	  }
  }
?>
