<?php
/**
 * Created by PhpStorm.
 * User: pooya
 * Date: 8/26/15
 * Time: 7:38 PM
 * this file is config file of project
 */

/**
 * public setting
 */
define("DEBUGGING_MODE", true);

define("SESSION_ENABLED", true);


/**
 * @important : in production phase the KEY must be more complicated
 */
define('LOG_ERRORS', true);
define('LOG_ERRORS_FILE', '/var/www/html/talentyab/errors.log');


//define("KEY" , "!@##$^&*(123dfgdSDGSDGsdf");
define("KEY", "123");

if ($_SERVER['HTTP_HOST'] == 'localhost' || $_SERVER['HTTP_HOST'] == '127.0.0.1') {
    define('LOCAL_MODE', true);
} else {
    define('LOCAL_MODE', false);
}


/**
 * database config local mode
 */
define('DB_SERVER_LOCAL', 'localhost');
define('DB_USERNAME_LOCAL', 'root');
define('DB_PASSWORD_LOCAL', '123');
define('DB_DATABASE_LOCAL', 'bakhti');


/**
 * database config host mode
 */
define('DB_SERVER_HOST', 'localhost');
define('DB_USERNAME_HOST', 'talentyab');
define('DB_PASSWORD_HOST', 'Talentyab1394');
define('DB_DATABASE_HOST', 'talentyab');



