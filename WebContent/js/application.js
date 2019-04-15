//step by step payment
$(document).ready(function(){
	$('.btn-step').on('click',function(){
		$('.btn-step.btn-info').removeClass('btn-info').addClass('btn-default');
		$(this).addClass('btn-info').removeClass('btn-default').blur();
	});

	$('.next-step, .prev-step').on('click', function (e){
		var $activeTab = $('.tab-pane.active');

		$('.btn-step.btn-info').removeClass('btn-info').addClass('btn-default');

		if ( $(e.target).hasClass('next-step') )
		{
			var nextTab = $activeTab.next('.tab-pane').attr('id');
			$('[href="#'+ nextTab +'"]').addClass('btn-info').removeClass('btn-default');
			$('[href="#'+ nextTab +'"]').tab('show');
		}
		else
		{
			var prevTab = $activeTab.prev('.tab-pane').attr('id');
			$('[href="#'+ prevTab +'"]').addClass('btn-info').removeClass('btn-default');
			$('[href="#'+ prevTab +'"]').tab('show');
		}
	});
});
//sign in sign up form
$(document).ready(function(){
	$("#sign-in-toggle").click(function(){
		$("#sign-in").show();
		$("#sign-up").hide();
	});
	$("#sign-up-toggle").click(function(){
		$("#sign-in").hide();
		$("#sign-up").show();
	});
});
//advanced search
$(document).ready(function(){
	$('#advanced-search-toggle').click(function(){
		$('#advanced-search').slideToggle();
	});
});
//date time picker
$(document).ready(function(){
	$('#timeFrom').datetimepicker();
});

$(document).ready(function(){
	$('#timeTo').datetimepicker();
});

//other address
$(document).ready(function(){
	$('#other-infor-toggle').click(function(){
		$('#other-infor-toggle').hide();
		$('#other-infor').show();
		$('#close-other-infor-toggle').show();
	});
	$('#close-other-infor-toggle').click(function(){
		$('#other-infor-toggle').show();
		$('#other-infor').hide();
		$('#close-other-infor-toggle').hide();
	});
});

$(document).ready(function(){
	$('#show-comment').click(function(){
		$('#comment-info').show();
		$('#hide-comment').show();
		$('#show-comment').hide();
	});
	$('#hide-comment').click(function(){
		$('#comment-info').hide();
		$('#hide-comment').hide();
		$('#show-comment').show();
	});
});

$(document).ready(function(){
	$('#open-edit-toggle').click(function(){
		$('#open-edit-form').show();
		$('#open-infor-form').hide();
	});
	$('#open-infor-toggle').click(function(){
		$('#open-infor-form').show();
		$('#open-edit-form').hide();
	});
});

$(document).ready(function(){
	$('.open-infor-caregiver-toggle').click(function(){
		$('#infor-caregiver-hire').show();
	});
});

