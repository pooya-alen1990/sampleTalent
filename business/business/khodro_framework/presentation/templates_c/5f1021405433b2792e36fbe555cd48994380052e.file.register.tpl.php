<?php /* Smarty version Smarty-3.0.5, created on 2014-04-06 17:50:10
         compiled from "C:\wamp\www\khodro_framework/presentation/templates\register.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16534193d21961b3-38718946%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5f1021405433b2792e36fbe555cd48994380052e' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/templates\\register.tpl',
      1 => 1396806598,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16534193d21961b3-38718946',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'register','assign'=>'obj'),$_smarty_tpl);?>

<form class="form box index_box border_gray div_shadow div_bgcolor" method="post" action="">
                	<div class="bar_narrow"></div>
                    <ul>
                    	<li>
                        	<label for="username_register"><span class="red">*</span> نام کاربری</label>
                            <input id="username_registe" class="" name="username" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->username;?>
"> <?php echo $_smarty_tpl->getVariable('obj')->value->username_error;?>

                            <span class="error">alaki</span>
                        </li>
                        
                        <li>
                        	<label for="fname_register"><span class="red">*</span> نام</label>
                            <input id="fname_register" class="" name="fname" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->fname;?>
"> <?php echo $_smarty_tpl->getVariable('obj')->value->fname_error;?>

                          
                        </li>
                    	
                        <li>
                        	
                            <label for="lname_register"><span class="red">*</span> نام خانوادگی</label>
                            <input id="lname_register" class="" name="lname" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->lname;?>
"> <?php echo $_smarty_tpl->getVariable('obj')->value->lname_error;?>

                            
                         </li>
                         <li>
                        	<label for="shopName_register"><span class="red">*</span> نام فروشگاه</label>
                            <input id="shopName_register" class=""  name="shopname" type="text" value="<?php echo $_smarty_tpl->getVariable('obj')->value->shopname;?>
"> <?php echo $_smarty_tpl->getVariable('obj')->value->shopname_error;?>

                            
                         </li>
                         <li>
                        	<label for="subgroup_register"><span class="red">*</span> زیر گروه</label>
                            <select id="subgroup_register" class=""  name="subgroup">
                            		<option value="صنعتی">صنعتی</option>
                                    <option value="غیر صنعتی">غیر صنعتی</option>
                            </select>                            
                         </li>
                         <li>
                        	<label for="tel_register"><span class="red">*</span> تلفن ثابت</label>
                            <input id="tel_register" class="" type="text" name="tel" value="<?php echo $_smarty_tpl->getVariable('obj')->value->tel;?>
"> <?php echo $_smarty_tpl->getVariable('obj')->value->tel_error;?>

                           
                         </li>
                         <li>
                        	<label for="mobile_register"><span class="red">*</span> تلفن همراه</label>
                            <input id="mobile_register" class="" type="text" name="mobile" value="<?php echo $_smarty_tpl->getVariable('obj')->value->mobile;?>
"> <?php echo $_smarty_tpl->getVariable('obj')->value->mobile_error;?>

                           
                         </li>
                         <li>
                        	<label for="city_register"><span class="red">*</span> شهر</label>
                            <input id="city_register" class=""  type="text" name="city" value="<?php echo $_smarty_tpl->getVariable('obj')->value->city;?>
"> <?php echo $_smarty_tpl->getVariable('obj')->value->city_error;?>

                            
                         </li>
                         <li>
                        	<label for="email_register"><span class="red">*</span> ایمیل</label>
                            <input id="email_register" class=""  type="text" name="email" value="<?php echo $_smarty_tpl->getVariable('obj')->value->email;?>
"> <?php echo $_smarty_tpl->getVariable('obj')->value->email_error;?>

                           
                         </li>
                         <li>
                        	<label for="address_register"><span class="red">*</span> آدرس</label>
                            <textarea id="address_register" class=""  name="address"><?php echo $_smarty_tpl->getVariable('obj')->value->address;?>
</textarea><br> <?php echo $_smarty_tpl->getVariable('obj')->value->address_error;?>

                            
                         </li>
                        <li class="submit_li">
                        	
                        	<input type="submit"  name="submit_register" class="button gradient_orange" value="ثبت نام">
                            
                        </li>
                        
                         <li>
							<?php echo $_smarty_tpl->getVariable('obj')->value->msg_register;?>

                        </li>
                	</ul>
</form>
