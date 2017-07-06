function loadTable($handler, pageName, pageArgs) {
	pageArgs = pageArgs || "";
	if(pageArgs !== "") {
		pageArgs = "?" + pageArgs;
	}
	$handler.load(pageName + pageArgs);
}

function forceAjaxCall(urlX, dataX) {
	$.ajax({
		type: "POST",
		url: urlX,
		data: dataX,  
		dataType: "json",
		success: function(msg){
			showNotif(msg.message, msg.result);
		},  
		error: function(xhr, textStatus, errorThrown){ 
			console.log(xhr.responseText);
			console.log(textStatus);
			console.log(errorThrown);
			showNotif('Request failed', 'error');
		}  
	});
}