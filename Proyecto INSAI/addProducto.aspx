<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addProducto.aspx.cs" Inherits="addProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
           <title>DataBase</title>

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

    <main class="contenedor">
        <h3 class="centrartexto">Registrar Producto</h3>
        <div class="login-bg login-bg__su"></div>
        <form class="formulario__reg formulario__reg--su" runat="server">
            <div class="campo">
                <asp:Label class="campo__label--login" runat="server" Text="Codigo"></asp:Label>
                <asp:TextBox ID="tbId" class="campo__field--login" TextMode="SingleLine" placeholder="1234" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <asp:Label class="campo__label--login" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="tbNombre" class="campo__field--login" type="text" placeholder="Nombre De Producto" runat="server"></asp:TextBox>
            </div>
            
            <div class="campo">
                <asp:Label CssClass="campo__label--login" runat="server" Text="Stock"></asp:Label>
                <asp:TextBox ID="tbStock" class="campo__field--login" type="text" placeholder="25" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <asp:Label CssClass="campo__label--login" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="tbDesc" class="campo__field--login campo__field--textarea" TextMode="MultiLine" placeholder="Descripcion" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <asp:Label CssClass="campo__labelSU--error campo__labelSU" ID="lbError" runat="server" Text=""></asp:Label>
                <asp:Label CssClass="campo__labelSU--correct campo__labelSU" ID="lbCorrect" runat="server" Text=""></asp:Label>
            </div>

            <div class="campo">
                <asp:Button CssClass="boton boton--secundario" ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistro__Click" />
            </div>

            <div class="campo">
                <a href="Login.aspx" class="campo__labelSU campo__labelSU--registro">Iniciar Sesion</a>
            </div>
        </form>
    </main>

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
