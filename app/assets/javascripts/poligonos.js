$(document).ready(function(){


function addCoords(eixo_x, eixo_y) {

	$("#tb_coords").append(
        "<tr>"+
        "<td>"+eixo_x+"</td>"+
        "<td>"+eixo_y+"</td>"+
        "<td style='text-align: center;'><a class='btn_del' href='#' ><span class='btn_del glyphicon glyphicon-trash'></span></a></td>"+
        "</tr>");
	//console.log("Total vertices: "+ ($('#tb_coords tr').length -1).toString());

}

	$("#tb_coords").on('click', '.btn_del', function(){
		var tr = $(this).closest('tr');
    	tr.fadeOut(400, function(){
      		tr.remove();
      		validaViewPolygon();
    	});

    return false;
	});


  $("#btn_addPoint").click(function(e){
  	//console.log("POINT("+$("#eixo_x").val()+","+$("#eixo_y").val()+")");
  	if (validaCoords($("#eixo_x").val(), $("#eixo_y").val())){
	  	addCoords($("#eixo_x").val(), $("#eixo_y").val());
	    $("#eixo_x").val("");
	    $("#eixo_y").val("");
	    $("#eixo_x").focus();
	    validaViewPolygon();
  	}
  	return false;
  });

  function validaViewPolygon(){
  	//console.log("Total vertices: "+ ($('#tb_coords tr').length -1).toString());
  	var total = $('#tb_coords tr').length -1;
  	if (total >= 3){
	    	$("#btn_viewPoli").removeClass("disabled");
	    }else{
	    	$("#btn_viewPoli").addClass("disabled");
	    }
  }


function validaCoords(eixo_x, eixo_y){
	//var inputVal = $("#eixo_x").val();
    var numericReg = /^-?\d*[0-9](|.\d*[0-9]|,\d*[0-9])?$/;
    if(!numericReg.test(eixo_x) || !numericReg.test(eixo_y)) {
    	$("#label_error").remove();
        $("#coords-form").after('<span id="label_error" class="label label-danger">Por favor, verifique se os dados digitados estão corretos!</span>');
        $(".form-group").addClass("has-error");
        //alert("erro");
        return false;
    }
    $(".form-group").removeClass("has-error");
    $("#label_error").remove();
    return true;

}

$("#btn_viewPoli").click(function(e){

	preparePolygonWKT();
});


function preparePolygonWKT(){
	// "POLYGON((-44.118303895314 -22.4940870647868,-44.11852866126 -22.4938098663542,-44.1200126989574 -22.4924904578161,-44.1211543909801 -22.4935301300232,-44.1231850903364 -22.4937897850486,-44.1250205627289 -22.4939414819046,-44.1252318368933 -22.493404659806 (...)"
		var coordenadas = [];
		var wkt = [];

		$("#tb_coords tr").each(function(i) {

			for ( var col = 1; col < 3; col++ ) {

				coordenadas.push($("#tb_coords tr:nth-child("+(i+1)+") td:nth-child("+col+")").text());
				if (coordenadas.length % 2 == 0){
		        	wkt.push(coordenadas.join(" "));
		        	coordenadas = [];
		        }

			}

        });
		wkt.pop();
        console.log("POLYGON(("+wkt+"))");
}

});
