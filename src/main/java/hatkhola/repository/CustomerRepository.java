/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.repository;

import java.util.List;
import model.Customer;
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
public class CustomerRepository {
    @Autowired
    private SessionFactory sessionFactory;
    
    public String saveAll(Customer customer) {
        sessionFactory.getCurrentSession().save(customer);
        return "{\"status\":\"Success\"}";
    }
    public String Update(Customer customer) {
        sessionFactory.getCurrentSession().merge(customer);
        return "{\"status\":\"Success\"}";
    }
    
    public Customer getbyCustomerId(Long id) {
        String sql = "Select c from Customer c where c.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        List<Customer> list = query.list();
        return list.get(0);

    }
    public Customer getbyusername(String username) {
        String sql = "Select c from Customer c where c.username= :username";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("username", username);
        List<Customer> list = query.list();
        return list.get(0);

    }
}
