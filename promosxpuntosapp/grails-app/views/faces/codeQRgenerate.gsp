<%@ page import="promosxpuntosapp.RewardController" %>
<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <title>Promos x Puntos - Modulo de Usuario</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <asset:stylesheet src="template.css"/>

    <style>
    .nonStyletext { font-weight:normal; text-transform: none }
    </style>
</head>
<body>

<!-- Header -->
<header id="header">
    <h1><a href="index.html">Promos x Puntos</a></h1>
    <a href="#nav">Menu</a>
</header>

<!-- Nav -->
<nav id="nav">
    <ul class="links">
        <li><a href="index.html">Principal</a></li>
        <li><a href="section.html">Seccion 1</a></li>
        <li><a href="section.html">Seccion 2</a></li>
    </ul>
</nav>

<!-- Main -->
<section id="main" class="wrapper">
    <div class="container">
        <g:set var="qrCode" value="${new promosxpuntosapp.ShopRecordController().randomString()}" />
        <header class="major special">


         <img src="http://chart.apis.google.com/chart?cht=qr&chs=300x3000&chl=${qrCode}&chld=H|0" alt="QRCode">

        <h2 class="nonStyletext">
            ${qrCode}
        </h2>

            <g:uploadForm controller="customer" action="logOut" method="post">
                <ul class="actions">
                    <g:submitButton name="summit" type="submit" value="Regresar al perfil" class="special" tabindex="-1"></g:submitButton>
                </ul>
            </g:uploadForm>
        </header>
    </div>
</section>

<!-- Footer -->
<footer id="footer">
    <div class="inner">
        <ul class="icons">
            <li><a href="#" class="icon fa-facebook">
                <span class="label">Facebook</span>
            </a></li>
            <li><a href="#" class="icon fa-twitter">
                <span class="label">Twitter</span>
            </a></li>
            <li><a href="#" class="icon fa-instagram">
                <span class="label">Instagram</span>
            </a></li>
            <li><a href="#" class="icon fa-linkedin">
                <span class="label">LinkedIn</span>
            </a></li>
        </ul>
        <ul class="copyright">
            <li>&copy; PromosXPuntos.</li>
            <li>IngeSoft II.</li>
            <li>Unal.edu.co.</li>
        </ul>
    </div>
</footer>

<asset:javascript src="jquery.min.js"/>
<asset:javascript src="skel.min.js"/>
<asset:javascript src="util.js"/>
<asset:javascript src="main.js"/>
<!--
REFRESH PAGE AFTER 15 seconds
<meta http-equiv=refresh content=15>
-->

</body>
</html>