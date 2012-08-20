/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bv.criartivoeventos.controllers;

import br.com.bv.criartivoeventos.models.Usuario;
import br.com.bv.criartivoeventos.repositories.UsuarioRepository;
import javax.servlet.ServletRequest;
import javax.validation.Valid;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author brunovalentim
 */
@Controller
@RequestMapping(value = "usuario")
public class UsuarioController {

    private UsuarioRepository repository;

    public UsuarioController() {
    }

    @RequestMapping("cadastro")
    public ModelAndView cadastro() {
        return new ModelAndView("usuario/cadastro", "usuario", new Usuario());
    }

    @RequestMapping("adicionar")
    public ModelAndView adicionar(@Valid Usuario usuario, BindingResult result, ServletRequest request) {

        if (result.hasErrors()) {
            return new ModelAndView("usuario/cadastro");
        }
        this.repository = new UsuarioRepository((Session) request.getAttribute("session"));
        this.repository.save(usuario);
        return new ModelAndView("usuario/adicionado");
    }
}
