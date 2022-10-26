<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="_Default" %>

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
                <a class="logo" href="Index.html">
                    <h1 class="logo__nombre no-margin centrartexto">Data<span class="logo__bold">Base</span></h1>
                </a>
                <nav class="navegacion">
                    <a href="nosotros.html" class="navegacion__enlace">Nosotros</a>
                    <a href="contacto.html" class="navegacion__enlace">Contacto</a>
                    <a href="login.aspx" class="navegacion__enlace">Iniciar Sesion</a>
                    <a href="signup.aspx" class="navegacion__enlace singup">Registrate</a>
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
        <h3 class="centrartexto">Registrate</h3>
        <div class="login-bg"></div>
        <form class="formulario" runat="server">
            <div class="campo">
                <asp:Label class="campo__label--login" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="tbNombre" class="campo__field--login" type="text" placeholder="Nombre Ejemplo" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <asp:Label class="campo__label--login" runat="server" Text="Correo"></asp:Label>
                <asp:TextBox ID="tbMail" class="campo__field--login" type="email" placeholder="ejemplo@mail.com" runat="server"></asp:TextBox>
            </div>
            
            <div class="campo">
                <asp:Label CssClass="campo__label--login" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox ID="tbPass" class="campo__field--login" type="password" placeholder="Password" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <asp:Label CssClass="campo__label--login" runat="server" Text="Confirmar contraseña"></asp:Label>
                <asp:TextBox ID="tbCPass" class="campo__field--login" type="password" placeholder="Password" runat="server"></asp:TextBox>
            </div>

            <div class="campo">

            </div>
        </form>
    </main>

    <footer class="footer">
        <div class="contenedor">
            <div class="barra">
                <a class="logo" href="index.html">
                    <h1 class="logo__nombre no-margin centrartexto">Data<span class="logo__bold">Base</span></h1>
                </a>
                <nav class="navegacion">
                    <a href="nosotros.html" class="navegacion__enlace">Nosotos</a>
                    <a href="contacto.html" class="navegacion__enlace">Contacto</a>
                    <a href="login.aspx" class="navegacion__enlace">Log In</a>
                    <a href="signup.aspx" class="navegacion__enlace">Sign Up</a>
                </nav>
            </div>
        </div>
    </footer>
    <script src="js/modernizr.js"></script>
</body>
</html>