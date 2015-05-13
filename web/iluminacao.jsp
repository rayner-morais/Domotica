<!doctype html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Controle de Iluminacao</title>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> <!-- Compatibilidade smartphone-->

        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/app.js"></script>

        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/jquery-ui.css" rel="stylesheet"/>
        <link href="css/jquery-ui.structure.css" rel="stylesheet"/>
        <link href="css/jquery-ui.theme.css" rel="stylesheet"/>
        <link href="css/app.css" rel="stylesheet"/>
    </head>

    <body ALIGN="center">
        <H2>CONTROLE DE ILUMINA&Ccedil;&Atilde;O</H2>
        <BR>
        STATUS:
        <div id="status">OFF</div>
        <br>
        <img id="estado" src="img/lamp_off.png">
        <br>
        <button class="btn btn-success" id="ligar">Ligar</button>
        <br><br>
        Valor Intensidade:
        <br>
        <div id="barra"></div>
        <br>
        <div id="valorbarra"></div>
        <br>
        <br>
        Cen&aacute;rios:
        <br>
        <button class="btn btn-warning" id="cenario">Rom&acirc;ntico</button>
        <br>
        <br>
        <button class="btn btn-warning" id="cinema">Cinema</button>
        <br>
        <br>
        <button class="btn btn-warning" id="leitura">Leitura</button>
        <br>
        <br>
        <button class="btn btn-warning" id="festa">Festa</button>
        

    </body>
</html>
