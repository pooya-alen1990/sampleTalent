<?php /* Smarty version Smarty-3.0.5, created on 2014-04-04 12:59:46
         compiled from "C:\wamp\www\khodro_framework/presentation/panel/templates\productsList.tpl" */ ?>
<?php /*%%SmartyHeaderCode:30118533eacc2838bc8-93364795%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1464615051460173cf0a036cd1f03ae15f4b0262' => 
    array (
      0 => 'C:\\wamp\\www\\khodro_framework/presentation/panel/templates\\productsList.tpl',
      1 => 1396610806,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '30118533eacc2838bc8-93364795',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\wamp\www\khodro_framework/presentation/smarty_plugins\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>'productslist','assign'=>'obj'),$_smarty_tpl);?>

<table class="table table_panel border_gray div_shadow div_bgcolor" border="0" cellpadding="0" cellspacing="0">
	<tr class="bar_narrow">
    	<td></td><td></td><td></td><td></td>
       
    </tr>
    <tr>
    	<th>تاریخ</th>
        <th>نام محصول</th>
        <th>ویرایش</th>
        <th>حذف</th>
    </tr>
    <tr class="table_space">
    	<td></td><td></td><td></td><td></td>
    </tr>
    <?php unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->getVariable('obj')->value->productInfo) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total']);
?>
    <tr>
    	<td><?php echo $_smarty_tpl->getVariable('obj')->value->productInfo[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['date'];?>
</td>
        <td><?php echo $_smarty_tpl->getVariable('obj')->value->productInfo[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['productname'];?>
</td>
        <td>
            <form method="post">
            	<input type="submit" class="edit" style="border:none;" value="" name="editproduct">
                <input type="hidden" value="<?php echo $_smarty_tpl->getVariable('obj')->value->productInfo[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
" name="product_id">
            </form>
        </td>
        <td>
        	<form method="post">
            	<input type="submit" class="delete" style="border:none;" value="" name="deleteproduct" onClick="return confirm('آیا مطمئنید می خواهید این محصول را حذف کنید؟')">
                <input type="hidden" value="<?php echo $_smarty_tpl->getVariable('obj')->value->productInfo[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
" name="product_id">
            </form>
         </td>
    </tr>
    <tr class="table_space">
    	<td></td><td></td><td></td><td></td>
    </tr>
	<?php endfor; endif; ?>
    <?php echo $_smarty_tpl->getVariable('obj')->value->msg_update;?>

</table>