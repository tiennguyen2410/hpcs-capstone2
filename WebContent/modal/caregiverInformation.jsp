<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Modal -->
<div id="caregiverInformationModal" class="modal fade" role="dialog">
	<div class="container">
		<div class="caregiver">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						<div class="preview-pic tab-content">
							<img
								src="https://scontent.fdad2-1.fna.fbcdn.net/v/t1.0-9/28059500_2228677234026116_2812707201994302461_n.jpg?_nc_cat=109&_nc_oc=AQneXh8Kw39qQmvu1bCSrJv18opXPH9MUc5cd3xSuEBsa9Gn-hRWv_P7PI42NMy35s0&_nc_ht=scontent.fdad2-1.fna&oh=6b17944db16a7e091166e40434610c4b&oe=5D1AE6C0"
								class="img-responsive" alt="Image">
						</div>
					</div>
					<div class="details col-md-6">
						<h3 class="caregiver-name hired">
							<a class="caregiver-profile" href="#">Nguyễn Hoàng Thiện</a> <span>
								0 hired</span>
						</h3>
						<div class="row">
							<%@include file="../layouts/rating.jsp"%>
						</div>
						<div class="comment-info">
							<div class="comment-scroll">
								<%
									int j;
									for (j = 0; j < 5; j++) {
								%>
								<%@include file="../layouts/comment.jsp"%>
								<%
									}
								%>
							</div>
						</div>
						<hr>
						<h4 class="price">
							Hire cost: <span>FREE</span>
						</h4>
						<a href="../payment/mainPayment.jsp" class="hire btn btn-default"
							type="button">Proceed to Hire</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
