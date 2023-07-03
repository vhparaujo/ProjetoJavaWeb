
package controller;

import java.sql.SQLException;
import java.util.List;
import model.DAO.UsuarioDAO;
import model.persistence.Usuario;
import view.FormUsuario;

public class UsuarioController {
    
    public boolean cadastrar(FormUsuario user) throws ClassNotFoundException {
        
        Usuario usuario = new Usuario();
        usuario.setNome(user.nome);
        usuario.setCpf(user.cpf);
        usuario.setTelefone(user.telefone);
        usuario.setEmail(user.email);
        
        UsuarioDAO userDAO = new UsuarioDAO();
        
        return userDAO.salvar(usuario);
    }
    
    public List<Usuario> listar() throws ClassNotFoundException, SQLException {
        UsuarioDAO userDAO = new UsuarioDAO();
        List<Usuario> listaUsuarios = userDAO.listar();
        return listaUsuarios;
    }
    
    
    
    
}
