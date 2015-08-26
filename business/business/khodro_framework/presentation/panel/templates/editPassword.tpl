{load_presentation_object filename='editpassword' assign='obj'}
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
                        {$obj->msg_edit_password}
                	</ul>
</form>