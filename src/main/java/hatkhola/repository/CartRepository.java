/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.repository;

import java.util.List;
import model.Cart;
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
public class CartRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Cart> getListbyCustomerId(Long id) {
        String sql = "Select p from Cart p where p.customer.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        List<Cart> list = query.list();
        return list;

    }

    public Cart getListbyCartId(Long id) {
        String sql = "Select c from Cart c where c.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        List<Cart> list = query.list();
        return list.get(0);

    }

    public String saveAll(Cart cart) {
        boolean isExist = getSingleCartbyproductID(cart.getProduct().getId(),cart.getCustomer().getId());
        if (isExist) {
            return "{\"status\":\"Allready Exists\"}";
        }
        sessionFactory.getCurrentSession().save(cart);
        return "{\"status\":\"Added Successfully\"}";
    }

    public String updateList(List<Cart> cartlist) {
        for (Cart ucart : cartlist) {
            Cart cart = getSingleCartbyCartId(ucart.getId());
            System.out.println(ucart.getId());
            cart.setQuantity(ucart.getQuantity());
            sessionFactory.getCurrentSession().save(cart);
        }
        return "{\"status\":\"Cart Updated\"}";
    }

    public boolean getSingleCartbyproductID(Long pid,Long cid) {
        String sql = "Select p from Cart p where p.product.id= :pid and"
                + " p.customer.id= :cid";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("pid", pid);
        query.setParameter("cid", cid);
        if (query.list().isEmpty()) {
            return false;
        }
        return true;
    }
    public Cart getSingleCartbyCartId(Long id) {
        String sql = "Select c from Cart c where c.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        return (Cart)query.list().get(0);
    }

    public String deleteCartItem(Cart cart) {
        sessionFactory.getCurrentSession().delete(cart);
        return "{\"status\":\"Delete Successfully\"}";
    }
}
