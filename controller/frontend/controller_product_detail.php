<?php 
	class controller_product_detail{
		public $model;
		public function __construct(){
			$this->model = new model();
			$id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
			//lay 1 ban ghi
			$arr = $this->model->fetch_one("select * from tbl_product where pk_product_id=$id");
			//load view
			include "view/frontend/view_product_detail.php";
		}
	}
	new controller_product_detail();
 ?>