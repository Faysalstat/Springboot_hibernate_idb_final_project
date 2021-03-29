/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.controller;

import hatkhola.service.CartService;
import hatkhola.service.ProductService;
import hatkhola.service.UserService;
import java.util.List;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Customer;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Faysal
 */
@RestController
@RequestMapping("/cart")
@CrossOrigin(origins = "*")
public class CartController {

    @Autowired
    CartService cartService;
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;

    @PostMapping
    @CrossOrigin(origins = "*")
    public String addToCart(@RequestParam("id") Long id,
            @RequestParam("quantity") int quantity,
            HttpSession httpSession) {
        Customer customer = (Customer) httpSession.getAttribute("customer");
        Product product = productService.findById(id);
        Cart cart = new Cart();
        cart.setProduct(product);
        cart.setCustomer(customer);
        cart.setQuantity(quantity);
        String status = cartService.saveAll(cart);
        return status;
    }

    @PostMapping("delete/{id}")
    @CrossOrigin(origins = "*")
    public String deleteCartItem(@PathVariable("id") Long id) {

        Cart cart = cartService.getListbyCartId(id);
        String status = cartService.deleteCartItem(cart);
        return status;
    }

    @PostMapping("/update")
    @CrossOrigin(origins = "*")
    public String updateList(@RequestBody List<Cart> cartlist) {
        String status = cartService.updateList(cartlist);
        return status;
    }

}
