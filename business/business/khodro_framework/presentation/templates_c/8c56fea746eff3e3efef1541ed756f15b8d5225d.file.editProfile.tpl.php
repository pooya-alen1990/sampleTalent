<?php /* Smarty version Smarty-3.0.5, created on 2014-04-04 12:57:46
         compiled from "C:\wamp\www\khodro_framework/presentation/panel/templates\editProfile.tpl" */ ?>
<?php /*%%SmartyHeaderCode:25868533eac4a35c743-40614954%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8c56fea746eff3e3efef1541ed756f15b8d5225d' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/panel/templates\\editProfile.tpl',
      1 => 1396563004,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '25868533eac4a35c743-40614954',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'editprofile','assign'=>'obj'),$_smarty_tpl);?>

<form class="form box panel_box border_gray div_shadow div_bgcolor" method="post">
                	<div class="bar_narrow"></div>
                    <ul>
                        <li>
                        	<label for="fname_register"><span class="red">*</span> نام کاربری</label>
                            <input id="fname_register" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->username;?>
" name="username" disabled>
                        </li>
                    	<li>
                        	<label for="fname_register"><span class="red">*</span> نام</label>
                            <input id="fname_register" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->fname;?>
" name="fname">
                        </li>
                        <li>
                        	<label for="lname_register"><span class="red">*</span> نام خانوادگی</label>
                            <input id="lname_register" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->lname;?>
" name="lname">
                         </li>
                         <li>
                        	<label for="shopName_register"><span class="red">*</span> نام فروشگاه</label>
                            <input id="shopName_register" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->shopname;?>
" name="shopname">
                         </li>
                         <li>
                        	<label for="subgroup_register"><span class="red">*</span> زیر گروه</label>
                            <select id="subgroup_register" class=""  name="subgroup">
                            		<option value="صنعتی">صنعتی</option>
                                    <option value="غیر صنعتی">غیر صنعتی</option>
                            </select>                            
                         </li>
                         <li>
                        	<label for="mobile_register"><span class="red">*</span> تلفن همراه</label>
                            <input id="mobile_register" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->mobile;?>
" name="mobile">
                         </li>
                         <li>
                        	<label for="tel_register"><span class="red">*</span> تلفن ثابت</label>
                            <input id="tel_register" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->tel;?>
" name="tel">
                         </li>
                         <li>
                        	<label for="city_register"><span class="red">*</span> شهر</label>
                            <input id="city_register" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->city;?>
" name="city">
                         </li>
                         <li>
                        	<label for="email_register"><span class="red">*</span> ایمیل</label>
                            <input id="email_register" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->email;?>
" name="email">
                         </li>
                         <li>
                        	<label for="address_register"><span class="red">*</span> آدرس</label>
                            <textarea id="address_register" name="address"><?php echo $_smarty_tpl->getVariable('obj')->value->address;?>
</textarea>
                         </li>
                        <li class="submit_li">
                        	<input type="submit" class="button gradient_orange" value="ویرایش" name="update_profile">         
                        </li>
                        <?php echo $_smarty_tpl->getVariable('obj')->value->msg_update;?>

                	</ul>
</form>