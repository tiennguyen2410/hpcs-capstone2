<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="signInModal" class="modal fade" data-backdrop="static"
	role="dialog">
	<div class="container-fluid">
		<div class="sign-in-modal">
			<div class="wrapper row" id="sign-in">
				<div class="signin-form">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<form action="../modal/signIn.jsp" method="post">
						<h3 class="text-center">
							<strong>Sign In</strong>
						</h3>
						<div class="social-btn text-center">
							<a href="#" class="btn btn-primary btn-block">Sign in with <b>Facebook</b>
							</a> <a href="#" class="btn btn-info btn-block">Sign in with <b>Twitter</b></a>
							<a href="#" class="btn btn-danger btn-block"> Sign in with <b>Google
									+</b>
							</a>
						</div>
						<div class="or-seperator">
							<span>or</span>
							<div class="signin-check" id="signin-check"
								style="display: none;">thông báo khi sai thông tin tài
								khoản, mặc định ẩn đi</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-user"></span></span> <input type="text"
									class="form-control" name="username" placeholder="Enter email"
									required="required" autofocus>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-lock"></span></span> <input type="password"
									class="form-control" name="password"
									placeholder="Enter password" required="required">
							</div>
						</div>
						<div class="form-group">
							<a type="submit" href="../layouts/main.jsp"
								class="btn btn-success btn-block signin-btn">Sign In</a>
						</div>
						<div class="clearfix">
							<label class="pull-left checkbox-inline"><input
								type="checkbox"> Remember me</label> <a href="#"
								class="pull-right text-success">Forgot Password?</a>
						</div>
						<div>
							<p>
								Do not have an account, <a class="sign-up" id="sign-up-toggle"
									type="button" href="#">sign up now!</a>
							</p>
						</div>
					</form>
				</div>
			</div>
			<%@include file="../modal/signUp.jsp"%>
		</div>
	</div>
</div>
