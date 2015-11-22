/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.guate_jug.controllers;

import java.util.List;
import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.model.SelectItem;
import javax.inject.Inject;
import org.guate_jug.entities.Usuario;
import org.guate_jug.services.ListaService;

/**
 *
 * @author Carlos
 */
@ManagedBean(name = "usuarioManager")
@RequestScoped
public class UsuarioManager {     
    private Usuario usuarioActual;
    private List<SelectItem> comidaFavorita;
    @Inject
    private ListaService listaService;

    @PostConstruct
    public void construct() {
        Usuario usuario = new Usuario();
        List<SelectItem> comidas = listaService.getComidaFavorita();       
        setUsuarioActual(usuario);  
        setComidaFavorita(comidas);
    }
    
    @PreDestroy
    public void destroy(){
        setUsuarioActual(null);
    }
    
    public String save(){
        System.out.println(usuarioActual.getNombre());
        System.out.println(usuarioActual.getApellido());
        System.out.println(usuarioActual.getCorreo());
        System.out.println(usuarioActual.getEdad());
        System.out.println(usuarioActual.getFechaNacimiento().toString());
        System.out.println(usuarioActual.getComidaFavorita());
        return "/usuario/show.do";
    }
    
    public Usuario getUsuarioActual() {
        return usuarioActual;        
    }

    public void setUsuarioActual(Usuario usuarioActual) {
        this.usuarioActual = usuarioActual;
    }

    public List<SelectItem> getComidaFavorita() {
        return comidaFavorita;
    }

    public void setComidaFavorita(List<SelectItem> comidaFavorita) {
        this.comidaFavorita = comidaFavorita;
    }
    
}
