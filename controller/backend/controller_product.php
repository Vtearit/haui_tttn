<?php 
	class controller_product{
		public $model;
		public function __construct(){
			$this->model = new model();
			//--------
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "delete":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//---------
					//lay duong dan anh cu de xoa
					$old_img = $this->model->fetch_one("select c_img from tbl_product where pk_product_id=$id");
					if(file_exists("public/upload/product/".$old_img->c_img)){
						//ham unlink(duongdan) se thuc hien viec xoa file theo duongdan
						unlink("public/upload/product/".$old_img->c_img);
					}
					//---------
					//thuc thi cau truy van
					$this->model->execute("delete from tbl_product where pk_product_id=$id");
					header("location:admin.php?controller=product");
				break;
			}
			//--------
			//so ban ghi tren mot trang
			$record_per_page = 4;
			//tinh tong so ban ghi
			$total = $this->model->count("select * from tbl_product");
			//tinh so trang = tongsobanghi/sobanghitrenmottrang
			$num_page = ceil($total/$record_per_page);
			//lay bien trang tu url
			$page = isset($_GET["p"])&&$_GET["p"]>0?$_GET["p"]-1:0;
			//lay tu ban ghi bao nhieu tuong ung trang bao nhieu = tranghientai * soluongbanghi
			$from = $page*$record_per_page;
			//lay tat ca cac ban ghi bang ham fetch
			$arr = $this->model->fetch("select * from tbl_product order by pk_product_id desc limit $from,$record_per_page");
			//--------
			//load view
			include "view/backend/view_product.php";
		}
	}
	new controller_product();
 ?>