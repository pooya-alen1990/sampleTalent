{load_presentation_object filename='newproduct' assign='obj'}
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
                      {$obj->msg_new_product}
                	</ul>
</form>