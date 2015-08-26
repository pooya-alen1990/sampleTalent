<?php
  //AutoLoad Function 
  //Added By Keramatifar - 92/2/28
 

  
 // ErrorHandler::SetHandler();
 // date_default_timezone_set(TIMEZONE);
  //--- 92/2/28
  
  // Reference Smarty library
  require_once SMARTY_DIR . 'Smarty.class.php';
  /* Class that extends Smarty, used to process and display Smarty
  files */
  class Application extends Smarty
  {
    // Class constructor
    //Edited By Keramatifar Date: 91/2/27
    //Edited By Farrokhi Date: 91/2/27
    public function __construct($side = 'front')
    {
      // Call Smarty's constructor
      parent::__construct();
      // Change the default template directories
      if($side == 'admin')
      {
          
          $this->template_dir = ADMIN_TEMPLATE_DIR;  
      }
      else if($side == 'front')
      {
         $this->template_dir = TEMPLATE_DIR; 
         
      }
	  else if($side == 'panel'){
	  	$this->template_dir = PANEL_TEMPLATE_DIR; 
	  }
      //***Edited By Farrokhi Date: 91/2/27
      //***Edited By Keramatifar Date: 91/2/27
      
      
      $this->compile_dir = COMPILE_DIR;
      //$this->config_dir = CONFIG_DIR;
      $this->plugins_dir[0] = SMARTY_DIR . 'plugins';
      $this->plugins_dir[1] = PRESENTATION_DIR . 'smarty_plugins';
    }
      
  }  
?>
