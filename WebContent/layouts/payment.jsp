<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layouts/header.jsp"%>
<%@include file="../layouts/slide.jsp"%>
<div class="container">
	<div class="row">
		<h1>PAYMENT</h1>
		<div class="process">
			<div class="process-row nav nav-tabs">
				<div class="process-step">
					<button type="button" class="btn btn-info btn-circle"
						data-toggle="tab" href="#menu1">
						<span class="glyphicon glyphicon-pencil"></span>
					</button>
					<p>APPOINTMENT</p>
				</div>
				<div class="process-step">
					<button type="button" class="btn btn-default btn-circle"
						data-toggle="tab" href="#menu2">
						<span class="glyphicon glyphicon-usd"></span>
					</button>
					<p>
						<small>BILL</small>
					</p>
				</div>
				<div class="process-step">
					<button type="button" class="btn btn-default btn-circle"
						data-toggle="tab" href="#menu3">
						<span class="glyphicon glyphicon-ok"></span>
					</button>
					<p>
						<small>CHECK & CONFIRM</small>
					</p>
				</div>
			</div>
		</div>
		<div class="tab-content">
			<div id="menu1" class="tab-pane fade active in">
				<h3 class="infor-payment">You want to make an appointment</h3>
				<label class="radio-inline"> <input type="radio"
					name="carefor" value="myself">
					<p>Myself</p>
				</label> <label class="radio-inline"> <input type="radio"
					name="carefor" value="friend">
					<p>Friend</p>
				</label>
				<h3 class="infor-payment">Fullname Caregiver</h3>
				<p>Nguyễn Hoàng Thiện</p>
				<h3 class="infor-payment">Specialize</h3>
				<p>Ambulatory care nursing</p>
				<h3 class="infor-payment">The appointment time you want</h3>
				<label>From</label> <input class="form-control" type="date"
					required="required"> <label> to </label> <input
					class="form-control" type="date" required="required"> <label>From</label>
				<input class="form-control" type="time" required="required">
				<label> to </label> <input class="form-control" type="time"
					required="required">
				<h3 class="infor-payment">Address</h3>
				<input class="form-control" type="text" required="required">
				<h3 class="infor-payment">Terms of Use</h3>
				<p>Khi điền vào phiếu đặt hẹn, tôi đồng ý rằng:</p>
				<p>1. Việc đặt hẹn trên trang web của Bệnh viện FV chỉ nhằm phục
					vụ cho mục đích lập kế hoạch.</p>
				<p>2. Bệnh viện FV, nhân viên Bệnh viện FV cũng như các bác
					sĩ của Bệnh viện FV, người đã nhận đặt hẹn với bệnh nhân trên
					trang web của bệnh viện, sẽ không đồng ý cung cấp bất kỳ
					dịch vụ y tế, chẩn đoán hay thủ thuật điều trị nào cho
					người ký tên đặt hẹn cho đến khi người này đến đăng ký trực
					tiếp tại Bệnh viện FV.</p>
				<p>3. Với bất kỳ sự tranh chấp hay yêu cầu bồi thường nào (bao
					gồm cả bồi thường thương tật) liên quan đến dịch vụ chăm sóc sức
					khỏe mà bạn nhận được tại Bệnh viện FV nhưng không thể giải quyết
					bằng thỏa thuận giữa đôi bên, việc phân xử sẽ thuộc về bên thứ ba
					có thẩm quyền theo quy định của pháp luật Việt Nam.</p>
				<label class="checkbox-inline"> <input type="checkbox"
					name="terms" value="true">
					<p>
						I have read and agree to the <strong>Terms of Use</strong>
					</p>
				</label>
				<ul class="list-unstyled list-inline pull-right">
					<li><button type="button" class="btn btn-info next-step">
							Next<span class="glyphicon glyphicon-triangle-right"></span>
						</button></li>
				</ul>
			</div>
			<div id="menu2" class="tab-pane fade">
				<h3 class="infor-payment">Hour</h3>
				<p>3</p>
				<h3 class="infor-payment">Unit price</h3>
				<p>FREE</p>
				<h3 class="infor-payment">Coupon</h3>
				<input class="form-control" type="text" required="required">
				<h3 class="infor-payment">Note</h3>
				<textarea class="form-control" required="required"></textarea>
				<hr>
				<h2 class="infor-payment">Total money</h2>
				<h3>FREE</h3>
				<ul class="list-unstyled list-inline pull-left">
					<li><button type="button" class="btn btn-default prev-step">
							<span class="glyphicon glyphicon-triangle-left"></span>Back
						</button></li>
				</ul>
				<ul class="list-unstyled list-inline pull-right">
					<li><button type="button" class="btn btn-info next-step">
							Next<span class="glyphicon glyphicon-triangle-right"></span>
						</button></li>
				</ul>
			</div>
			<div id="menu3" class="tab-pane fade">
				<div class="col-md-4">
					<h2 class="text-center">Caregiver Information</h2>
					<h3 class="infor-payment">Fullname</h3>
					<p>Nguyễn Hoàng Thiện</p>
					<h3 class="infor-payment">Gender</h3>
					<p>Nam</p>
					<h3 class="infor-payment">Birthday</h3>
					<p>06/01/1997</p>
					<h3 class="infor-payment">Email</h3>
					<p>thienoccho@gmail.com</p>
					<h3 class="infor-payment">Specialize</h3>
					<p>Ambulatory care nursing</p>
				</div>
				<div class="col-md-4">
					<h2 class="text-center">Customer Information</h2>
					<h3 class="infor-payment">Fullname</h3>
					<p>Nguyễn Đặng Khải</p>
					<h3 class="infor-payment">Gender</h3>
					<p>Nam</p>
					<h3 class="infor-payment">Birthday</h3>
					<p>06/01/1997</p>
					<h3 class="infor-payment">Email</h3>
					<p>khainoccho@gmail.com</p>
					<h3 class="infor-payment">Phone</h3>
					<p>0101010101</p>
				</div>
				<div class="col-md-4">
					<h2 class="text-center">Cost</h2>
					<h3 class="infor-payment">Day</h3>
					<p>From 10/03/2019 to 10/03/2019</p>
					<h3 class="infor-payment">Time</h3>
					<p>From 1:00 PM to 5:00 PM</p>
					<h3 class="infor-payment">Address</h3>
					<p>254 Nguyễn Văn Linh - Đà Nẵng</p>
					<h3 class="infor-payment">Total</h3>
					<p>Free</p>
					<h3 class="infor-payment">Payment methods</h3>
					<p>Tiền mặt</p>
				</div>
				<ul class="list-unstyled list-inline pull-left">
					<li><button type="button" class="btn btn-default prev-step">
							<span class="glyphicon glyphicon-triangle-left"></span>Back
						</button></li>
				</ul>
				<ul class="list-unstyled list-inline pull-right">
					<li><button type="submit" class="btn btn-success">
							<span class="glyphicon glyphicon-check"></span> Done
						</button></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<%@include file="../layouts/footer.jsp"%>