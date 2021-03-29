/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.controller;

import hatkhola.service.ProductService;
import hatkhola.service.UserService;
import hatkhola.service.WishlistService;
import java.util.List;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Product;
import model.Wishlist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/wishlist")
@CrossOrigin(origins = "*")
public class WishListController {

    @Autowired
    WishlistService wishlistService;
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;

    @PostMapping
    @CrossOrigin(origins = "*")
    public String addToWishlist(@RequestParam("id") Long id,HttpSession httpSession) {
        
        Customer customer = (Customer) httpSession.getAttribute("customer");
        Product product = productService.findById(id);
        Wishlist wish = new Wishlist();
        wish.setProduct(product);
        wish.setCustomer(customer);
        String status = wishlistService.saveAll(wish);
        return status;
    }

    @GetMapping("/getwishlist/{id}")
    @CrossOrigin(origins = "*")
    public List<Wishlist> getWishList(@PathVariable("id") Long id) {
        List<Wishlist> list = wishlistService.getList(id);
        return list;
    }

    @PostMapping("delete/{id}")
    @CrossOrigin(origins = "*")
    public String deleteWishItem(@PathVariable("id") Long id) {
        Wishlist wish = wishlistService.getbyId(id);
        String status = wishlistService.deletefromWishlist(wish);
        return status;
    }
}
