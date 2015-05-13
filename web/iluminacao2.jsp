<%-- 
    Document   : iluminacao2
    Author     : Rayner Ribeiro de Morais
    Descrição  : Lógica da Lâmpada LED
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iluminacao LED</title>
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> <!-- Compatibilidade smartphone-->

        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/app_2.js"></script>

        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/jquery-ui.css" rel="stylesheet"/>
        <link href="css/jquery-ui.structure.css" rel="stylesheet"/>
        <link href="css/jquery-ui.theme.css" rel="stylesheet"/>
        <link href="css/app_2.css" rel="stylesheet"/>
    </head>
    
    <body align="center">
        <H2>ILUMINA&Ccedil;&Atilde;O LED</H2>
        <BR>
        STATUS:
        <div id="status2">OFF</div>
        <br>
        <img id="estado2" src="img/led_off.png">
        <br>
        <button class="btn btn-success" id="ligar2">Ligar</button>
        <br><br>
        Valor Intensidade:
        <br>
        <div id="barra2"></div>
        <br>
        <div id="valorbarra2"></div>
        <br>
       
    </body>
</html>
