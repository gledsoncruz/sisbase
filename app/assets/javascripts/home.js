$(document).ready(function(){
	//devise/sessions
	//if ($('#login').length) {

	 	$(document).mousemove(function(e){
	 		e = e || window.event;
    		e = jQuery.event.fix(e);
	     TweenLite.to($('body.devise'),
	        .5,
	        { 	css:
	            {
	              'background-position':parseInt(e.pageX/8) + "px "+parseInt(e.pageY/12)+"px, "+parseInt(e.pageX/15)+"px "+parseInt(e.pageY/15)+"px, "+parseInt(e.pageX/30)+"px "+parseInt(e.pageY/30)+"px"
	            }
	        });
	  	});
	//}

});
