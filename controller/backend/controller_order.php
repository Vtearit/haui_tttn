<?php 
	class controller_order{
		public $model;
		public function __construct(){
			$this->model = new model();
			//--------
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "delete":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//thuc thi cau truy van
					$this->model->execute("delete from tbl_order where order_id=$id");
					header("location:admin.php?controller=order");
				break;
			}
			//--------
			//so ban ghi tren mot trang
			$record_per_page = 4;
			//tinh tong so ban ghi
			$total = $this->model->count("select tbl_customer.hovaten, tbl_product.c_name, 
            tbl_order.ngaymua, tbl_order.gia from tbl_order 
            inner join tbl_order_detail 
            on tbl_order.order_id = tbl_order_detail.order_id 
            inner join tbl_customer 
            on tbl_order.customer_id = tbl_customer.customer_id 
            inner join tbl_product 
            on tbl_order_detail.fk_product_id = tbl_product.pk_product_id");
			//tinh so trang = tongsobanghi/sobanghitrenmottrang
			$num_page = ceil($total/$record_per_page);
			//lay bien trang tu url
			$page = isset($_GET["p"])&&$_GET["p"]>0?$_GET["p"]-1:0;
			//lay tu ban ghi bao nhieu tuong ung trang bao nhieu = tranghientai * soluongbanghi
			$from = $page*$record_per_page;
			//lay tat ca cac ban ghi bang ham fetch
			$arr = $this->model->fetch("select * from tbl_order order by order_id desc limit $from,$record_per_page");
			//--------
			//load view
			include "view/backend/view_order.php";
		}
	}
	new controller_order();
 ?>