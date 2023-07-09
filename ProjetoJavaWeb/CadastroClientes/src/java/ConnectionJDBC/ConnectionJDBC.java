package ConnectionJDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionJDBC {

    String usuario = "root";
    String senha = "";
    String url = "jdbc:mysql://localhost:3306/teste";
    String driver = "com.mysql.cj.jdbc.Driver";

    Connection con = null;

    // metodo de conexao 
    public Connection getConnection() throws ClassNotFoundException {
        try {
            if (con == null) {
                Class.forName(driver);
                con = (Connection) DriverManager.getConnection(url, usuario, senha);
                System.out.println("Conexao ativa");
            }
        } catch (SQLException e) {
            System.out.println("Conexao não ativa");
            e.printStackTrace();
            e.getMessage();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            e.getMessage();
        }

        return con;
    }

    /*
    public boolean closeConnection() throws SQLException {
        if (con != null) {
            con.close();
        }
        return false;
    }
    */
}
