/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.repository;

import java.util.List;
import model.Product;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Faysal
 */
@Repository
@Transactional
public class ProductRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Product> getList() {
        
        String sql = "Select p from Product p  order by p.quantitysold desc";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        List<Product> list = query.list();
        return list;

    }

    public String saveAll(Product product) {
        sessionFactory.getCurrentSession().save(product);
        return "{\"status\":\"Success\"}";
    }
    public String deleteproduct(Product product) {
        sessionFactory.getCurrentSession().delete(product);
        return "{\"status\":\"Success\"}";
    }

    public Product findById(Long id) {
        String sql = "Select p from Product p where p.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        List<Product> list = query.list();
        return list.get(0);
    }

    public String updateProduct(Product product) {
        sessionFactory.getCurrentSession().merge(product);
        return "{\"status\":\"Success\"}";
    }
}
