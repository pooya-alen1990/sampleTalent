<?php /* Smarty version Smarty-3.0.5, created on 2014-04-08 06:40:41
         compiled from "C:\wamp\www\khodro_framework/presentation/templates\master.tpl" */ ?>
<?php /*%%SmartyHeaderCode:29898534399e9a5b1c5-87580472%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a4fcbf80f760e4ecebdb219bc8e0bf44fbb1ecf8' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/templates\\master.tpl',
      1 => 1396939071,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '29898534399e9a5b1c5-87580472',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'master','assign'=>'obj'),$_smarty_tpl);?>

<!doctype html>
<html>
<head>

<title>سایت فلان</title>

<!-- META -->
<meta charset="utf-8">

<meta name="auther" content="ali sharifi">
<meta name="google-site-verification" content="" />
<meta name="Keywords" content="">
<meta name="description" content="">
<META name="ROBOTS" CONTENT="ALL" >


<link rel="shortcut icon" type="image/ico" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="css/animate.css">

<link rel="stylesheet" type="text/css" href="css/detection.css">
<link rel="stylesheet" type="text/css" href="js/slide_show/engine1/style.css" />
<!--[if IE]><!-->

<link rel="stylesheet" type="text/css" href="css/desktop.css">
<link rel="stylesheet" type="text/css" href="css/IE.css">
<!--<![endif]-->
<!--[if IE 8]><!-->

<link rel="stylesheet" type="text/css" href="css/desktop.css">

<link rel="stylesheet" type="text/css" href="css/ie8.css">
<!--<![endif]-->
<!--[if IE 9]><!-->

<link rel="stylesheet" type="text/css" href="css/desktop.css">

<link rel="stylesheet" type="text/css" href="css/ie9.css">
<!--<![endif]-->
<!--[if !IE]><!-->
<script async>  
if (/*@cc_on!@*/false) {  
    document.documentElement.className+=' ie10';  
}  
</script>

<link rel="stylesheet" type="text/css" href="css/detection.css">

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
		<a href="?page=main" class="topnav_btn">صفحه نخست</a>
        <a href="?page=login" class="topnav_btn">ورود</a>
        <a  href="?page=register" class="topnav_btn">ثبت نام</a>
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
			<?php $_template = new Smarty_Internal_Template($_smarty_tpl->getVariable('obj')->value->page, $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
        </div>
        <div id="rightside">

<div id="sub_nav" class="border_gray"> 
	<div class="bar_narrow"></div>
  <ul>
    <li <?php if ($_smarty_tpl->getVariable('obj')->value->shopID==1){?> class="bgcolor_subnav" <?php }?>>
    	<h1>
        <a href="?page=shopProducts&amp;shopID=1" ><strong>فروشگاه 1</strong>
        </a>
        </h1>
    </li>
    <li  <?php if ($_smarty_tpl->getVariable('obj')->value->shopID==2){?> class="bgcolor_subnav" <?php }?>>
    	<h1>
        <a href="?page=shopProducts&amp;shopID=2"><strong>فروشگاه 2</strong>
        </a>
        </h1>
    </li>
    <li >
    	<h1>
        <a href=""><strong>فروشگاه 3</strong>
        </a>
        </h1>
    </li>
    <li >
    	<h1>
        <a href=""><strong>فروشگاه 4</strong>
        </a>
        </h1>
    </li>
    <li >
    	<h1>
        <a href="">فروشگاه 5</a>
        </h1>
    </li>
    <li >
    	<h1>
        <a href=""><strong>فروشگاه 6</strong></a>
        </h1>
    </li>
    <li >
    	<h1>
        <a href=""><strong>فروشگاه 7</strong></a>
        </h1>
    </li>
    <li >
    	<h1>
        <a href="">فروشگاه 8
    	</a>
        </h1>
    </li>
    <li >
    	<h1>
        <a href=""><strong>فروشگاه 9</strong>
        </a>
        </h1>
    </li>
    <li >
    	<h1>
        <a href="">فروشگاه 10
        </a>
        </h1>
    </li>
    <li>
    	<h1>
        <a href="">فروشگاه 11
        </a>
        </h1>
    </li>
   
    </ul>
</div>
            <div class="ad_box border_gray">
            	<div class="bar_narrow"></div>
            	<img src="panel/adv/<?php echo $_smarty_tpl->getVariable('obj')->value->mainRightTop;?>
" width="200" height="200">
            </div>
            <div class="ad_box border_gray">
            	<div class="bar_narrow"></div>
            	<img src="panel/adv/<?php echo $_smarty_tpl->getVariable('obj')->value->mainRightBottom;?>
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
