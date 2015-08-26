<?php 
class newproduct
{
	public 
		$msg_new_product
	   ,$productname
	   ,$explain
	   ,$price
	   ,$state
	   ;
	public function __construct()
	{	
	
		if(isset($_POST['registernewproduct'])){
		$productname=$_POST['productname'];
		$explain=$_POST['explain'];	
		$price=$_POST['price'];
		$date=time();
		$hitcounter=0;
		$user_id=$_SESSION['userid'];	
		$this->msg_new_product;
		
		$this->state = PRODUCTS::products_Insert($productname, $explain, $price, $date, $hitcounter, $user_id);
		
		if($this->state){
			$this->msg_new_product=MSG_NEW_PRODUCT_SUCCESS;
			}else{
				$this->msg_new_product=MSG_NEW_PRODUCT_FAILED;
				}
		}
	}	
	
}
?>