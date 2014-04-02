$(document).ready(function() {
	var form = $('form');
	list.on("click", getAdvise);
});
function getAdvise() {
	var color = form.find('select').val();
	var nameCont = this;
	$.ajax('BeerServlet', {
		success : function(response, textStatus, jqXHR) {
			alert("Il colore è: " + color);
		},
		context : nameCont,
		data : {
			'color' : color
		},
		dataType : 'json',
		contentType : 'application/json',
		error : function(request, errorType, errorMessage) {
			alert("An error occured: " + errorType + " " + errorMessage)
		}
	});
}

