{load_presentation_object filename='master' assign='obj'}
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
			{include file=$obj->page}
        </div>
        <div id="rightside">

<div id="sub_nav" class="border_gray"> 
	<div class="bar_narrow"></div>
  <ul>
    <li {if $obj->shopID eq 1} class="bgcolor_subnav" {/if}>
    	<h1>
        <a href="?page=shopProducts&amp;shopID=1" ><strong>فروشگاه 1</strong>
        </a>
        </h1>
    </li>
    <li  {if $obj->shopID eq 2} class="bgcolor_subnav" {/if}>
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
            	<img src="panel/adv/{$obj->mainRightTop}" width="200" height="200">
            </div>
            <div class="ad_box border_gray">
            	<div class="bar_narrow"></div>
            	<img src="panel/adv/{$obj->mainRightBottom}" width="200" height="200">            	
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
