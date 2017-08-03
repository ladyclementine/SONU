

//= require jquery.min.js
//= require  bootstrap.min.js
//= require  countdown.js
//= require  slick.min.js
//=	require  gmaps.min.js
//= require  magnific-popup.min.js
//= require  main.js   
//= require admin_template/adminto/css/plugins/toastr/toastr.min.js
$(document).ready(function() {
    
    // validate signup form on keyup and submit
    $("#formu").validate({
        rules: {
            "user[name]": "required",
            "user[general_register]": "required",
            "user[cpf]": "required",
            "user[birthday]": "required",
            celular: "required",
            "user[gender]": "required",
            instituicao: "required",
            link_facebook: "required",
            
            
            
            "user[email]": {
                required: true,
                email: true
            },
            confemail: {
                required: true,
                email: true,
                equalTo: "#email"
            },
            "user[password]": {
                required: true,
                minlength: 6
            },
            confsenha: {
                required: true,
                minlength: 6,
                equalTo: "#senha"
            },
            
            agree: "required"
        },
        messages: {
            "user[name]": "Campo Obrigatório",
            "user[general_register]": "Campo Obrigatório",
            "user[cpf]": "Campo Obrigatório",
            "user[birthday]": "Campo Obrigatório",
            celular: "Campo Obrigatório",
            "user[gender]": "Campo Obrigatório",
            instituicao: "Campo Obrigatório",
            link_facebook: "Campo Obrigatório",

            "user[email]": {
                required: "Campo Obrigatório",
                
            },
            confemail: {
                required: "Campo Obrigatório",
                equalTo: "Confirmação de email não confere."
            },
            
            
            "user[password]": {
                required: "Campo Obrigatório",
                minlength: "A senha deve conter no mínimo 6 dígitos"
            },
            confsenha: {
                required: "Campo Obrigatório",
                minlength: "A confirmação de senha deve conter no mínimo 6 dígitos",
                equalTo: "Confirmação de senha não confere."
            },
            agree: "Obrigatório aceitar o termo de uso do site!"
        }
    });