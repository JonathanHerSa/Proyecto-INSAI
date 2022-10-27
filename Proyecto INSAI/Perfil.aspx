<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bienvenida</title>

    <!-- Prefatch -->
    <link rel="prefetch" href="perfil.html" as="document" />

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
            <h3 class="centrartexto">Productos</h3>
            <article class="entrada">
                <div class="entrada__img">

                </div>
                <div class="entrada__cont">
                    <h4>Nombre Producto</h4>
                </div>
            </article>
        </main>
        <aside class="sidebar">
            <h3>Peril</h3>
            <form class="sidebar" runat="server">
                <div class="campo">
                    <label class="campo__label" for="lbnombre">Nombre:</label>
                    <asp:Label CssClass="campo__label" ID="lbnombre" runat="server" Text=""></asp:Label>
                </div>
                <div class="campo">
                    <label class="campo__label" for="lbMail">Mail:</label>
                    <asp:Label CssClass="campo__label" ID="LbMail" runat="server" Text=""></asp:Label>
                </div>
                <div class="campo">
                    <asp:Button CssClass="boton boton--secundario" ID="btnCerrar" runat="server" Text="Cerrar Sesion" OnClick="btnCerrar__click"/>
                </div>
            </form>
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
                    <a href="contacto.html" class="navegacion__enlace">Contacto</a
                    <a href="addProducto.aspx" class="navegacion__enlace">Añadir Producto</a>
                    <a href="Perfil.aspx" class="navegacion__enlace singup">Perfil</a>
                </nav>
            </div>
        </div>
    </footer>
    <script src="js/modernizr.js"></script>
</body>
</html>