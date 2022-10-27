<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

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
                <a class="logo">
                    <h1 class="logo__nombre no-margin centrartexto">Data<span class="logo__bold">Base</span></h1>
                </a>
                <nav class="navegacion">
                    <a href="login.html" class="navegacion__enlace">Iniciar Sesion</a>
                    <a href="Signup.aspx" class="navegacion__enlace">Registrar</a>
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
        <h3 class="centrartexto">Log In</h3>
        <div class="login-bg"></div>
        <form class="formulario__reg" runat="server">
            <div class="campo">
                <asp:Label class="campo__label--login" runat="server" Text="Correo"></asp:Label>
                <asp:TextBox ID="tbMail" class="campo__field--login" type="email" placeholder="ejemplo@mail.com" runat="server"></asp:TextBox>
            </div>
            
            <div class="campo">
                <asp:Label CssClass="campo__label--login" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox ID="tbPass" class="campo__field--login" type="password" placeholder="Password" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <asp:Label CssClass="campo__label--error" runat="server" Text="" ID="lbError"></asp:Label>
            </div>
            
            <div class="campo">
                    <asp:Button ID="btnEnviar" class="boton boton--secundario" runat="server" Text="Ingresar" OnClick="btnEnviar__Click"/>
            </div>
            
            <div class="campo">
                <label class="campo__labelSU campo__labelSU--registro">Si aun no tienes cuenta <a class="campo__labelSU campo__labelSU--registro" href="Signup.aspx">Registrate Aquí</a></label>
            </div>
        </form>
    </main>

    <footer class="footer">
        <div class="contenedor">
            <div class="barra">
                <a class="logo">
                    <h1 class="logo__nombre no-margin centrartexto">Data<span class="logo__bold">Base</span></h1>
                </a>
                <nav class="navegacion">
                    <a href="login.html" class="navegacion__enlace">Iniciar Sesion</a>
                    <a href="Signup.aspx" class="navegacion__enlace">Registrar</a>
                </nav>
            </div>
        </div>
    </footer>
    <script src="js/modernizr.js"></script>
</body>
</html>