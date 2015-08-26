<?php /* Smarty version Smarty-3.0.5, created on 2014-04-04 12:54:28
         compiled from "C:\wamp\www\khodro_framework/presentation/templates\login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:21978533eab84cfce00-19284359%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f3e6290711380256ce1c843e01c7c2246a42f91e' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/templates\\login.tpl',
      1 => 1396559891,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21978533eab84cfce00-19284359',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'login','assign'=>'obj'),$_smarty_tpl);?>

<form class="form box index_box border_gray div_shadow div_bgcolor" method="post">
                	<div class="bar_narrow"></div>
                    <ul>
                    	<li>
                        	<label for="username_login">نام کاربری</label>
                            <input id="username_login" type="text" name="username">
                        </li>
                        <li>
                        	<label for="password_login">رمز عبور</label>
                            <input id="password_login" type="password" name="password">
                         </li>
                        <li class="submit_li">
                        	<input type="submit" class="button gradient_orange" value="ورود" name="login">
                        </li>
                        <?php echo $_smarty_tpl->getVariable('obj')->value->msg_login;?>

                	</ul>
</form>