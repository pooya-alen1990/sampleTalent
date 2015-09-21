<?php
/**
 * Created by PhpStorm.
 * User: pooya
 * Date: 9/20/15
 * Time: 9:29 AM
 */
$birthday_year_options = "";
for($i = 1320; $i < 1390; $i++){
    $birthday_year_options .= "<option>$i</option>";
}
$user = USERS::users_SelectRow($user_id);
$full_name = $user["first_name"]." ".$user["last_name"];
$full_name = G::alternative($full_name,"ندارد");
$user["job_title"] = G::alternative($user["job_title"],"ندارد");

if($user["birthday"] != "0") {
    $user["birthday"] = jdate("Y/m/d", $user["birthday"]);
}else{
    $user["birthday"] = "";
}
$user["birthday"] = G::alternative($user["birthday"],"ندارد");

$user["marriage_state"] = G::alternative($user["marriage_state"],"ندارد");
$user["gender"] = G::alternative($user["gender"],"ندارد");
$user["tel"] = G::alternative($user["tel"],"ندارد");
$user["mobile"] = G::alternative($user["mobile"],"ندارد");
$user["address"] = G::alternative($user["address"],"ندارد");

?>
<div class="image ">
    <div id="cropContainerEyecandy">
        <img class="croppedImg" src="<?php echo $user["cover_pic"]; ?>">
    </div>
</div>
<div class="col-sm-10 col-sm-offset-1 menu">
    <!-- <div>
        <a class="cropControls"><i class="icon-camera "></i></a>
    </div> -->
    <div class="menu-nav">
        <ul>
            <li><a href="#">ایجاد و ویرایش رزومه</a></li>
            <li><a href="#">نتایج ارزیابی</a></li>
            <li><a href="#">ایجاد و ویرایش برنامه توسعه</a></li>
            <li><a href="#">دشبورد فرصت ها</a></li>
        </ul>
    </div>
</div>
<div class="col-sm-10 col-sm-offset-1 user">
    <!-- <div class="user-image">
        <img src="images/user.jpg" width="100%" height="100%">
    </div> -->
    <div class="user-image">
        <div id="cropContainerModal">
            <img class="croppedImg" src="<?php echo $user["profile_pic"]; ?>">
        </div>
    </div>
    <div class="user-info">
        <div>
            <span id="full_name_label" ><?php echo $full_name; ?></span>

            <span><a  class='edit_popover' data-container="body" data-toggle="popover" tabindex="0" role="button"  data-placement='top'><i class="icon-edit"></i></a></span>

            <div class="edit-content" style="display: none">
                <div class="edit-hover"><img src="images/loading.gif"></div>
                <div><h5 class="text-center">نام</h5></div>
                <div><input maxlength="12" type="text"  id="first_name" ></div>
                <div><h5 class="text-center">نام خانوادگی</h5></div>
                <div><input maxlength="12" type="text" id="last_name"></div>

                <div class="change text-center"><a onclick="full_name()" ><i class="icon-check"></i></a><a onclick="$('.edit_popover').popover('hide');"  ><i class="icon-cancel"></i></a></div>

            </div>


        </div>
        <div class="clearfix"></div>
        <div>
            <span id="job_title_label" ><?php echo $user["job_title"]; ?></span>
            <span><a  class='edit_popover' data-container="body" data-toggle="popover"  data-placement='top' tabindex="1" role="button"><i class="icon-edit"></i></a></span>
            <div class="edit-content" style="display: none">
                <div class="edit-hover"><img src="images/loading.gif"></div>
                <div><h5 class="text-right">وضعیت موجود</h5></div>
                <div><input maxlength="20" id="job_title" type="text"></div>
                <div class="change text-center"><a onclick="mono('job_title')" ><i class="icon-check"></i></a><a onclick="$('.edit_popover').popover('hide');"><i class="icon-cancel"></i></a></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="groth pull-left">
        <img src="images/groth.png" height="200">
    </div>
</div>

