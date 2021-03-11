<?php 
	class controller_gioithieu{
		public $model;
		public function __construct(){
			//load view
			include "view/frontend/view_gioithieu.php";
		}
	}
	new controller_gioithieu();
?>