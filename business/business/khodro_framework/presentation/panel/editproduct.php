<?php 
class editproduct
{
	public 
		$msg_edit_product
	   ,$productname
	   ,$explain
	   ,$price
	   ,$state
	   ;
	public function __construct()
	{	
	
		//SHOW PRODUCT DETAIL
		$this->product_id=$_GET['product_id'];
        $this->productInfo = PRODUCTS::products_SelectRow($this->product_id);

		$this->productname=$this->productInfo['productname'];
		$this->explain=$this->productInfo['explain'];
		$this->price=$this->productInfo['price'];
		$this->hitcounter=$this->productInfo['hitcounter'];
		$this->user_id=$this->productInfo['user_id'];

		//EDIT PRODUCTS
		if(isset($_POST['editproduct'])){
		$id=$_GET['product_id'];
		$productname=$_POST['productname'];
		$explain=$_POST['explain'];	
		$price=$_POST['price'];
		$date=time();
		$hitcounter=$this->hitcounter;
		$user_id=$_SESSION['userid'];
		
		$this->state = PRODUCTS::products_UpdateRow($id,$productname, $explain, $price, $date, $hitcounter, $user_id);
			
			if($this->state){
				//$page = $_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING'];
				//header("Location: $page");
				$this->msg_edit_product=MSG_EDIT_PRODUCT_SUCCESS;
				}else{
					$this->msg_edit_product=MSG_EDIT_PRODUCT_FAILED;
					}
			}
	}	
	
}
?>