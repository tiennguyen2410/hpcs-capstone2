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