<div class="clearfix"></div>
<div class="content profile-timeline">
    <ul class="timeline">
        <li>
            <div class="timeline-badge hidden-xs">
                <span>مشخصات کلی</span>
            </div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h4 class="timeline-title visible-xs">
                        مشخصات کلی
                        <a href="#" class="box edit text-center visible-xs" ><i class="icon-edit"></i></a>
                    </h4>

                </div>
                <div class="timeline-body public">
                    <div class="col-sm-11 col-sm-offset-1">

                        <div class="col-sm-5 col-sm-offset-1 pull-right">
                            <div class="div-box  col-xs-12">
                                <span class="labels col-sm-4 col-xs-12 pull-right">تاریخ تولد </span><span id="birthday_label" class="box box-value text-center col-xs-12 col-sm-6 pull-right"><?php echo $user["birthday"]; ?></span>


                                <span><a  class='box edit  pull-right text-center hidden-xs edit_popover' data-container="body" data-toggle="popover"  data-container="body" data-toggle="popover"  data-placement='top' tabindex="1" role="button"><i class="icon-edit "></i></a></span>
                                <div class="edit-content" style="display: none">
                                    <div class="edit-hover"><img src="images/loading.gif"></div>
                                    <div><h5 class="text-right">وضعیت موجود</h5></div>
                                    <div>
                                        <select id="birthday_day">
                                            <option>01</option><option>02</option><option>03</option><option>04</option><option>05</option><option>06</option>
                                            <option>07</option><option>08</option><option>09</option><option>10</option><option>11</option><option>12</option>
                                            <option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option>
                                            <option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option>
                                            <option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option>
                                            <option>31</option>
                                        </select>
                                        <select id="birthday_month">
                                            <option value="01">فروردین</option><option value="02">اردیبهشت</option><option value="03">خرداد</option>
                                            <option value="04">تیر</option><option value="05">مرداد</option><option value="06">شهریور</option>
                                            <option value="07">مهر</option><option value="08">آبان</option><option value="09">آذر</option>
                                            <option value="10">دی</option><option value="11">بهمن</option><option value="12">اسفند</option>
                                        </select>
                                        <select id="birthday_year"><?php echo $birthday_year_options; ?></select>
                                    </div>
                                    <div class="change text-center"><a onclick="birthday()" ><i class="icon-check"></i></a><a onclick="$('.edit_popover').popover('hide');"><i class="icon-cancel"></i></a></div>
                                </div>



                            </div>


                            <div class="div-box  col-xs-12">
                                <span class="labels col-sm-4 col-xs-12 pull-right">وضعیت تاهل</span>
                                <span id="marriage_state_label" class="box box-value text-center col-xs-12 col-sm-6 pull-right"><?php echo $user["marriage_state"]; ?></span>
                                <span><a  class='box edit  pull-right text-center hidden-xs edit_popover' data-container="body" data-toggle="popover"  data-container="body" data-toggle="popover"  data-placement='top' tabindex="1" role="button"><i class="icon-edit "></i></a></span>
                                <div class="edit-content" style="display: none">
                                    <div class="edit-hover"><img src="images/loading.gif"></div>
                                    <div><h5 class="text-right">وضعیت موجود</h5></div>
                                    <div><select id="marriage_state"><option>مجرد</option><option>متاهل</option></select></div>
                                    <div class="change text-center"><a onclick="mono('marriage_state')" ><i class="icon-check"></i></a><a onclick="$('.edit_popover').popover('hide');"><i class="icon-cancel"></i></a></div>
                                </div>
                            </div>


                            <div class="div-box  col-xs-12">
                                <span class="labels col-sm-4 col-xs-12 pull-right">جنسیت</span>
                                <span id="gender_label" class="box box-value text-center col-xs-12 col-sm-6 pull-right"><?php echo $user["gender"]; ?></span>
                                <span><a  class='box edit  pull-right text-center hidden-xs edit_popover' data-container="body" data-toggle="popover"  data-container="body" data-toggle="popover"  data-placement='top' tabindex="1" role="button"><i class="icon-edit "></i></a></span>
                                <div class="edit-content" style="display: none">
                                    <div class="edit-hover"><img src="images/loading.gif"></div>
                                    <div><h5 class="text-right">وضعیت موجود</h5></div>
                                    <div><select id="gender"><option>آقا</option><option>خانم</option></select></div>
                                    <div class="change text-center"><a onclick="mono('gender')" ><i class="icon-check"></i></a><a onclick="$('.edit_popover').popover('hide');"><i class="icon-cancel"></i></a></div>
                                </div>
                            </div>





                        </div>

                        <div class="col-sm-6 pull-left">


                            <div class="div-box  col-xs-12">
                                <span class="labels col-sm-4 col-xs-12 pull-right">شماره تماس</span>
                                <span id="tel_label" class="box box-value text-center col-xs-12 col-sm-6 pull-right"><?php echo $user["tel"]; ?></span>
                                <span><a  class='box edit  pull-right text-center hidden-xs edit_popover' data-container="body" data-toggle="popover"  data-container="body" data-toggle="popover"  data-placement='top' tabindex="1" role="button"><i class="icon-edit "></i></a></span>
                                <div class="edit-content" style="display: none">
                                    <div class="edit-hover"><img src="images/loading.gif"></div>
                                    <div><h5 class="text-right">وضعیت موجود</h5></div>
                                    <div><input maxlength="11" id="tel" type="text"></div>
                                    <div class="change text-center"><a onclick="mono('tel')" ><i class="icon-check"></i></a><a onclick="$('.edit_popover').popover('hide');"><i class="icon-cancel"></i></a></div>
                                </div>
                            </div>


                            <div class="div-box  col-xs-12">
                                <span class="labels col-sm-4 col-xs-12 pull-right">شماره همراه</span>
                                <span id="mobile_label" class="box box-value text-center col-xs-12 col-sm-6 pull-right"><?php echo $user["mobile"]; ?></span>
                                <span><a  class='box edit  pull-right text-center hidden-xs edit_popover' data-container="body" data-toggle="popover"  data-container="body" data-toggle="popover"  data-placement='top' tabindex="1" role="button"><i class="icon-edit "></i></a></span>
                                <div class="edit-content" style="display: none">
                                    <div class="edit-hover"><img src="images/loading.gif"></div>
                                    <div><h5 class="text-right">وضعیت موجود</h5></div>
                                    <div><input maxlength="11" id="mobile" type="text"></div>
                                    <div class="change text-center"><a onclick="mono('mobile')" ><i class="icon-check"></i></a><a onclick="$('.edit_popover').popover('hide');"><i class="icon-cancel"></i></a></div>
                                </div>
                            </div>


                            <div class="div-box  col-xs-12">
                                <span class="labels col-sm-4 col-xs-12 pull-right">آدرس محل سکونت</span>
                                <span id="address_label" class="box box-value text-center col-xs-12 col-sm-6 pull-right"><?php echo $user["address"]; ?></span>
                                <span><a  class='box edit  pull-right text-center hidden-xs edit_popover' data-container="body" data-toggle="popover"  data-container="body" data-toggle="popover"  data-placement='top' tabindex="1" role="button"><i class="icon-edit "></i></a></span>
                                <div class="edit-content" style="display: none">
                                    <div class="edit-hover"><img src="images/loading.gif"></div>
                                    <div><h5 class="text-right">وضعیت موجود</h5></div>
                                    <div><input id="address" type="text"></div>
                                    <div class="change text-center"><a onclick="mono('address')" ><i class="icon-check"></i></a><a onclick="$('.edit_popover').popover('hide');"><i class="icon-cancel"></i></a></div>
                                </div>
                            </div>


                        </div>

                    </div>
                </div>
            </div>
        </li>

        <li>
            <div class="timeline-badge hidden-xs">
                <span>پیشینه تحصیلی</span>
            </div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h4 class="timeline-title visible-xs">پیشینه تحصیلی</h4>

                </div>
                <div class="timeline-body public">
                    <div class="col-sm-11 col-sm-offset-1">
                        <hr class="hr">
                        <div class="tip1">
                            <h4>دکتری مدیریت منابع انسانی<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>گرایش رفتار سازمانی</h5>
                            <h5>دانشگاه تهران</h5>
                            <h5>1385 تا 1389</h5>
                        </div>
                        <div class="add-tip1">
                            <a  class="add">اضافه کردن<i class="icon-plus"></i></a>
                            <form method="post" id="education_form" enctype="multipart/form-data">

                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="col-sm-5">
                                            <label class="col-xs-6 pull-right">مقطع تحصیلی</label><input class="col-xs-6 pull-right" type="text" name="education_level">
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">معدل</label><input class="col-xs-6 pull-right" type="text" name="education_average">
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-2">
                                            <label class="col-xs-6 pull-right">رشته تحصیلی</label><input class="col-xs-6 pull-right" type="text" name="education_branch">
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">گرایش</label><input class="col-xs-6 pull-right" type="text" name="education_sub_branch">
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">دانشگاه</label><input class="col-xs-6 pull-right" type="text" name="education_university">
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-sm-6 col-sm-offset-6">
                                            <label class="col-sm-5 pull-right">طول دوره (سال)</label><input class="col-sm-2 pull-right" type="text" name="from_date">
                                            <label class="pull-right ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;تا&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input class="col-sm-2 pull-right" type="text" name="to_date">
                                            <input type="checkbox" name="now"> <span style="font-size: 10px;">
                            ادامه دارد
                                </span>

                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-sm-6 col-sm-offset-6">
                                            <div class="col-xs-12">
                                                <p>خلاصه ای از فعالیت ها و افتخارات در این مقطع</p>

                                                <input type="file" name="attach_file" id="files-upload">
                                                <input type="hidden" name="name" id="education">

                                                <a class="col-sm-1 padding-big"  href="#">
                                                    <i class="icon-link"></i>
                                                </a>

                                                <textarea class="col-sm-11" name="activities"></textarea>

                                            </div>
                                        </div>
                                        <div class="col-xs-12 text-left buttons" >
                                            <input type="reset" value="انصراف">
                                            <input type="button" onclick="add_item('education')" value="ذخیره">

                                        </div>
                                        <div class="clearfix"></div>

                                    </div>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>

        </li>

        <li>
            <div class="timeline-badge hidden-xs">
                <span>پیشینه شغلی</span>
            </div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h4 class="timeline-title visible-xs">پیشینه شغلی</h4>

                </div>
                <div class="timeline-body public">
                    <div class="col-sm-11 col-sm-offset-1">
                        <hr class="hr">
                        <div class="tip1">
                            <h4>همکاران سیستم<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>کارشناس منابع انسانی</h5>
                            <h5>1385 تا 1389</h5>
                            <hr class="min-hr">
                        </div>
                        <div class="add-tip1">
                            <a  class="add">اضافه کردن<i class="icon-plus"></i></a>
                            <form method="post">

                                <div class="row">
                                    <div class="col-xs-12">

                                        <div class="col-sm-5 col-sm-offset-7">
                                            <label class="col-xs-6 pull-right">نام سازمان</label><input class="col-xs-6 pull-right" type="text" name="reshte">
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">عنوان شغل</label><input class="col-xs-6 pull-right" type="text" name="reshte">
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">گروه شغلی</label>
                                            <div class="styled-select no-margin">
                                                <select class="col-xs-6 pull-right" name="reshte">
                                                    <option>مدیر</option>
                                                    <option>معاون</option>
                                                    <option>ارشد</option>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">موقعیت حرفه ای</label>
                                            <div class="styled-select no-margin">
                                                <select class="col-xs-6 pull-right" name="reshte">
                                                    <option>مدیر</option>
                                                    <option>معاون</option>
                                                    <option>ارشد</option>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="col-sm-9 col-sm-offset-3">
                                            <label class="col-sm-4 pull-right">طول دوره</label>
                                            <div class="styled-select pull-right">
                                                <select class="pull-right" name="reshte">
                                                    <option>فروردین</option>
                                                    <option>اردیبهشت</option>
                                                    <option>خرداد</option>
                                                </select>
                                            </div>
                                            <div class="styled-select pull-right">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>
                                            </div>
                                            <label class="pull-right ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;تا&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <div class="styled-select pull-right">
                                                <select class="pull-right" name="reshte">
                                                    <option>فروردین</option>
                                                    <option>اردیبهشت</option>
                                                    <option>خرداد</option>
                                                </select>
                                            </div>
                                            <div class="styled-select pull-right">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>
                                            </div>
                                            <input type="checkbox"> <span style="font-size: 10px;">
                            ادامه دارد
                                </span>

                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-sm-6 col-sm-offset-6">
                                            <div class="col-xs-12">
                                                <p>خلاصه ای از فعالیت ها و افتخارات</p>
                                                <a class="col-sm-1 padding-big"  href="#"><i class="icon-link"></i></a>
                                                <textarea class="col-sm-11"></textarea>

                                            </div>
                                        </div>
                                        <div class="col-xs-12 text-left buttons" >
                                            <input type="reset" value="انصراف">
                                            <input type="submit" value="ذخیره">

                                        </div>
                                        <div class="clearfix"></div>

                                    </div>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>
        </li>
        <div class="clearfix"></div>

        <li>
            <div class="timeline-badge hidden-xs">
                <span>پروژه ها</span>
            </div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h4 class="timeline-title visible-xs">پروژه ها</h4>

                </div>
                <div class="timeline-body public">
                    <div class="col-sm-11 col-sm-offset-1">
                        <hr class="hr">
                        <div class="tip1">
                            <h4>بناک<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>مدیریت</h5>
                        </div>
                        <div class="add-tip1">
                            <a  class="add">اضافه کردن<i class="icon-plus"></i></a>
                            <form method="post">

                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="col-sm-5 col-sm-offset-7">
                                            <label class="col-xs-6 pull-right">عنوان پروژه</label><input class="col-xs-6 pull-right" type="text" name="reshte">
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">سمت یا نقش</label><input class="col-xs-6 pull-right" type="text" name="reshte">
                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="clearfix"></div>

                                        <div class="clearfix"></div>
                                        <div class="col-sm-6 col-sm-offset-6">
                                            <div class="col-xs-12">
                                                <p>
                                                    خلاصه ای از فعالیت ها و افتخارات مرتبط
                                                </p>
                                                <a class="col-sm-1 padding-big"  href="#"><i class="icon-link"></i></a>
                                                <textarea class="col-sm-11"></textarea>

                                            </div>
                                        </div>
                                        <div class="col-xs-12 text-left buttons" >
                                            <input type="reset" value="انصراف">
                                            <input type="submit" value="ذخیره">

                                        </div>
                                        <div class="clearfix"></div>


                                    </div>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>

        </li>

        <div class="clearfix"></div>

        <li>
            <div class="timeline-badge hidden-xs">
                <span>دانش و مهارت</span>
            </div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h4 class="timeline-title visible-xs">دانش و مهارت</h4>

                </div>
                <div class="timeline-body public">
                    <div class="col-sm-11 col-sm-offset-1">
                        <hr class="hr">
                        <h3>دانشی</h3>
                        <div class="tip1 col-sm-5">
                            <h4>بناک<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>مدیریت</h5>
                        </div>
                        <div class="tip1 col-sm-5 col-sm-offset-2">
                            <h4>بناک<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>مدیریت</h5>
                        </div>
                        <div class="clearfix"></div>
                        <div class="add-tip1">
                            <a  class="add">اضافه کردن<i class="icon-plus"></i></a>
                            <form method="post">

                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="col-sm-5 col-sm-offset-7">
                                            <label class="col-xs-6 pull-right">حوزه دانشی</label>
                                            <div class="styled-select pull-right col-xs-6 no-margin">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">میزان تسلط</label>
                                            <div class="styled-select pull-right col-xs-6 no-margin">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">مدرک مرتبط</label>
                                            <div class="styled-select pull-right col-xs-5 ">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>

                                            </div>
                                            <a href="#" class="padding-small"><i class="icon-link"></i></a>

                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="clearfix"></div>



                                        <div class="col-xs-12 text-left buttons" >
                                            <input type="reset" value="انصراف">
                                            <input type="submit" value="ذخیره">

                                        </div>
                                        <div class="clearfix"></div>

                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                        <h3>ابزار و نرم افزارها</h3>
                        <div class="tip1 col-sm-5">
                            <h4>بناک<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>مدیریت</h5>
                        </div>
                        <div class="tip1 col-sm-5 col-sm-offset-2">
                            <h4>بناک<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>مدیریت</h5>
                        </div>
                        <div class="clearfix"></div>
                        <div class="add-tip1">
                            <a  class="add">اضافه کردن<i class="icon-plus"></i></a>
                            <form method="post">

                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="col-sm-5 col-sm-offset-7">
                                            <label class="col-xs-6 pull-right">عنوان</label>
                                            <div class="styled-select pull-right col-xs-6 no-margin">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">میزان تسلط</label>
                                            <div class="styled-select pull-right col-xs-6 no-margin">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">مدرک مرتبط</label>
                                            <div class="styled-select pull-right col-xs-5 ">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>

                                            </div>
                                            <a href="#" class="padding-small"><i class="icon-link"></i></a>

                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="clearfix"></div>



                                        <div class="col-xs-12 text-left buttons" >
                                            <input type="reset" value="انصراف">
                                            <input type="submit" value="ذخیره">

                                        </div>
                                        <div class="clearfix"></div>

                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                        <h3>زبان</h3>
                        <div class="tip1 col-sm-5">
                            <h4>بناک<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>مدیریت</h5>
                        </div>
                        <div class="tip1 col-sm-5 col-sm-offset-2">
                            <h4>بناک<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>مدیریت</h5>
                        </div>
                        <div class="clearfix"></div>
                        <div class="add-tip1">
                            <a  class="add">اضافه کردن<i class="icon-plus"></i></a>
                            <form method="post">

                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="col-sm-5 col-sm-offset-7">
                                            <label class="col-xs-6 pull-right">عنوان</label>
                                            <div class="styled-select pull-right col-xs-6 no-margin">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">میزان تسلط</label>
                                            <div class="styled-select pull-right col-xs-6 no-margin">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>
                                            </div>
                                            <div class="clearfix"></div>
                                            <label class="col-xs-6 pull-right">مدرک مرتبط</label>
                                            <div class="styled-select pull-right col-xs-5 ">
                                                <select class=" pull-right" name="reshte">
                                                    <option>1391</option>
                                                    <option>1392</option>
                                                    <option>1393</option>
                                                </select>

                                            </div>
                                            <a href="#" class="padding-small"><i class="icon-link"></i></a>

                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="clearfix"></div>



                                        <div class="col-xs-12 text-left buttons" >
                                            <input type="reset" value="انصراف">
                                            <input type="submit" value="ذخیره">

                                        </div>
                                        <div class="clearfix"></div>

                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                        <h3>مهارت های حرفه ای</h3>
                        <div class="tip1">
                            <h4>بناک<a href="#"><i class="icon-pencil pull-left"></i></a></h4>
                            <h5>مدیریت</h5>
                        </div>

                        <div class="clearfix"></div>
                        <div class="add-tip1">
                            <a  class="add">اضافه کردن<i class="icon-plus"></i></a>
                            <form method="post">

                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="col-sm-4">

                                        </div>

                                        <div class="col-sm-2">
                                            <label class="pull-right">کار تیمی</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">کار تیمی</label><input class="pull-left"  type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">کار تیمی</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">کار تیمی</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="col-sm-2 col-sm-offset-1">
                                            <label class="pull-right">مذاکره</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">مذاکره</label><input class="pull-left"  type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">مذاکره</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">مذاکره</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="col-sm-2  col-sm-offset-1">
                                            <label class="pull-right">خود مدیریتی</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">خود مدیریتی</label><input class="pull-left"  type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">خود مدیریتی</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                            <label class="pull-right">خود مدیریتی</label><input class="pull-left" type="checkbox">
                                            <div class="clearfix"></div>
                                        </div>


                                        <div class="clearfix"></div>



                                        <div class="col-xs-12 text-left buttons" >
                                            <input type="reset" value="انصراف">
                                            <input type="submit" value="ذخیره">

                                        </div>
                                        <div class="clearfix"></div>

                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"></div>


                    </div>
                </div>
            </div>

        </li>
        <li>
            <div class="timeline-badge hidden-xs">
                <span>این منم</span>
            </div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h4 class="timeline-title visible-xs">این منم</h4>

                </div>
                <div class="timeline-body public">
                    <div class="col-sm-11 col-sm-offset-1">
                        <div class="col-sm-5 resume">
                            <div class="tip1 ">
                                <h5 class="text-center">آپلود رزومه تصویری من</h5>
                            </div>
                            <a href="#">مشاهده یک رزومه تصویری عالی</a>
                        </div>
                        <div class=" col-sm-5 col-sm-offset-2 resume">
                            <div class="tip1">
                                <h5 class="text-center">معرفی من</h5>
                            </div>
                            <a href="#">مشاهده یک نمونه معرفی</a>
                        </div>
                        <div class="clearfix"></div>



                    </div>
                </div>
            </div>

        </li>
        <div class="clearfix"></div>
        <li>
            <div class="timeline-badge hidden-xs">
                <span>اجازه دسترسی کارفرما</span>
            </div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h4 class="timeline-title visible-xs">اجازه دسترسی کارفرما</h4>

                </div>
                <div class="timeline-body public">
                    <div class="col-sm-11 col-sm-offset-1">
                        <div class="col-sm-12 text-center">
                            <div class="div-permission col-sm-4 col-sm-offset-4">
                                <span class="pull-right">عدم نمایش پروفایل من برای کارفرمایان</span><input type="checkbox" id="checkbox-1-1" class="regular-checkbox big-checkbox"><label for="checkbox-1-1"  class="pull-left"></label>
                            </div>
                            <div class="div-permission col-sm-4 col-sm-offset-4">

                                <span class="pull-right">عدم نمایش نتایج ارزیابی برای کارفرمایان</span><input type="checkbox" id="checkbox-1-2" class="regular-checkbox big-checkbox"><label for="checkbox-1-2" class="pull-left"></label>

                            </div>

                        </div>

                        <div class="clearfix"></div>



                    </div>
                </div>
            </div>

        </li>

    </ul>

</div>
