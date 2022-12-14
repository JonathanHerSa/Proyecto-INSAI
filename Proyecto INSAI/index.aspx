<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Bienvenida</title>

    <!-- Prefatch -->
    <link rel="prefetch" href="login.html" as="document" />

    <!-- Hojas de Estilo-->
    <link rel="preload" href="css/normalize.css" as="style" />
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="preload" href="css/styles.css" as="Style" />
    <link rel="stylesheet" href="css/styles.css" />

    <!-- Fuentes -->
    <link rel="preload" href="https://fonts.googleapis.com/css2?family=Open+Sans&family=PT+Sans:wght@400;700&display=swap" as="font" crossorigin="crossorigin" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet" />

</head>
<body>
    <header class="header">
        <div class="contenedor">
            <div class="barra">
                <a class="logo" href="Index.aspx">
                    <h1 class="logo__nombre no-margin centrartexto">Data<span class="logo__bold">Base</span></h1>
                </a>
                <nav class="navegacion">
                    <a href="nosotros.html" class="navegacion__enlace">Nosotros</a>
                    <a href="contacto.html" class="navegacion__enlace">Contacto</a>
                    <a href="addProducto.aspx" class="navegacion__enlace">Añadir Producto</a>
                    <a href="Perfil.aspx" class="navegacion__enlace singup">Perfil</a>
                </nav>
            </div>
        </div>
        <div class="header__texto">
            <h2 class="no-margin">Bases de datos Especializadas</h2>
            <p>
                Nos encargamos de la gestion de sus productos para que usted no lo haga, generando una solucion especializada
                a su problema, personalizado al 100%.
            </p>
        </div>
    </header>
    <div class="contenedor cont-principal">
        <main class="main">
            <h3>Nuestros servicios</h3>
            <article class="entrada">
                <div class="entrada__img">
                    <picture>
                        <source loading="lazy" srcset="img/service1.jpg" type="image/jpg"/>
                        <img loading="lazy" src="img/blog1.jpg" alt="Imagen blog"/>
                    </picture>
                </div>
                <div class="entrada__cont">
                    <h4>Analisis del servicio.</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut aliquam libero. Integer a dui ligula. Fusce tincidunt leo non commodo pretium. Duis nec dignissim ante. Nullam accumsan venenatis tristique. Maecenas placerat et nulla nec lobortis. Maecenas sapien nulla, fermentum vel tempus rhoncus, maximus sit amet libero.
                    </p>
                    <a href="entrada.html" class="boton boton--primario">Contratar Servicio</a>
                </div>
            </article>
            <article class="entrada">
                <div class="entrada__img">
                    <picture>
                        <source loading="lazy" srcset="img/service2.jpg" type="image/jpg"/>
                        <img loading="lazy" src="img/blog2.jpg" alt="Imagen blog"/>
                    </picture>
                </div>
                <div class="entrada__cont">
                    <h4>Registro de productos.</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut aliquam libero. Integer a dui ligula. Fusce tincidunt leo non commodo pretium. Duis nec dignissim ante. Nullam accumsan venenatis tristique. Maecenas placerat et nulla nec lobortis. Maecenas sapien nulla, fermentum vel tempus rhoncus, maximus sit amet libero.
                    </p>
                    <a href="entrada.html" class="boton boton--primario">Contratar Servicio</a>
                </div>
            </article>
            <article class="entrada">
                <div class="entrada__img">
                    <picture>
                        <source loading="lazy" srcset="img/service3.jpg" type="image/jpg"/>
                        <img loading="lazy" src="img/blog3.jpg" alt="Imagen blog"/>
                    </picture>
                </div>
                <div class="entrada__cont">
                    <h4>Gestion de servicios</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut aliquam libero. Integer a dui ligula. Fusce tincidunt leo non commodo pretium. Duis nec dignissim ante. Nullam accumsan venenatis tristique. Maecenas placerat et nulla nec lobortis. Maecenas sapien nulla, fermentum vel tempus rhoncus, maximus sit amet libero.
                    </p>
                    <a href="entrada.html" class="boton boton--primario">Contratar Servicio</a>
                </div>
            </article>
        </main>
        <aside class="sidebar">
            <h3>Noticias.</h3>
            <ul class="news no-pading">
                <li class="widget-news">
                    <h4>Nvidia lanza nuevas tarjetas graficas.</h4>
                    <p class="widget-news__label">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut aliquam libero. Integer a dui ligula. Fusce tincidunt leo non commodo pretium. Duis nec dignissim ante. Nullam accumsan venenatis tristique. Maecenas placerat et nulla nec lobortis. Maecenas sapien nulla, fermentum vel tempus rhoncus, maximus sit amet libero.</p>
                    <a href="#" class="boton boton--secundario">Mas Información.</a>
                </li>
                <li class="widget-news">
                    <h4>Dall-E 2 revolucionando la IA en diseños.</h4>
                    <p class="widget-news__label">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut aliquam libero. Integer a dui ligula. Fusce tincidunt leo non commodo pretium. Duis nec dignissim ante. Nullam accumsan venenatis tristique. Maecenas placerat et nulla nec lobortis. Maecenas sapien nulla, fermentum vel tempus rhoncus, maximus sit amet libero.</p>
                    <a href="#" class="boton boton--secundario">Mas Información.</a>
                </li>
            </ul>
        </aside>
    </div>
    <footer class="footer">
        <div class="contenedor">
            <div class="barra">
                <a class="logo" href="Index.aspx">
                    <h1 class="logo__nombre no-margin centrartexto">Data<span class="logo__bold">Base</span></h1>
                </a>
                <nav class="navegacion">
                    <a href="nosotros.html" class="navegacion__enlace">Nosotros</a>
                    <a href="contacto.html" class="navegacion__enlace">Contacto</a>
                    <a href="addProducto.aspx" class="navegacion__enlace">Añadir Producto</a>
                    <a href="Perfil.aspx" class="navegacion__enlace singup">Perfil</a>
                </nav>
            </div>
        </div>
    </footer>
    <script src="js/modernizr.js"></script>
</body>
</html>