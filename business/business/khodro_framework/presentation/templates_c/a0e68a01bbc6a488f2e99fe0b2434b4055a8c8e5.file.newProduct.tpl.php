<?php /* Smarty version Smarty-3.0.5, created on 2014-04-04 12:55:08
         compiled from "C:\wamp\www\khodro_framework/presentation/panel/templates\newProduct.tpl" */ ?>
<?php /*%%SmartyHeaderCode:28904533eabac6cc237-04403918%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a0e68a01bbc6a488f2e99fe0b2434b4055a8c8e5' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/panel/templates\\newProduct.tpl',
      1 => 1396604748,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '28904533eabac6cc237-04403918',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'newproduct','assign'=>'obj'),$_smarty_tpl);?>

<form class="form panel_box box border_gray div_shadow div_bgcolor" method="post">
                	<div class="bar_narrow"></div>
                    <ul>
                    	<li>
                        	<label for="pname_panelForm">نام محصول</label>
                            <input id="pname_panelForm" type="text" name="productname">
                        </li>
                        <li class="textarea_li">
                        	<label for="pdesc_panelForm">توضیحات</label>
                           <textarea id="pdesc_panelForm" name="explain"></textarea>
                         </li>
                         <li>
                         	<label for="pprice_panelForm">قیمت</label>
                            <input type="text" id="pprice_panelForm" name="price">
                         </li>
                        <li class="submit_li">
                        	
                        	<input type="submit" class="button gradient_orange" value="ثبت" name="registernewproduct">
                            
                        </li>
                      <?php echo $_smarty_tpl->getVariable('obj')->value->msg_new_product;?>

                	</ul>
</form>