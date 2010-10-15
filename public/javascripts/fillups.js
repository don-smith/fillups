$(function(){
	$.ajax({ url: '/fillups',
		success: function(data) {
			// var vehicle = data.first.vehicle_name;
			alert('vehicle is ' + data);
			$('<p>' + vehicle + '</p>').appendTo($('body'));
		}
	});
});