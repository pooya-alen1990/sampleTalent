<?php
  class cmsmanagement
  {
      public 
        $allCms
       ,$message = ''
       ,$allCategories = ''
      
      ;
      function __construct()
      {
          if(isset($_POST['submit']))
          {
              if(cms::cms_Insert($_POST['txtTitle'], $_POST['txtBody'], time(), $_POST['ddlCategories']))
              {
                  $this->message = MSG_INSERT_SUCCESS;
              }
          }
          //$this->allCategories = HtmlHandler::comboBox('categories', 'title', 'id', 'ddlCategories', 'field size3');
          $this->allCategories = HtmlHandler::comboBox('cmstype', 'title', 'id', 'ddlCategories', 'field size3');
          $this->allCms = CMS::cms_SelectAll();
          $persidanDate = new jCalendar();
          for($i=0; $i < count($this->allCms); $i++)
          {
              $this->allCms[$i]['pDate'] = $persidanDate->date('Y/m/d', $this->allCms[$i]['date']);
          }
      }
  }
?>
