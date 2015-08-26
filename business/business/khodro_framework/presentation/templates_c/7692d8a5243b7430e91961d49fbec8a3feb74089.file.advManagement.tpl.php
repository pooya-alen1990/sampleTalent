<?php /* Smarty version Smarty-3.0.5, created on 2014-04-08 07:19:00
         compiled from "C:\wamp\www\khodro_framework/presentation/panel/templates\advManagement.tpl" */ ?>
<?php /*%%SmartyHeaderCode:289115343a2e44eaa44-06632167%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7692d8a5243b7430e91961d49fbec8a3feb74089' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/panel/templates\\advManagement.tpl',
      1 => 1396941538,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '289115343a2e44eaa44-06632167',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'advManagement','assign'=>'obj'),$_smarty_tpl);?>

<div class="form panel_box box border_gray div_shadow div_bgcolor">
                	<div class="bar_narrow"></div>
                    <ul>
                    	<li style="text-align:center;">کلیه آگهی ها باید با اندازه 200*200 پیکسل وارد شوند.</li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی صفحه اول سمت راست بالا</label>
                            <input type="file" id="test" name="mainRightTop">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_mainRightTop"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی صفحه اول سمت راست پایین</label>
                            <input type="file" id="test" name="mainRightBottom">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_mainRightBottom"></form>
                         </li><hr>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت راست بالا</label>
                            <input type="file" name="panelRightTop">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelRightTop"></form>
                         </li>
						 <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت راست پایین</label>
                            <input type="file" name="panelRightBottom">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelRightBottom"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت چپ بالا</label>
                            <input type="file" name="panelLeftTop">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelLeftTop"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت چپ وسط</label>
                            <input type="file" name="panelLeftMiddle">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelLeftMiddle"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت چپ پایین</label>
                            <input type="file" name="panelLeftBottom">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelLeftBottom"></form>
                         </li><hr>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">بنر 1 - 390*700</label>
                            <input type="file" name="banner1">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_banner1"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">بنر 2 - 390*700</label>
                            <input type="file" name="banner2">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_banner2"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">بنر 3 - 390*700</label>
                            <input type="file" name="banner3">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_banner3"></form>
                         </li>
                        <?php echo $_smarty_tpl->getVariable('obj')->value->msg_edit_adv;?>

                	</ul>
</div>