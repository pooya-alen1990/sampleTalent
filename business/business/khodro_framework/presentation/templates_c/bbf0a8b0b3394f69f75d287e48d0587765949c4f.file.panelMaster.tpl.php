<?php /* Smarty version Smarty-3.0.5, created on 2014-04-08 06:32:23
         compiled from "C:\wamp\www\khodro_framework/presentation/panel/templates\panelMaster.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10293534397f782a8b9-61956246%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bbf0a8b0b3394f69f75d287e48d0587765949c4f' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/panel/templates\\panelMaster.tpl',
      1 => 1396938740,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10293534397f782a8b9-61956246',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'panelMaster','assign'=>'obj'),$_smarty_tpl);?>

<!doctype html>
<html>
<head>
	<title>پنل فلان سایت</title>

<!-- META -->
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="auther" content="ali sharifi">
<meta name="google-site-verification" content="jR0mJO8qvckMb6T0-0vCd6ZfV9ahjUhNF3pPiHXxrOQ" />
<meta name="Keywords" content="آگهی موسیقی,آگهی,آگهی رایگان,موسیقی,آگهی ساز,ساز,لوازم موسیقی,فروشگاه موسیقی,آگهی رایگان,آگهی رایگان موسیقی,فروش ساز,آگهی فروش ساز">
<meta name="description" content="آگهی موسیقی,آگهی,آگهی رایگان,موسیقی,آگهی ساز,ساز,لوازم موسیقی,فروشگاه موسیقی,آگهی رایگان,آگهی رایگان موسیقی,فروش ساز,آگهی فروش ساز">
<META name="ROBOTS" CONTENT="ALL" >


<link rel="shortcut icon" type="image/ico" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="../css/animate.css">

<link rel="stylesheet" type="text/css" href="../css/detection.css">

<!--[if IE]><!-->

<link rel="stylesheet" type="text/css" href="../css/desktop.css">
<link rel="stylesheet" type="text/css" href="../css/IE.css">
<!--<![endif]-->
<!--[if IE 8]><!-->

<link rel="stylesheet" type="text/css" href="../css/desktop.css">

<link rel="stylesheet" type="text/css" href="../css/ie8.css">
<!--<![endif]-->
<!--[if IE 9]><!-->

<link rel="stylesheet" type="text/css" href="../css/desktop.css">

<link rel="stylesheet" type="text/css" href="../css/ie9.css">
<!--<![endif]-->
<!--[if !IE]><!-->
<script async>  
if (/*@cc_on!@*/false) {  
    document.documentElement.className+=' ie10';  
}  
</script>

<link rel="stylesheet" type="text/css" href="../css/detection.css">

<!--<![endif]-->
<script async>
if (window.opera)     
{
   document.documentElement.className += ' opera';
}
if (window.chrome)     
{
   document.documentElement.className += ' chrome';
  
}
</script>

<!-- SCRIPTS -->
<script src="js/jquery.js"></script>
<script>
	$(document).ready(function(e) {
				
    });
</script>

</head>
<body>

<div  class="topnav_gradient topBar_black">
		<a href="index.php" class="topnav_btn">صفحه نخست</a>
        <a href="?page=editProfile" class="topnav_btn"><?php echo $_smarty_tpl->getVariable('obj')->value->fullname;?>
</a>
        <a  href="logout.php" class="topnav_btn">خروج</a>
</div>
<div id="container">
	<div id="header">
         <a id="logo">
         </a>
         <div id="website_title" class="orange_color">
         	فلان سایت ، مکانی برای فلان کار شما
         </div>
         <div id="search_header">
         	<div id="header_search_button"></div>
            
         	<input name="search_header_input"  placeholder="جستجو ..." type="text">
         </div>
         
     
	</div>
	
  <div id="main_area"> 
   <!-- leftside=<aside> ... but IE8 and earlier not support -->
        <div id="leftside">
        	<div id="leftside_left">
              <div class="ad_box border_gray">
                  <div class="bar_narrow"></div>
                  <img src="adv/<?php echo $_smarty_tpl->getVariable('obj')->value->panelLeftTop;?>
