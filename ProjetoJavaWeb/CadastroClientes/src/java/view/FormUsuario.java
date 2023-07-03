 
package view;

import controller.UsuarioController;

public class FormUsuario {
    public String id;
    public String nome;
    public String cpf;
    public String telefone;
    public String email;
    
    public boolean btnSalvar() throws ClassNotFoundException {
        UsuarioController userCtrl = new UsuarioController();
        return userCtrl.cadastrar(this);
    }   
      
}