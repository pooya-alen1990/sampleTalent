<?php /* Smarty version Smarty-3.0.5, created on 2014-04-04 12:55:37
         compiled from "C:\wamp\www\khodro_framework/presentation/panel/templates\editPassword.tpl" */ ?>
<?php /*%%SmartyHeaderCode:29441533eabc98a8f24-73909588%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e84ad6df21aabae549196abb0f6e4356c12d7db2' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/panel/templates\\editPassword.tpl',
      1 => 1396614433,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '29441533eabc98a8f24-73909588',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'editpassword','assign'=>'obj'),$_smarty_tpl);?>

<form class="form panel_box box border_gray div_shadow div_bgcolor" method="post">
                	<div class="bar_narrow"></div>
                    <ul>
                    	
                         <li>
                         	<label for="test">رمز عبور قدیمی</label>
                            <input type="password" id="test" name="oldpassword">
                         </li>
                         <li>
                         	<label for="test">رمز عبور جدید</label>
                            <input type="password" id="test" name="password">
                         </li>
                         <li>
                         	<label for="test">تکرار رمز عبور جدید</label>
                            <input type="password" id="test" name="repassword">
                         </li>
                        <li class="submit_li">
                        	<input type="submit" class="button gradient_orange" value="ثبت" name="editpassword">
                            
                        </li> 
                        <?php echo $_smarty_tpl->getVariable('obj')->value->msg_edit_password;?>

                	</ul>
</form>