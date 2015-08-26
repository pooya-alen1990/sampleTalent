{load_presentation_object filename='editproduct' assign='obj'}
<form class="form panel_box box border_gray div_shadow div_bgcolor" method="post">
                	<div class="bar_narrow"></div>
                    <ul>
                    	<li>
                        	<label for="pname_panelForm">نام محصول</label>
                            <input id="pname_panelForm" type="text" value="{$obj->productname}" name="productname">
                        </li>
                        <li class="textarea_li">
                        	<label for="pdesc_panelForm">توضیحات</label>
                           <textarea id="pdesc_panelForm" name="explain">{$obj->explain}</textarea>
                         </li>
                         <li>
                         	<label for="pprice_panelForm">قیمت</label>
                            <input type="text" id="pprice_panelForm" value="{$obj->price}" name="price">
                         </li>
                        <li class="submit_li">                        	
                        	<input type="submit" class="button gradient_orange" value="ویرایش" name="editproduct">
                            
                        </li> 
                        {$obj->msg_edit_product}
                	</ul>
</form>