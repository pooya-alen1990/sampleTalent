<?php
  class adminmaster
  {
      public $page = 'dashboard.tpl';
      function __construct()
      {
          if(isset($_GET['r']))
          {
              $this->page = $_GET['r'] . '.tpl';
          }
      }
  }
?>
