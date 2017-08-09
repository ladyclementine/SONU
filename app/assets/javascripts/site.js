

//= require jquery.min.js
//= require  bootstrap.min.js
//= require  countdown.js
//= require  slick.min.js
//=	require  gmaps.min.js
//= require  magnific-popup.min.js
//= require  main.js   
//= require admin_template/adminto/css/plugins/toastr/toastr.min.js

$(document).ready(function() {

$('#cpf_dupla').blur(function(){
        
        $.ajax({
            url: "/comitee/cpf/cpf_find",
            type: "GET",
            data: { cpf:$('#cpf_dupla').val(), id:$('#id_evento').val() },
            dataType: "json",
            success: function(sucesso){
                if (sucesso.success===true){
                    var check = '<span style="color:#3c9332">'+ sucesso.name +'! </span>';
                    $('#result-nome').html(check);
                } else {
                    $('#result-nome').html(sucesso.msg);
                }
            },
            error: function(){
                $('#result-nome').html('Desculpe pelo transtorno, houve um erro, tente novamente.');
            },
            complete: function(){
                $('#result-nome').css({"display":"block"});
                $('#loading').css({"display":"none"});
                
            }
            
        });  
        
    });


});

  $('#categories_event').multiSelect({
  afterSelect: function(values){
    var count = $("#categories_event :selected").length;
    if (count > 5) {
        $("#categories_event").multiSelect('deselect', values);
        alert("Você só pode selecionar 5!")
    }
  }});