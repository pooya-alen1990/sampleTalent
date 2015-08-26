{load_presentation_object filename='productslist' assign='obj'}
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
    {section name=i loop=$obj->productInfo}
    <tr>
    	<td>{$obj->productInfo[i].date}</td>
        <td>{$obj->productInfo[i].productname}</td>
        <td>
            <form method="post">
            	<input type="submit" class="edit" style="border:none;" value="" name="editproduct">
                <input type="hidden" value="{$obj->productInfo[i].id}" name="product_id">
            </form>
        </td>
        <td>
        	<form method="post">
            	<input type="submit" class="delete" style="border:none;" value="" name="deleteproduct" onClick="return confirm('آیا مطمئنید می خواهید این محصول را حذف کنید؟')">
                <input type="hidden" value="{$obj->productInfo[i].id}" name="product_id">
            </form>
         </td>
    </tr>
    <tr class="table_space">
    	<td></td><td></td><td></td><td></td>
    </tr>
	{/section}
    {$obj->msg_update}
</table>