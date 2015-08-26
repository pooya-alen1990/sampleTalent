<?php
  class productslist
  {
      public 
        $msg_edit_profile=''
	   ,$productInfo
	   ,$id
	   ,$product_id
	   ,$msg_update
	   ,$productname,$explain,$price,$productdate,$shopname,$mobile,$tel,$city,$email,$address,$activate
      ;
      
      public function __construct()
      {
		 // DELETING PRODUCTS
		if(isset($_POST['deleteproduct'])){
		$this->product_id=$_POST['product_id'];
			PRODUCTS::products_DeleteRow($this->product_id);			
		}
		//FETCHING PRODUCTS
		$this->id=$_SESSION['userid'];
        $this->productInfo = PRODUCTS::products_SelectRowsByUserId($this->id);
	
		//EDITING PRODUCTS
		if(isset($_POST['editproduct'])){
			header("Location: ?page=editProduct&product_id=".$_POST["product_id"]."");
			}
		
      }
  }
  
?>
