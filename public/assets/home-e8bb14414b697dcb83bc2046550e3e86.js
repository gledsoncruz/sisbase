$(document).ready(function(){
	//devise/sessions
	//if ($('#login').length) {

	 	$(document).mousemove(function(e){
	     TweenLite.to($('body.devise'),
	        .5,
	        { 	css:
	            {
	              'background-position':parseInt(event.pageX/8) + "px "+parseInt(event.pageY/12)+"px, "+parseInt(event.pageX/15)+"px "+parseInt(event.pageY/15)+"px, "+parseInt(event.pageX/30)+"px "+parseInt(event.pageY/30)+"px"
	            }
	        });
	  	});
	//}

});
