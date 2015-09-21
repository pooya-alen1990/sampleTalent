<?php
    class formValidator{
        public $errors;
        public $dbTableName;
        protected $fields;
        
        public function __construct($fields,$dbTableName){
            $this->fields=$fields;
            $this->dbTableName=$dbTableName;
        }
        private function checkRequiredFieldsEmptyError(){
            foreach($this->fields as $key => $value){
                
                if($value=="require"){
                    if(isEmptyPOST($key)){
                        $this->errors[$key]="empty";
                    }
                    
                }
            }
        }
        public function insertForm(){
            $mysqli=connectToDB();
            $fields_key=array_keys($this->fields);
            $fields_end_key=end($fields_key);
        
            $query="CALL sp_insert_".$this->dbTableName;
            $query.="(";
            
            foreach($this->fields as $key => $value){
                if($fields_end_key==$key)
                    $query.="'".$_POST[$key]."')";
                else 
                    $query.="'".$_POST[$key]."',";
            }
            echo $query;
            $mysqli->query($query) or die("sp_insert_users  error");
            $mysqli->close();
        }
        public  function updateForm(){
        }        
        public  function deleteForm(){
        }
        private function allFieldsToSafeString(){
            foreach($this->fields as $key => $value){
                if(isset($_POST[$key])){
                    $_POST[$key]=toSafeString($_POST[$key]);
                }
            }
        }
        public function baseValidate(){
            $this->checkRequiredFieldsEmptyError();
            $this->allFieldsToSafeString();
            if(count($this->errors)>0){
                return false;
            }
            else {
                return true;
            }
        }
    }
    class registerNewUser extends formValidator{
        private function checkAvailableUsername($username){
            $mysqli=connectToDB();
            $result=$mysqli->query("CALL sp_checkAvailableUsername('$username')") or die("sp_checkAvailableUsername query error");
            $mysqli->close();
            if($result->fetch_assoc()){
                return false;
            }
            else {
                return true;
            }
        }
        
        public function customValidate(){
            if(count($this->errors)==0){
                
                    if(!isEmail($_POST['email'])){
                        $this->errors['email']="not_validate";
                    }
                
                if(isset($_POST['tel'])){
                    if(!isTel($_POST['tel'])){
                        $this->errors['tel']="not_validate";
                    }
                }
                if(!$this->checkAvailableUsername($_POST['username'])){
                    $this->errors['username']="not_available";
                }
            }
            if(count($this->errors)>0){
                return false;
            }
            else {
                return true;
            }
            
        }
        
    }
    
    class login{
        public function checkLogin($username,$password){
            $username=toSafeString($username);
            $password=toSafeString($password);
            $mysqli=connectToDB();
            $result=$mysqli->query("CALL sp_login('$username','$password');") or die("SELECT query login error");
            $mysqli->close();
            if($result->fetch_assoc()){
                return true;
            }
            else {
                return false;
            }
        }
        
    }

    ///////////      HOW TO USE LOGIN AND REGISTER CLASSES     /////////////
    /*
    $obj_login = new login();
    if($obj_login->checkLogin("user","pass")){
        echo "LOGIN<br>";    
    }
    */
    /////////////////////////////////////////////////////////////////////////////
    // HOW TO USE  registerNewUser //
    /*
    $_POST['username']="aassdd";
    $_POST['address']="sdf";
    $_POST['city']="a";
    $_POST['shopName']="a";
    $_POST['email']="a@zsdg.sdg";
    $_POST['fname']="a";
    $_POST['lname']="af";
    $_POST['tel']="";
    
    
    $obj = new registerNewUser($users_fields,'users');
    if($obj->baseValidate()){
        if($obj->customValidate()){
            $obj->insertForm();
        }
    }
      
    var_dump($obj->errors); 
    ///
    */
?>