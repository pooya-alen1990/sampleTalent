{load_presentation_object filename='editprofile' assign='obj'}
<form class="form box panel_box border_gray div_shadow div_bgcolor" method="post">
                	<div class="bar_narrow"></div>
                    <ul>
                        <li>
                        	<label for="fname_register"><span class="red">*</span> نام کاربری</label>
                            <input id="fname_register" type="text" value="{$obj->username}" name="username" disabled>
                        </li>
                    	<li>
                        	<label for="fname_register"><span class="red">*</span> نام</label>
                            <input id="fname_register" type="text" value="{$obj->fname}" name="fname">
                        </li>
                        <li>
                        	<label for="lname_register"><span class="red">*</span> نام خانوادگی</label>
                            <input id="lname_register" type="text" value="{$obj->lname}" name="lname">
                         </li>
                         <li>
                        	<label for="shopName_register"><span class="red">*</span> نام فروشگاه</label>
                            <input id="shopName_register" type="text" value="{$obj->shopname}" name="shopname">
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
                            <input id="mobile_register" type="text" value="{$obj->mobile}" name="mobile">
                         </li>
                         <li>
                        	<label for="tel_register"><span class="red">*</span> تلفن ثابت</label>
                            <input id="tel_register" type="text" value="{$obj->tel}" name="tel">
                         </li>
                         <li>
                        	<label for="city_register"><span class="red">*</span> شهر</label>
                            <input id="city_register" type="text" value="{$obj->city}" name="city">
                         </li>
                         <li>
                        	<label for="email_register"><span class="red">*</span> ایمیل</label>
                            <input id="email_register" type="text" value="{$obj->email}" name="email">
                         </li>
                         <li>
                        	<label for="address_register"><span class="red">*</span> آدرس</label>
                            <textarea id="address_register" name="address">{$obj->address}</textarea>
                         </li>
                        <li class="submit_li">
                        	<input type="submit" class="button gradient_orange" value="ویرایش" name="update_profile">         
                        </li>
                        {$obj->msg_update}
                	</ul>
</form>