" width="200" height="200">
              </div>
              <div class="ad_box border_gray">
                  <div class="bar_narrow"></div>
                  <img src="adv/<?php echo $_smarty_tpl->getVariable('obj')->value->panelLeftMiddle;?>
" width="200" height="200">
              </div>
              <div class="ad_box border_gray">
                  <div class="bar_narrow"></div>
                  <img src="adv/<?php echo $_smarty_tpl->getVariable('obj')->value->panelLeftBottom;?>
" width="200" height="200">
              </div>
            </div>
            <div id="leftside_right">
          		<?php $_template = new Smarty_Internal_Template($_smarty_tpl->getVariable('obj')->value->page, $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
            </div>
			
        </div>
        <div id="rightside">
        <!-- sub_nav=<nav> ... but IE8 and earlier not support -->
      
<div id="sub_nav" class="sub_nav border_gray"> 
	<div class="bar_narrow"></div>
  <ul>
    <li <?php if ($_smarty_tpl->getVariable('obj')->value->focusAdder=='newProduct'){?> class="bgcolor_subnav" <?php }?>>
    	<h1>
        <a href="?page=newProduct">ثبت محصول جدید
        </a>
        </h1>
    </li>
    <li  <?php if ($_smarty_tpl->getVariable('obj')->value->focusAdder=='sellers'){?> class="bgcolor_subnav" <?php }?>>
    	<h1>
        <a href="?page=sellers">تعرفه ها
        </a>
        </h1>
    </li>
    <li <?php if ($_smarty_tpl->getVariable('obj')->value->focusAdder=='hitSellers'){?> class="bgcolor_subnav" <?php }?>>
    	<h1>
        <a href="?page=hitSellers">فروشگاه های پر بازدید
        </a>
        </h1>
    </li>
    <li <?php if ($_smarty_tpl->getVariable('obj')->value->focusAdder=='editProfile'){?> class="bgcolor_subnav" <?php }?>>
    	<h1>
        <a href="?page=editProfile">ویراش مشخصات شما
        </a>
        </h1>
    </li>
    <li <?php if ($_smarty_tpl->getVariable('obj')->value->focusAdder=='editPassword'){?> class="bgcolor_subnav" <?php }?>>
    	<h1>
        <a href="?page=editPassword">تغییر رمز عبور
        </a>
        </h1>
    </li>
    <li <?php if ($_smarty_tpl->getVariable('obj')->value->focusAdder=='productsList'){?> class="bgcolor_subnav" <?php }?>>
    	<h1>
        <a href="?page=productsList">لیست محصولات شما</a>
        </h1>
    </li>
    <!-- just For Admin -->
		<?php echo $_smarty_tpl->getVariable('obj')->value->advPage;?>

        <?php echo $_smarty_tpl->getVariable('obj')->value->passwordPage;?>

        <?php echo $_smarty_tpl->getVariable('obj')->value->shopPage;?>

        <?php echo $_smarty_tpl->getVariable('obj')->value->usersPage;?>

    </ul>
</div>
              <div class="ad_box border_gray">
                  <div class="bar_narrow"></div>
                  <img src="adv/<?php echo $_smarty_tpl->getVariable('obj')->value->panelRightTop;?>
" width="200" height="200">
              </div>
              <div class="ad_box border_gray">
                  <div class="bar_narrow"></div>
                  <img src="adv/<?php echo $_smarty_tpl->getVariable('obj')->value->panelRightBottom;?>
" width="200" height="200">
              </div>
            
        </div>
    </div>
	<div id="footer" class="footer_gradient">	
           کلیه حقوق وبسایت محفوظ میباشد &copy;
           <br><br>
           برای اطلاعات بیشتر با شماره تلفن <span class="orange_color">3333314</span> تماس بگیرید
	</div>
	<br>
</div>
<br><br>
</body>
</html>

