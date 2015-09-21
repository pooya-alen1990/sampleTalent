<?php if($blog_list == false){ die('شما مجوز دسترسی به این صفحه را ندارید.'); } ?>
<h3 class="sub-header">لیست بلاگ ها</h3>
<table class="table table-striped table-hover table-bordered">
				<tr>		
					<th>ردیف</th>			
					<th>نام</th>
                    <th>ایمیل</th>
					<th>متن کامنت</th>
					<th>تاریخ ثبت</th>
                    <th>شماره پست</th>
                    <th>فعال</th>
                    <th>عملیات</th>
				</tr>
<?php
	

	if(isset($_POST['edit'])){
		DatabaseHandler::execute("UPDATE `comments` SET `activate` = !`activate` WHERE `id` = '$_POST[comment_id]' ; ");
	}
	
	$comments = COMMENTS::comments_SelectAll();
	
	$i = 1;
	foreach($comments as $comment){

		$comment["add_time"] = jdate("Y/m/d",$comment["add_time"]);

		$checked = "";
		if($comment["activate"]){
			$comment["activate"] = "<span style='color:green'>فعال</span>";
			$checked = "checked";
		}else{
			$comment["activate"] = "<span style='color:red'>غیر فعال</span>";
		}


		$blog = BLOGS::blogs_SelectRow($comment["blog_id"]);
		echo "
		  <tr>
		  			<td>$i</td>
					<td>$comment[full_name]</td>
					<td>$comment[mail]</td>
					<td>$comment[text]</td>
					<td>$comment[add_time]</td>
					<td>$blog[title]</td>
					<td>$comment[activate] <form method='post' id='form$comment[id]'><input type='hidden' name='comment_id' value='$comment[id]'><input  onchange='$(".'"#form'.$comment["id"].'"'.").submit();' type='checkbox' name='edit' class='edit'></form></td>
					<td>
						<a href='#'>پاسخ</a>
					</td>	
		  </tr>";	
		$i++;
	}
?> 
</table>
