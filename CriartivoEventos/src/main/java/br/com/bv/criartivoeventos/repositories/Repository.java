/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.bv.criartivoeventos.repositories;

import br.com.bv.criartivoeventos.models.AbstractEntity;
import java.lang.reflect.ParameterizedType;
import org.hibernate.Session;

/**
 *
 * @author brunovalentim
 */
public class Repository {

    private Session session;    

    public Repository(Session session) {
        this.session = session;
     
    }

//    public AbstractEntity load(AbstractEntity entity) {
//        return (AbstractEntity) this.session.load(clazz, entity);
//    }

    public void save(AbstractEntity entity) {
        this.session.saveOrUpdate(entity);
    }

    public void delete(AbstractEntity entity) {
        this.session.delete(entity);
    }
}
