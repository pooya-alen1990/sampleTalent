<?php
/**
 * Created by PhpStorm.
 * User: pooya
 * Date: 8/26/15
 * Time: 7:38 PM
 */

define("SITE_ROOT", dirname(dirname(__FILE__)));

require_once SITE_ROOT . "/config/config.php";

date_default_timezone_set('Asia/Tehran');

/**
 * php debug mode
 */
if(DEBUGGING_MODE){
    error_reporting(E_ALL);
    ini_set('display_errors','1');
}

/**
 * php host mode
 */
if(LOCAL_MODE){

    define('DB_PERSISTENCY', 'true');

    define('DB_SERVER', DB_SERVER_LOCAL);
    define('DB_USERNAME', DB_USERNAME_LOCAL);
    define('DB_PASSWORD', DB_PASSWORD_LOCAL);
    define('DB_DATABASE', DB_DATABASE_LOCAL);

    define('PDO_DSN', 'mysql:host=' . DB_SERVER . ';dbname=' . DB_DATABASE);

}else{

    define('DB_PERSISTENCY', 'true');

    define('DB_SERVER', DB_SERVER_HOST);
    define('DB_USERNAME', DB_USERNAME_HOST);
    define('DB_PASSWORD', DB_PASSWORD_HOST);
    define('DB_DATABASE', DB_DATABASE_HOST);

    define('PDO_DSN', 'mysql:host=' . DB_SERVER . ';dbname=' . DB_DATABASE);

}

/**
 * php session mode
 */
if(SESSION_ENABLED){
    session_start();
}


/**
 * include require files
 */
require_once SITE_ROOT . "/business/class.DatabaseHandler.php";
require_once SITE_ROOT . "/business/class.Validation.php";
require_once SITE_ROOT . "/business/jdf.php";
require_once SITE_ROOT . "/messages/messages.php";


/**
 * @param $class_name
 */
function __autoload($class_name) {
    require_once SITE_ROOT . "/model/" . $class_name . '.php';
}