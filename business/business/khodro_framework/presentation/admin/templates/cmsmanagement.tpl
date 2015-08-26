{load_presentation_object filename='cmsmanagement' assign='obj'}
{$obj->message}
<div id="main">
            <div class="cl">&nbsp;</div>
            
            <!-- Content -->
            <div id="content">
                
                <!-- Box -->
                <div class="box">
                    <!-- Box Head -->
                    <div class="box-head">
                        <h2 class="left">مدیریت محتوا</h2>
                        <div class="right">
                            <label>search articles</label>
                            <input value="" class="field small-field" type="text">
                            <input class="button" value="search" type="submit">
                        </div>
                    </div>
                    <!-- End Box Head -->    

                    <!-- Table -->
                    <div class="table">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tbody><tr>
                                <th width="13"><input class="checkbox" type="checkbox"></th>
                                <th>عنوان</th>
                                <th>تاریخ</th>
                                <th>کاربر</th>
                                <th class="ac" width="110">دستورات</th>
                            </tr>
                            {section name=i loop=$obj->allCms}
                            <tr>
                                <td><input class="checkbox" type="checkbox"></td>
                                <td><h3><a href="#">{$obj->allCms[i].title}</a></h3></td>
                                <td>{$obj->allCms[i].pDate}</td>
                                <td><a href="#">Administrator</a></td>
                                <td><a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a></td>
                            </tr>
                             {/section}
                        </tbody></table>
                        
                        
                        <!-- Pagging -->
                        <div class="pagging">
                            <div class="left">Showing 1-12 of 44</div>
                            <div class="right">
                                <a href="#">Previous</a>
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">245</a>
                                <span>...</span>
                                <a href="#">Next</a>
                                <a href="#">View all</a>
                            </div>
                        </div>
                        <!-- End Pagging -->
                        
                    </div>
                    <!-- Table -->
                    
                </div>
                <!-- End Box -->
                
                <!-- Box -->
                <div class="box">
                    <!-- Box Head -->
                    <div class="box-head">
                        <h2>Add New Article</h2>
                    </div>
                    <!-- End Box Head -->
                    
                    <form action="" method="post">
                        
                        <!-- Form -->
                        <div class="form">
                                <p>
                                    <span class="req">max 100 symbols</span>
                                    <label>عنوان <span>(Required Field)</span></label>
                                    <input value="" class="field size1" type="text" name="txtTitle">
                                </p>    
                                <p class="inline-field">
                                    <label>گروه</label>
                                  
                                    {$obj->allCategories}
                                </p>
                                
                                <p>
                                    <span class="req">max 100 symbols</span>
                                    <label>متن <span>(Required Field)</span></label>
                                    <textarea class="field size1" rows="10" cols="30" name="txtBody"></textarea>
                                </p>    
                            
                        </div>
                        <!-- End Form -->
                        
                        <!-- Form Buttons -->
                        <div class="buttons">
                            <input class="button" value="preview" type="button">
                            <input class="button" value="submit" type="submit" name="submit">
                        </div>
                        <!-- End Form Buttons -->
                    </form>
                </div>
                <!-- End Box -->

            </div>
            <!-- End Content -->
            
            <!-- Sidebar -->
            <div id="sidebar">
                
                <!-- Box -->
                <div class="box">
                    
                    <!-- Box Head -->
                    <div class="box-head">
                        <h2>Management</h2>
                    </div>
                    <!-- End Box Head-->
                    
                    <div class="box-content">
                        <a href="#" class="add-button"><span>Add new Article</span></a>
                        <div class="cl">&nbsp;</div>
                        
                        <p class="select-all"><input class="checkbox" type="checkbox"><label>select all</label></p>
                        <p><a href="#">Delete Selected</a></p>
                        
                        <!-- Sort -->
                        <div class="sort">
                            <label>Sort by</label>
                            <select class="field">
                                <option value="">Title</option>
                            </select>
                            <select class="field">
                                <option value="">Date</option>
                            </select>
                            <select class="field">
                                <option value="">Author</option>
                            </select>
                        </div>
                        <!-- End Sort -->
                        
                    </div>
                </div>
                <!-- End Box -->
            </div>
            <!-- End Sidebar -->
            
            <div class="cl">&nbsp;</div>            
        </div>