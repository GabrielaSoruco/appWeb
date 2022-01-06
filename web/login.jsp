<%@page import="java.sql.ResultSet"%>
<%@page import="Validacion.Persistencia"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- BOOTSTRAP -->
        <link rel="stylesheet" href="./public/css-bootstrap/estilos.css">
        <link rel="stylesheet" href="./public/css-bootstrap/estilos_login.css">
        <link rel="shortcut icon" href="./public/img/icono-ventana.png">
        <title>Login</title>
    </head>

    <body>
        <div class="container mx-auto">
            <div class="header text-center mb-3">
                <div id="title">
                    <h1>Hola cinéfilo</h1>
                </div>
                <div id="subtitle">
                    <h4>Ingresa tus datos de acceso</h4>
                </div>
            </div>
            <form action="login.jsp" method="post">
                <div class="mb-3">
                    <input type="email" class="form-control" id="exampleInputEmail1" name="usuario" placeholder="Email"
                           aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password"
                           placeholder="Contraseña">
                </div>
                <div class="text-center">
                    <button type="submit" name="submit" class="btn btn-primary" value="submit">Ingresar</button>
                </div>
            </form>
            <div class="footer mt-2">
                <a class="nav-link" href="registroUsuario.jsp">Registrate gratis</a>
                <a class="nav-link" href="nuevoPassword.jsp">Olvide mi clave</a>
            </div>
        </div>

        <%
            if (request.getParameter("submit") != null) {
                String usuario = request.getParameter("usuario").toLowerCase();
                String password = request.getParameter("password");
                try {
                    Persistencia con = new Persistencia();
                    String busqueda = "select * from usuarios where usuario='" + usuario + "' and contrasena='" + password + "';";
                    ResultSet rs = con.consultaSQL(busqueda);
                    while (rs.next()) {
                        HttpSession sesion = request.getSession();
                        sesion.setAttribute("logueado", "1");
                        sesion.setAttribute("usuario", rs.getString("usuario"));
                        sesion.setAttribute("id", rs.getString("id"));
                        sesion.setAttribute("nombreUsuario", rs.getString("nombre"));
                        response.sendRedirect("index.jsp");
                    }
                    out.print("<div class=\"alert alert-danger mt-2\" role=\"alert\">Usuario no válido</div>");
                } catch (Exception e) {
                    %>
                    <div class="alert alert-danger mt-2" role="alert">Error en la conexion con la bbdd <%=e%></div>
        <%
                }
            }
        %>

        <!--    Bootstrap Bundle with Popper -->
        <script src="./public/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <!--    Bootstrap JS -->
        <script src="./public/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>

</html>