<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layouts/header.jsp"%>
<div class="container ">
	<div class="row">
		<h1 class="text-center">PAYMENT DETAILS</h1>
		<div class="process">
			<div class="process-row nav nav-tabs">
				<div class="process-step">
					<button type="button" class="btn btn-info btn-step"
						data-toggle="tab" href="#paymentMenu01">
						<p>APPOINTMENT</p>
					</button>
				</div>
				<div class="process-step">
					<button type="button" class="btn btn-default btn-step"
						data-toggle="tab" href="#paymentMenu02">
						<p>MY CALENDAR</p>
					</button>
				</div>
				<div class="process-step">
					<button type="button" class="btn btn-default btn-step"
						data-toggle="tab" href="#paymentMenu03">
						<p>CHECK & CONFIRM</p>
					</button>
				</div>
			</div>
		</div>
		<div class="tab-content">
			<%@include file="../payment/paymentMenu01.jsp"%>
			<%@include file="../payment/paymentMenu02.jsp"%>
			<%@include file="../payment/paymentMenu03.jsp"%>
		</div>
	</div>
</div>
<%@include file="../layouts/footer.jsp"%>