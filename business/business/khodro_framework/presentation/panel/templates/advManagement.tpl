{load_presentation_object filename='advManagement' assign='obj'}
<div class="form panel_box box border_gray div_shadow div_bgcolor">
                	<div class="bar_narrow"></div>
                    <ul>
                    	<li style="text-align:center;">کلیه آگهی ها باید با اندازه 200*200 پیکسل وارد شوند.</li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی صفحه اول سمت راست بالا</label>
                            <input type="file" id="test" name="mainRightTop">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_mainRightTop"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی صفحه اول سمت راست پایین</label>
                            <input type="file" id="test" name="mainRightBottom">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_mainRightBottom"></form>
                         </li><hr>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت راست بالا</label>
                            <input type="file" name="panelRightTop">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelRightTop"></form>
                         </li>
						 <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت راست پایین</label>
                            <input type="file" name="panelRightBottom">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelRightBottom"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت چپ بالا</label>
                            <input type="file" name="panelLeftTop">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelLeftTop"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت چپ وسط</label>
                            <input type="file" name="panelLeftMiddle">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelLeftMiddle"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">آگهی پنل کاربری سمت چپ پایین</label>
                            <input type="file" name="panelLeftBottom">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_panelLeftBottom"></form>
                         </li><hr>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">بنر 1 - 390*700</label>
                            <input type="file" name="banner1">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_banner1"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">بنر 2 - 390*700</label>
                            <input type="file" name="banner2">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_banner2"></form>
                         </li>
                         <li><form method="post" enctype="multipart/form-data">
                         	<label for="test">بنر 3 - 390*700</label>
                            <input type="file" name="banner3">
                            <input type="submit" class="button gradient_orange" value="ثبت" name="submit_banner3"></form>
                         </li>
                        {$obj->msg_edit_adv}
                	</ul>
</div>