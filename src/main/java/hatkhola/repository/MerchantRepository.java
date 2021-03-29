/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.repository;

import java.util.List;
import model.Merchant;
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
public class MerchantRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public boolean checkLogin(Merchant merchant) {
        String email = merchant.getEmail();
        String sql = "Select m from Merchant m where m.email= :email";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setParameter("email", email);
        List<Merchant> list = query.list();
        System.out.println(list.get(0).getPassword());
        if (list.get(0).getPassword().equals(merchant.getPassword())) {
//            return "{\"status\":\"true\"}";
            return true;
        }
//        return "{\"status\":\"false\"}";
        return false;
    }

    public List<Merchant> getMerchant() {
        String sql = "Select p from Merchant p";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        List<Merchant> list = query.list();
        return list;
    }
}
