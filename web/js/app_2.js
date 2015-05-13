function desligageral2 () {
        $('#estado').attr('src', 'img/led_off.png');
        $('#status2').html('OFF').css('background-color', 'red');
        $('#ligar2').html('Ligar').removeClass("btn-danger").addClass("btn-success");
    }
    
function ligageral2 () {
        $('#estado').attr('src', 'img/led_on.png');
        $('#status2').html('ON').css('background-color', 'green');
        $('#ligar2').html('Desligar').removeClass("btn-success").addClass("btn-danger");
}
    
$(document).ready(function () {
    window.light2 = false;

    $('#ligar2').click(function () {
        if (window.light2) {
            jQuery.post("arduino.jsp", {
                estado: "X"
            },
            function(){
                desligageral2();
                $("#barra2").slider( "option", "value", 0 );
            });
        } else {
            jQuery.post("arduino.jsp", {
                estado: "x"
            },
            function(){
                 $("#barra2").slider( "option", "value", 100 );
                ligageral2();
            });
        }

        window.light2 = !window.light2;
    });
   

    $('#barra2').slider({max: 100, min: 0, animate: true});

    $("#barra2").slider({
        change: function (event, ui) {
            jQuery.post("arduino.jsp", {
                estado: 'W',
                valor: Math.ceil(ui.value * 0.94)+""
            }, function (data) {
                console.log(ui.value);
                if (ui.value === 0) {
                    if (window.light2)
                        $("#ligar2").click();
                } else {
                    desligageral2();
                    ligageral2();
                    window.light2 = true;
                }
            });
            $("#valorbarra2").html(ui.value);
        }});

        
        

});


