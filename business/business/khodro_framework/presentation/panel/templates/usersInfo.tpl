{load_presentation_object filename='usersinfo' assign='obj'}
<h4 style="margin-left:180px; margin-bottom:10px; display:block; font-weight:bold;">{$obj->code}</h4>
<table class="table table_panel border_gray div_shadow div_bgcolor" border="0" cellpadding="0" cellspacing="0">
	<tr class="bar_narrow">
    	<td></td><td></td><td></td><td></td><td></td>
       
    </tr>
    <tr>
    	<th>وضعیت</th>
        <th>نام فروشگاه</th>
        <th>نام کاربری</th>
        <th>ساخت کلمه عبور</th>
        <th>حذف</th>
    </tr>
    <tr class="table_space">
    	<td></td><td></td><td></td><td></td><td></td>
    </tr>
    {section name=i loop=$obj->usersInfo}
    <tr>
        <td>
            <a{if $obj->usersInfo[i].password eq null} class="status" title="جهت فعال سازی این کاربر برای او کلمه عبور تعیین نمایید." {else} class="nostatus" {/if} >
        </td>
        <td>{$obj->usersInfo[i].shopname}</td>
        <td>{$obj->usersInfo[i].username}</td>
        <td>
        	<form method="post">
            <input type="hidden" value="{$obj->usersInfo[i].id}" name="user_id">
            	<input type="submit" class="password" style="border:none;" value="" name="passwordGenerator">              
            </form>
        </td>
        <td>
        	<form method="post">
            	<input type="submit" class="delete" style="border:none;" value="" name="deleteuser" onClick="return confirm('آیا مطمئنید می خواهید این فرد را حذف کنید؟')">
                <input type="hidden" value="{$obj->usersInfo[i].id}" name="user_id">
            </form>
         </td>
    </tr>
    <tr class="table_space">
    	<td></td><td></td><td></td><td></td><td></td>
    </tr>
	{/section}
    
    {$obj->msg_update}
</table>