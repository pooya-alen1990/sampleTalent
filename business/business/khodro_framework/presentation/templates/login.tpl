{load_presentation_object filename='login' assign='obj'}
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
                        {$obj->msg_login}
                	</ul>
</form>