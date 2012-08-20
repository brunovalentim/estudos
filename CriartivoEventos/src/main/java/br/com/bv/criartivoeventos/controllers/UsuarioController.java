/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bv.criartivoeventos.controllers;
import br.com.bv.criartivoeventos.models.AbstractEntity;
import br.com.bv.criartivoeventos.models.Usuario;
import br.com.bv.criartivoeventos.repositories.Repository;
import br.com.bv.criartivoeventos.repositories.UsuarioRepository;
import javax.servlet.ServletRequest;
import javax.validation.Valid;
import org.hibernate.Session;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author brunovalentim
 */
@org.springframework.stereotype.Controller
public class UsuarioController {
    
    private UsuarioRepository repository;

    public UsuarioController() {
        
    }
   

    @RequestMapping("cadastro/usuario/adicionar")
    public String adicionar(@Valid Usuario usuario, BindingResult result, ServletRequest request) {

        if (!validate(usuario)) {
            return "cadastro/usuario";
        }
        this.repository = new UsuarioRepository((Session)request.getAttribute("session"));
        this.repository.save(usuario);
        return "cadastro/usuario-ok";
    }

    public boolean validate(Usuario usuario) {

        return (usuario.getNome().length() > 0);
    }

   
}
