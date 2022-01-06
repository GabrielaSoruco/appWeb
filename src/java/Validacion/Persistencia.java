package Validacion;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Persistencia {

    private Connection cn;
    private ResultSet rs;
    private Statement st;
    private PreparedStatement ps;
    private ResultSetMetaData rsm;

    public String jdbcUrl, usuario, clave;

    public Persistencia() {
    }

    public Connection conectar() throws SQLException, ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            jdbcUrl = "jdbc:mysql://localhost:3306/tarantino_fan_page?autoReconnect=true&useSSL=false&serverTimezone=UTC";
            usuario = "root";
            clave = "261997";

            cn = DriverManager.getConnection(jdbcUrl, usuario, clave);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.print("Error en la conexion, error" + e);
        }
        return cn;
    }

    public ResultSet consultaSQL(String busqueda) {
        try {
            ps = conectar().prepareStatement(busqueda);
            rs = ps.executeQuery();
            rsm = rs.getMetaData();
        } catch (ClassNotFoundException | SQLException e) {
            System.out.print("Error al ejecutar el query o clase no encontrada, error " + e);
        }
        return rs;
    }

    public void insertarUsuarios(String nombre, String apellido, String fecha_nac, String pais_residencia, String email, String clave) {
        String query = "insert into usuarios (nombre, apellido, fecha_nacimiento, pais_residencia, usuario, contrasena) values (?,?,?,?,?,?);";
        try {
            ps = conectar().prepareStatement(query);
            ps.setString(1, nombre);
            ps.setString(2, apellido);
            ps.setString(3, fecha_nac);
            ps.setString(4, pais_residencia);
            ps.setString(5, email);
            ps.setString(6, clave);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void actualizarUsuario(String email, String nuevaClave){
        String query = "update usuarios set contrasena='"+nuevaClave+"' where usuario='"+email+"';";
        try {
            st = conectar().createStatement();
            st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
