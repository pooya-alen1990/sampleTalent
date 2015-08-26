<?php
  require '../include/config.php';
  include '../include/messageconfig.php';
  
  
  $index = new Application('admin');
  $index->display('adminmaster.tpl');

?>