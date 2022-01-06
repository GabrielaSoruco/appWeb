<%-- 
    Document   : nuevoPassword
    Created on : 21/12/2021, 11:44:41
    Author     : Gabriela
--%>

<%@page import="Validacion.Persistencia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./public/css-bootstrap/estilos.css">

        <link rel="shortcut icon" href="./public/img/icono-ventana.png">

        <title>JSP Page</title>
    </head>
    <body>
        <div class="container my-3 border rounded">
            <div class="row"><h1 class="text-danger text-center">Actualizacion</h1></div>
            <div class="row"><p class="text-center">Complete los siguientes campos para registrarse en el sistema</p></div>
            <form action="nuevoPassword.jsp" method="post">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Ingrese su email" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese la nueva contraseña" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <label for="password" class="form-label">Nueva contraseña</label>
                            <input type="password" class="form-control" id="password" name="nuevoPassword" placeholder="Vuelva a escribir la contraseña" required>
                        </div>
                    </div>
                    <div class="col-md-12 d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary mb-3" name="registrar">Submit</button>
                    </div>
                </div>
            </form>
            <%
                response.setContentType("text/html;charset=UTF-8");
                if (request.getParameter("registrar") != null) {
                    String email = request.getParameter("email");
                    String password = request.getParameter("password");
                    String nuevoPassword = request.getParameter("nuevoPassword");

                    try {
                        Persistencia base = new Persistencia();
                        if (password.equals(nuevoPassword)) {
                            base.actualizarUsuario(email, nuevoPassword);
            %>
            <div class="alert alert-success mt-2" role="alert">Ya se actualizó tu contraseña!</div>
            <div class="col-md-12 d-flex justify-content-start">
                <a href="login.html" class="btn btn-danger ms-2 my-2" name="registrar">Volver</a>
            </div>
            <%
            } else {
            %>
            <div class="alert alert-warning mt-2" role="alert">Las contraseñas no coinciden</div>
            <div class="col-md-12 d-flex justify-content-start">
                <a class="btn btn-outline-danger my-3" href="nuevoPassword.jsp" role="button">Volver a intentar</a>
            </div>
            <%
                }

            } catch (Exception e) {
            %>
            <div class="alert alert-danger mt-2" role="alert">Error al actualizar la contraseña, error <%=e%></div>
            <%
                    }
                }
            %>
        </div>
    </body>
</html>
