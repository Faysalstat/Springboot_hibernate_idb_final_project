/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.service;

import hatkhola.repository.CartRepository;
import java.util.List;
import model.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CartService {
    @Autowired
    CartRepository cartRepository;

    public List<Cart> getListbyCustomerId(Long id) {
        List<Cart> list = cartRepository.getListbyCustomerId(id);
        return list;
    }
    public Cart getListbyCartId(Long id) {
        return cartRepository.getListbyCartId(id);
    }
    
    


    public String saveAll(Cart cart) {
        return cartRepository.saveAll(cart);
    }
   public String updateList(List<Cart> cartlist) {
        return cartRepository.updateList(cartlist);
    }
     public String deleteCartItem(Cart cart){        
        return cartRepository.deleteCartItem(cart);
    }
     
     
    

}
