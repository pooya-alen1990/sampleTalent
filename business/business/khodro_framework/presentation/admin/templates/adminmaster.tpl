{load_presentation_object filename='adminmaster' assign='obj'}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    
    <title>Free CSS template by ChocoTemplates.com</title>
    

<link rel="stylesheet" type="text/css" href="index.css" media="all">
</head>
<body>
<!-- Header -->
<div id="header">
    <div class="shell">
        <!-- Logo + Top Nav -->
        <div id="top">
            <h1><a href="#">SpringTime</a></h1>
            <div id="top-navigation">
                Welcome <a href="#"><strong>Administrator</strong></a>
                <span>|</span>
                <a href="#">Help</a>
                <span>|</span>
                <a href="#">Profile Settings</a>
                <span>|</span>
                <a href="#">Log out</a>
            </div>
        </div>
        <!-- End Logo + Top Nav -->
        
        <!-- Main Nav -->
        <div id="navigation">
            <ul>
                <li><a href="#" class="active"><span>Dashboard</span></a></li>
                <li><a href="?r=cmsmanagement"><span>CMS</span></a></li>
                <li><a href="#"><span>User Management</span></a></li>
                <li><a href="#"><span>Photo Gallery</span></a></li>
                <li><a href="#"><span>Products</span></a></li>
                <li><a href="#"><span>Services Control</span></a></li>
            </ul>
        </div>
        <!-- End Main Nav -->
    </div>
</div>
<!-- End Header -->

<!-- Container -->
<div id="container">
    <div class="shell">
        
        <!-- Small Nav -->
        <div class="small-nav">
            <a href="#">Dashboard</a>
            <span>&gt;</span>
            Current Articles
        </div>
        <!-- End Small Nav -->
        
        <!-- Message OK -->        
        
        <!-- End Message Error -->
        <br>
        <!-- Main -->
        {include file=$obj->page}
        <!-- Main -->
    </div>
</div>
<!-- End Container -->

<!-- Footer -->
<div id="footer">
    <div class="shell">
        <span class="left">© 2010 - CompanyName</span>
        <span class="right">
            Design by <a href="http://chocotemplates.com/" target="_top" title="The Sweetest CSS Templates WorldWide">Chocotemplates.com</a>
        </span>
    </div>
</div>
<!-- End Footer -->
    

</body>
</html>
