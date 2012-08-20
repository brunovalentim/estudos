/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bv.criartivoeventos.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author brunovalentim
 */
@Controller
public class IndexController {
   
    @RequestMapping("login")
    public String login()
    {        
        return "login/login";
    }
    @RequestMapping("cadastro/usuario")
    public String cadastroUsuario()
    {        
        return "cadastro/usuario";
    }
}
