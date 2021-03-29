/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.repository;

import java.util.List;
import model.Cart;
import model.Orders;
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
public class OrderRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Orders> getList() {
        String sql = "Select o from Orders o";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        List<Orders> list = query.list();
        return list;

    }

    public String saveAll(Orders order) {
        sessionFactory.getCurrentSession().save(order);
        return "{\"status\":\"Success\"}";
    }

    public List<Orders> getListbyCustomerId(Long id) {
        String sql = "Select o from Orders o where o.customer.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        List<Orders> list = query.list();
        return list;

    }

    public Orders getSingleOrderbyId(Long id) {
        String sql = "Select o from Orders o where o.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        return (Orders) query.list().get(0);
    }

    public String toPrecess(Orders orders) {
        sessionFactory.getCurrentSession().merge(orders);
        return "{\"status\":\"true\"}";
    }

    public String deleteCartItem(Long id) {
        Cart cart = new Cart();
        cart.setId(id);
        sessionFactory.getCurrentSession().delete(cart);
        return "{\"status\":\"Success\"}";
    }

    public List<Orders> getYearlySale(int month,int year) {
        String sql = "Select o.sale from Orders o where MONTH(o.orderDate) = :month";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("month", month);
        List<Orders> list = query.list();
        return list;

    }
}
