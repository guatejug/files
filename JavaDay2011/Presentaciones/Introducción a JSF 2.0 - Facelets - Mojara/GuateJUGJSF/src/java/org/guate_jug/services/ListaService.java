/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.guate_jug.services;

import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.model.SelectItem;

/**
 *
 * @author Carlos
 */
@ManagedBean(name="listaService")
@ApplicationScoped
public class ListaService {
    
    public List<SelectItem> getComidaFavorita(){
        List<SelectItem> comidas = new ArrayList<SelectItem>();
        comidas.add(new SelectItem("-1", "Seleccionar valor"));
        comidas.add(new SelectItem("1", "Hamburguesas"));
        comidas.add(new SelectItem("2", "Pizza"));
        comidas.add(new SelectItem("3", "Carne azada"));
        comidas.add(new SelectItem("4", "Pasta"));
        comidas.add(new SelectItem("5", "Chao mein"));
        comidas.add(new SelectItem("6", "Tamales"));
        comidas.add(new SelectItem("7", "Cak'iq"));
        return comidas;
    }
    
}
