
package model.DAO;

import java.sql.Connection;
import ConnectionJDBC.ConnectionJDBC;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.persistence.Usuario;

public class UsuarioDAO {
    
    public Connection con;
    private String sqlUsuario = null;
    private PreparedStatement psUsuario = null;
    private ResultSet rs = null; 
    
    public boolean salvar(Usuario user) throws ClassNotFoundException{
        con = new ConnectionJDBC().getConnection();
        
        sqlUsuario = "INSERT INTO usuario(nome, cpf, telefone, email) values(?,?,?,?)";
        
        try{
            
            psUsuario = con.prepareStatement(sqlUsuario);
            
            psUsuario.setString(1, user.getNome());
            psUsuario.setString(2, user.getCpf());
            psUsuario.setString(3,user.getTelefone());
            psUsuario.setString(4, user.getEmail());
            
            psUsuario.executeUpdate();
            
            // gerar o id de usuario
            /*
            ResultSet rs = psUsuario.getGeneratedKeys();
            rs.next();
            int id = rs.getInt(1);
            */
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        return true;
    }
    
    // metodo listar
    public List<Usuario> listar() throws ClassNotFoundException, SQLException {
        
        con = new ConnectionJDBC().getConnection();
        sqlUsuario = "select * from usuario";
        psUsuario = con.prepareStatement(sqlUsuario);
        rs = psUsuario.executeQuery();
        
        rs.next();
        
        List<Usuario> listUsuarios = new ArrayList<Usuario>();
        
        while(rs.next()) {
            Usuario user = new Usuario();
            user.setId(rs.getString("id"));
            user.setNome(rs.getString("nome"));
            user.setCpf(rs.getString("cpf"));
            user.setTelefone(rs.getString("telefone"));
            user.setEmail(rs.getString("email"));
            
            
            listUsuarios.add(user);
       
        }
        
        return listUsuarios;
    }
    
}
