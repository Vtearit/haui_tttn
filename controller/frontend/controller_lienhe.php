<?php 
	class controller_lienhe{
		public $model;
		public function __construct(){
			//load view
			include "view/frontend/view_lienhe.php";
		}
	}
	new controller_lienhe();
?>