<?php
session_start();

//include 'messageconfig.php';
define("SITE_ROOT", dirname(dirname(__FILE__)));
define("PRESENTATION_DIR", SITE_ROOT . '/presentation/');
define("BUSSINES_DIR", SITE_ROOT . '/business/');
  
  // Settings needed to configure the Smarty template engine
define('SMARTY_DIR', SITE_ROOT . '/libs/smarty/');
define('TEMPLATE_DIR', PRESENTATION_DIR . 'templates');
define('COMPILE_DIR', PRESENTATION_DIR . 'templates_c');
define('ADMIN_PRESENTATION_DIR', SITE_ROOT . '/presentation/admin/');
define('ADMIN_TEMPLATE_DIR', ADMIN_PRESENTATION_DIR . 'templates');
define('PANEL_PRESENTATION_DIR', SITE_ROOT . '/presentation/panel/');
define('PANEL_TEMPLATE_DIR', PANEL_PRESENTATION_DIR . 'templates');


define('DB_PERSISTENCY', 'true');
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'khodro_db');
//define('VIRTUAL_LOCATION', '/eshop9/');
define('PDO_DSN', 'mysql:host=' . DB_SERVER . ';dbname=' . DB_DATABASE);

define('IS_WARNING_FATAL', true);
define('DEBUGGING', true);
// The error types to be reported
define('ERROR_TYPES', E_ALL);

// Settings about mailing the error messages to admin
define('SEND_ERROR_MAIL', false);
define('ADMIN_ERROR_MAIL', 'pooya@gmail.com');
define('SENDMAIL_FROM', 'info@khodro.ir');
ini_set('sendmail_from', SENDMAIL_FROM);

// By default we don't log errors to a file
define('LOG_ERRORS', true);
define('LOG_ERRORS_FILE', 'c:\\eshop\\errors_log.txt'); // Windows
 //define('LOG_ERRORS_FILE', '/home/username/tshirtshop/errors.log'); // Linux
define('SITE_GENERIC_ERROR_MESSAGE', '<h1>کاربر گرامی اینترنت شما قطع است</h1>');
function autoload($class) 
  {
    
    if($class == 'Application')
    {
       
        if(file_exists(PRESENTATION_DIR . $class . '.php')) 
            {
                
                require PRESENTATION_DIR . $class . '.php';
            }
       else
            require '../presentation/' . $class . '.php';
    }
    if(file_exists('business/class.' . $class . '.php'))
    {
        require 'business/class.' . $class . '.php' ; 
    }
    else if(file_exists('libs/smarty/sysplugins/' . $class . '.php'))
    {
        include 'libs/smarty/sysplugins/' . $class . '.php';
    }
    else if(file_exists('../business/class.' . $class . '.php'))
        include '../business/class.' . $class . '.php';
    else if(file_exists('../business/models/model.' . $class . '.php'))
        include '../business/models/model.' . $class . '.php';
    else if(file_exists('business/models/model.' . $class . '.php'))
        include 'business/models/model.' . $class . '.php';
    
  }
  spl_autoload_register('autoload');
  
  ErrorHandler::SetHandler(ERROR_TYPES);
?>