<!DOCTYPE html>
<html>
<head>
	<title>Admin page</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="public/backend/css/bootstrap.min.css">
  <script type="text/javascript" src="public/backend/ckeditor/ckeditor.js"></script>
  <style type="text/css">
        li:hover {
            text-decoration: underline;
            color: red;
        }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="admin.php">Trang chủ<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=category_product">Danh mục sản phẩm</a>
          </li>
		<li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=product">Sản phẩm</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=order">Danh sách đơn hàng</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=customer">Danh sách khách hàng</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=news">Tin tức</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=user">Danh sách tài khoản đăng nhập</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=logout">Đăng xuất</a>
          </li>
        </ul>        
      </div>
    </nav>
    <div class="container" style="margin-top: 70px;">
    	<?php 
    		if(file_exists($controller) == true)
    			include $controller;
    	 ?>
    </div>
</body>
</html>