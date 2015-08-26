<?php
   require '../include/config.php';
  if(isset($_SESSION['userid'])){
  include '../include/messageconfig.php';
  
  
  $index = new Application('panel');
  $index->display('panelMaster.tpl');
  }else if(!isset($_SESSION['userid'])){
	  header('Location: ../?page=login');
	  die('');
	  }
?>