<?php if($blog_list == false){ die('شما مجوز دسترسی به این صفحه را ندارید.'); } ?>
<h3 class="sub-header">لیست بلاگ ها</h3>
<table class="table table-striped table-hover table-bordered">
				<tr>		
					<th>ردیف</th>			
					<th>شماره بلاگ</th>
                    <th width="20%">عنوان</th>
					<th>عنوان انگلیسی</th>
					<th>تاریخ ثبت</th>
                    <th>تعداد بازدید</th>
                    <th>فعال</th>
                    <th>عملیات</th>
				</tr>
<?php
	

	if(isset($_POST['edit'])){
		DatabaseHandler::execute("UPDATE `blogs` SET `activate` = !`activate` WHERE `id` = '$_POST[blog_id]' ; ");
	}

	
	$blogs = BLOGS::blogs_SelectAll();
	
	$i = 1;
	foreach($blogs as $blog){

		$blog["add_time"] = jdate("Y/m/d",$blog["add_time"]);

		$checked = "";
		if($blog["activate"]){
			$blog["activate"] = "<span style='color:green'>فعال</span>";
			$checked = "checked";
		}else{
			$blog["activate"] = "<span style='color:red'>غیر فعال</span>";
		}

		echo "
		  <tr>
		  			<td>$i</td>
					<td>$blog[id]</td>
					<td>$blog[title]</td>
					<td>$blog[title_en]</td>
					<td>$blog[add_time]</td>
					<td>$blog[hit_count]</td>
					<td>$blog[activate] <form method='post' id='form$blog[id]'><input type='hidden' name='blog_id' value='$blog[id]'><input  onchange='$(".'"#form'.$blog["id"].'"'.").submit();' type='checkbox' name='edit' class='edit'></form></td>
					<td>
						<a href='?page=blog_insert&id=$blog[id]'>ویرایش</a>
					</td>	
		  </tr>";	
		$i++;
	}
?> 
</table>
