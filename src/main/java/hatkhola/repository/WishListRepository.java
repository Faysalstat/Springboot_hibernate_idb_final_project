/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.repository;

import java.util.List;
import model.Cart;
import model.Wishlist;
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
public class WishListRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Wishlist> getList(Long id) {
        String sql = "Select w from Wishlist w where w.customer.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        List<Wishlist> list = query.list();
        return list;

    }
    public Wishlist getbyId(Long id) {
        String sql = "Select w from Wishlist w where w.id= :id";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("id", id);
        List<Wishlist> list = query.list();
        return list.get(0);

    }

    public String saveAll(Wishlist wish) {
        boolean isExist = getSingleWish(wish.getProduct().getId(),wish.getCustomer().getId());
        if (isExist) {
            return "{\"status\":\"Allready Exists\"}";
        }
        sessionFactory.getCurrentSession().merge(wish);
        return "{\"status\":\"added to Wishlist\"}";
    }

    public boolean getSingleWish(Long pid,Long cid) {
        String sql = "Select w from Wishlist w where w.product.id= :pid "
                + "and w.customer.id=:cid";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("pid", pid);
        query.setParameter("cid", cid);
        if (query.list().isEmpty()) {
            return false;
        }
        return true;
    }

    public String deletefromWishlist(Wishlist wish) {
        sessionFactory.getCurrentSession().delete(wish);
        return "{\"status\":\"Success\"}";
    }
}
