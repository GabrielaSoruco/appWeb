<%-- 
    Document   : registroUsuario
    Created on : 20/12/2021, 16:57:34
    Author     : Gabriela
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Validacion.Persistencia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./public/css-bootstrap/estilos.css">

        <link rel="shortcut icon" href="./public/img/icono-ventana.png">

        <title>Registro</title>
    </head>
    <body>
        <div class="container my-3 border rounded">
            <div class="row"><h1 class="text-danger text-center">Bienvenidx!</h1></div>
            <div class="row"><p class="text-center">Complete los siguientes campos para registrarse en el sistema</p></div>
            <form action="registroUsuario.jsp" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="nameUser" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nameUser" name="nameUser" placeholder="Ingrese su nombre" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="lastNameUser" class="form-label">Apellido</label>
                            <input type="text" class="form-control" id="lastNameUser" name="lastNameUser" placeholder="Ingrese su apellido" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <label for="birthday" class="form-label">Fecha de nacimiento</label>
                            <input type="date" class="form-control" id="birthday" name="birthday" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <label for="pais" class="form-label">Pais de residencia</label>
                            <select class="form-select" id="pais" name="pais_residencia">
                                <option selected>Selecciona un pais</option>
                                <option value="Argentina">Argentina</option>
                                <option value="Bolivia">Bolivia</option>
                                <option value="Brasil">Brasil</option>
                                <option value="Colombia">Colombia</option>
                                <option value="Chile">Chile</option>
                                <option value="Paraguay">Paraguay</option>
                                <option value="Peru">Peru</option>
                                <option value="Venezuela">Venezuela</option>
                                <option value="Uruguay">Uruguay</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Ingrese su email" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese su contraseña" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="notificacion">
                            <label class="form-check-label" for="notificacion">Enviarme noticias</label>
                        </div>
                    </div>
                    <div class="col-md-12 d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary mb-3" name="registrar">Submit</button>
                    </div>
                </div>
            </form>
        </div>
        <%
            response.setContentType("text/html;charset=UTF-8");

            if (request.getParameter("registrar") != null) {
                String nombre = request.getParameter("nameUser");
                String apellido = request.getParameter("lastNameUser");
                String fecha_nacimiento = request.getParameter("birthday");

                String pais_residencia = request.getParameter("pais_residencia");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                try {
                    Persistencia base = new Persistencia();
                    base.insertarUsuarios(nombre, apellido, fecha_nacimiento, pais_residencia, email, password);
                    //Connection con = base.conectar();
                    //Statement st = con.createStatement();
                    //st.executeUpdate("insert into usuarios (nombre, apellido, fecha_nacimiento, pais_residencia, usuario, contrasena) values ('" + nombre + "','" + apellido + "','" + fecha_nacimiento + "','" + pais_residencia + "','" + email + "','" + password + "');");
        %>
        <div class="alert alert-success mt-2" role="alert">Registro exitoso!</div>
        <div class="col-md-12 d-flex justify-content-start">
            <a href="login.html" class="btn btn-danger ms-2 my-2" name="registrar">Volver</a>
        </div>
        <%
            //response.sendRedirect("index.html");
        } catch (Exception e) {
        %>
        <div class="alert alert-danger mt-2" role="alert">Error al cargar los datos. Error <%=e%></div>
        <%
                }
            }
        %>
    </body>
</html>
