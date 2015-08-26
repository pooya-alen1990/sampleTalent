<?php

  require 'include/config.php';
  require 'include/messageconfig.php';
    
  $index = new Application();
  $index->display('master.tpl');

?>