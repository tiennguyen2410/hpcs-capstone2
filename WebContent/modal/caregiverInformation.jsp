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
							<img id="src_caregiver" class="img-responsive" alt="Image">
						</div>
					</div>
					<div class="details col-md-6">
						<h3 class="caregiver-name hired">
							<a class="caregiver-profile" href="#" id="name_caregiver"></a> <span>
								1111123 hired</span>
						</h3>
						<div class="row">
							<%@include file="../layouts/rating.jsp"%>
						</div>
						<a type="button" class="show-comment" id="show-comment">View all comments</a>
						<a type="button" class="hide-comment" id="hide-comment">Hide all comments</a>
						<div class="comment-info" id="comment-info">
							<div class="comment-scroll">
								<%@include file="../layouts/comment.jsp"%>
							</div>
						</div>
						<p id="describle"></p>
						<h4 class="price">
							Hire cost: <span>FREE</span>
						</h4>
						<a
							href="${pageContext.servletContext.contextPath}/payment/mainPayment.jsp"
							class="hire btn btn-default" type="button">Proceed to Hire</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$('#caregiverInformationModal').on('show.bs.modal', function(event) {
		var button = $(event.relatedTarget) // Button that triggered the modal
		var id = button.data('id_caregiver')
		var name_caregiver = button.data('name_caregiver')
		var describle = button.data('describle')
		var star_1 = button.data('star_1')
		var star_2 = button.data('star_2')
		var star_3 = button.data('star_3')
		var star_4 = button.data('star_4')
		var star_5 = button.data('star_5')
		/* var star_1 = 0
		var star_2 = 0
		var star_3 = 0
		var star_4 = 0
		var star_5 = 0 */
		var sum_star = button.data('sum_star')

		var src_caregiver = button.data('src_caregiver')

		//tinh %
		var sum_star_pt = (star_1 + star_2 + star_3 + star_4 + star_5) * 1.0
		var star1_pt = 100 * star_1 / sum_star_pt
		var star2_pt = 100 * star_2 / sum_star_pt
		var star3_pt = 100 * star_3 / sum_star_pt
		var star4_pt = 100 * star_4 / sum_star_pt
		var star5_pt = 100.0 - star1_pt - star2_pt - star3_pt - star4_pt
		// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		// var modal = $(this)
		$("#name_caregiver").text(name_caregiver)
		$("#describle").text(describle)
		$("#star_1").text(star1_pt + '%')
		$("#star_2").text(star2_pt + '%')
		$("#star_3").text(star3_pt + '%')
		$("#star_4").text(star4_pt + '%')
		$("#star_5").text(star5_pt + '%')
		$("#sum_star").text(sum_star)
		//tinh %

		//dom % star
		document.getElementById("star_1").style.width = star1_pt + '%';
		document.getElementById("star_2").style.width = star2_pt + '%';
		document.getElementById("star_3").style.width = star3_pt + '%';
		document.getElementById("star_4").style.width = star4_pt + '%';
		document.getElementById("star_5").style.width = star5_pt + '%';

		document.getElementById("src_caregiver").src = src_caregiver;
		$(".rateyo-readonly-widg").rateYo({

			/*        rating: rating,
			          numStars: 5,
			          precision: 2,
			          minValue: 1,
			          maxValue: 5
			          
			          
			 */
			rating : (sum_star),
			readOnly : true
		}).on("rateyo.change", function(e, data) {
			console.log(data.rating);
		});
	});
</script>