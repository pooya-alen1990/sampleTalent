{load_presentation_object filename='register' assign='obj'}
<form class="form box index_box border_gray div_shadow div_bgcolor" method="post" action="">
                	<div class="bar_narrow"></div>
                    <ul>
                    	<li>
                        	<label for="username_register"><span class="red">*</span> نام کاربری</label>
                            <input id="username_registe" class="" name="username" type="text" value="{$obj->username}"> {$obj->username_error}
                            <span class="error">alaki</span>
                        </li>
                        
                        <li>
                        	<label for="fname_register"><span class="red">*</span> نام</label>
                            <input id="fname_register" class="" name="fname" type="text" value="{$obj->fname}"> {$obj->fname_error}
                          
                        </li>
                    	
                        <li>
                        	
                            <label for="lname_register"><span class="red">*</span> نام خانوادگی</label>
                            <input id="lname_register" class="" name="lname" type="text" value="{$obj->lname}"> {$obj->lname_error}
                            
                         </li>
                         <li>
                        	<label for="shopName_register"><span class="red">*</span> نام فروشگاه</label>
                            <input id="shopName_register" class=""  name="shopname" type="text" value="{$obj->shopname}"> {$obj->shopname_error}
                            
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
                            <input id="tel_register" class="" type="text" name="tel" value="{$obj->tel}"> {$obj->tel_error}
                           
                         </li>
                         <li>
                        	<label for="mobile_register"><span class="red">*</span> تلفن همراه</label>
                            <input id="mobile_register" class="" type="text" name="mobile" value="{$obj->mobile}"> {$obj->mobile_error}
                           
                         </li>
                         <li>
                        	<label for="city_register"><span class="red">*</span> شهر</label>
                            <input id="city_register" class=""  type="text" name="city" value="{$obj->city}"> {$obj->city_error}
                            
                         </li>
                         <li>
                        	<label for="email_register"><span class="red">*</span> ایمیل</label>
                            <input id="email_register" class=""  type="text" name="email" value="{$obj->email}"> {$obj->email_error}
                           
                         </li>
                         <li>
                        	<label for="address_register"><span class="red">*</span> آدرس</label>
                            <textarea id="address_register" class=""  name="address">{$obj->address}</textarea><br> {$obj->address_error}
                            
                         </li>
                        <li class="submit_li">
                        	
                        	<input type="submit"  name="submit_register" class="button gradient_orange" value="ثبت نام">
                            
                        </li>
                        
                         <li>
							{$obj->msg_register}
                        </li>
                	</ul>
</form>
