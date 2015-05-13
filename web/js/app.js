function desligageral () {
        $('#estado').attr('src', 'img/lamp_off.png');
        $('#status').html('OFF').css('background-color', 'red');
        $('#ligar').html('Ligar').removeClass("btn-danger").addClass("btn-success");
    }
    
function ligageral () {
        $('#estado').attr('src', 'img/lamp_on.png');
        $('#status').html('ON').css('background-color', 'green');
        $('#ligar').html('Desligar').removeClass("btn-success").addClass("btn-danger");
}
    
$(document).ready(function () {
    window.light = false;

    $('#ligar').click(function () {
        if (window.light) {
            jQuery.post("arduino.jsp", {
                estado: "A"
            },
            function(){
                desligageral();
                $("#barra").slider( "option", "value", 0 );
            });
        } else {
            jQuery.post("arduino.jsp", {
                estado: "a"
            },
            function(){
                 $("#barra").slider( "option", "value", 100 );
                ligageral();
            });
        }

        window.light = !window.light;
    });

    $('#barra').slider({max: 100, min: 0, animate: true});
    $("#barra").slider({
        change: function (event, ui) {
            jQuery.post("arduino.jsp", {
                estado: 'B',
                valor: Math.ceil(ui.value * 0.94)+""
            }, function (data) {
                console.log(ui.value);
                if (ui.value === 0) {
                    if (window.light)
                        $("#ligar").click();
                } else {
                    desligageral();
                    ligageral();
                    window.light = true;
                }
            });
            $("#valorbarra").html(ui.value);
        }});

        cenario.inten = false;
        $('#cenario').click(function () {
                jQuery.post("arduino.jsp", {
                    estado: "d"
                },
                function (data) {
                    $("#barra").slider( "option", "value", 50 );
                    console.log(data);
                });
        });
        
        cinema.inten = false;
        $('#cinema').click(function () {
                jQuery.post("arduino.jsp", {
                    estado: "f"
                },
                function (data) {
                    $("#barra").slider( "option", "value", 10 );
                    console.log(data);
                });
        });
        
        leitura.inten = false;
        $('#leitura').click(function () {
                jQuery.post("arduino.jsp", {
                    estado: "g"
                },
                function (data) {
                    $("#barra").slider( "option", "value", 80 );
                    console.log(data);
                });
        });
        
        festa.inten = false;
        $('#festa').click(function () {
                jQuery.post("arduino.jsp", {
                    estado: "h"
                },
                function (data) {
                    $("#barra").slider( "option", "value", 30 );
                    console.log(data);
                });
        });
        
        

});
