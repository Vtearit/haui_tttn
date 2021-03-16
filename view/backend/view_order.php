<div class="row justify-content-center">
	<div class="col-md-12">
		<!-- card -->
		<div class="card border-primary">
			<div class="card card-header bg-primary text-white" style="padding:7px !important;">Danh sách đơn hàng</div>
				<div class="card-body">
				<!-- table -->
				<table class="table table-hover table-bordered">
					<tr>
						<th>Họ và tên khách hàng</th>
						<th>Sản phẩm</th>
                        <th>Ngày mua</th>
                        <th>Thanh toán</th>
						<th style="width: 150px;"></th>
					</tr>
					<?php 
						foreach($arr as $rows)
						{
					 ?>
					<tr>
						<td>
							<?php $customer = $this->model->fetch_one("select hovaten from tbl_customer where customer_id=".$rows->customer_id);
								echo isset($customer->hovaten)?$customer->hovaten:""; ?>
						
						</td>
						<td>
							<?php $product = $this->model->fetch_one("select c_name from tbl_product where pk_product_id=".$rows->pk_product_id);
								echo isset($product->c_name)?$product->c_name:""; ?>
						
						</td>
						<td><?php echo $rows->ngaymua; ?></td>
						<td><?php echo $rows->gia; ?></td>
						<td style="text-align: center;">
							<a href="admin.php?controller=order&act=delete&id=<?php echo $rows->order_id; ?>">Delete</a>
						</td>
					</tr>
					<?php } ?>
				</table>
				<!-- end table -->
				</div>
				<div class="card-footer" style="padding:7px !important">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Trang</a></li>
						<?php 
							for($i = 1; $i <= $num_page; $i++)
							{
						 ?>
						<li class="page-item"><a class="page-link" href="admin.php?controller=order&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
						<?php } ?>
					</ul>
				</div>
			</div>
		</div>
		<!-- end card -->
	</div>
</div>