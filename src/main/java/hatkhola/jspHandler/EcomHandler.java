/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.jspHandler;

//@Scope(value = "session")
import hatkhola.service.CartService;
import hatkhola.service.CustomerService;
import hatkhola.service.OrderService;
import hatkhola.service.ProductService;
import hatkhola.service.WishlistService;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Customer;
import model.Orders;
import model.Product;
import model.Wishlist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "ecomhandler")
@RequestMapping(value = "/hatkhola")
public class EcomHandler {
    
    @Autowired
    ProductService productService;
    
    @Autowired
    CartService cartService;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    WishlistService wishService;
    @Autowired
    OrderService orderService;
    @Autowired
    CustomerService customerService;
    
    @GetMapping("/index")
    public ModelAndView welcome(ModelAndView model, HttpSession httpSession,Authentication authentication) throws IOException {
        String name = authentication.getName();
        Customer customer = customerService.getbyusername(name);
        httpSession.setAttribute("customer", customer);
        List<Product> list = productService.getList();
        model.addObject("customer", customer);
        model.addObject("productlist", list);
        model.setViewName("ecom/index");
        return model;
    }
    
    @GetMapping("shop")
    public ModelAndView shop(ModelAndView model,HttpSession httpSession) throws IOException {
        Customer customer = (Customer) httpSession.getAttribute("customer");
        List<Product> list = productService.getList();
        model.addObject("customer", customer);
        model.addObject("productlist", list);
        model.setViewName("ecom/shop");
        return model;
    }
    
    @GetMapping("cartlist")
    public ModelAndView cartList(ModelAndView model,HttpSession httpSession) throws IOException {
        Customer customer = (Customer) httpSession.getAttribute("customer");
        List<Cart> list = cartService.getListbyCustomerId(customer.getId());
        model.addObject("cartlist", list);
        model.setViewName("ecom/cartlist");
        return model;
    }
    
    @GetMapping("wishlist")
    public ModelAndView wishList(ModelAndView model,HttpSession httpSession) throws IOException {
        Customer customer = (Customer) httpSession.getAttribute("customer");
        List<Wishlist> list = wishService.getList(customer.getId());
        model.addObject("wishlist", list);
        model.setViewName("ecom/wishlist");
        return model;
    }
    
    @GetMapping("checkout")
    public ModelAndView checkOut(ModelAndView model,HttpSession httpSession) throws IOException {
        Customer customer = (Customer) httpSession.getAttribute("customer");
        List<Cart> list = cartService.getListbyCustomerId(customer.getId());
        double totalpayment = 0;
        for (Cart cart:list) {
            totalpayment+= (cart.getProduct().getNewPrice()*cart.getQuantity())+100;
        }
        model.addObject("customer", customer);
        model.addObject("totalpayment", totalpayment);
        model.addObject("cartlist", list);
        model.setViewName("ecom/checkout");
        return model;
    }
    
    @PostMapping("placeorder")
    @CrossOrigin(origins = "*")
    public ModelAndView addToOrder(@RequestBody Orders order,ModelAndView model, HttpSession httpSession) {
        Customer customer = (Customer) httpSession.getAttribute("customer");
        order.setCustomer(customer);
        order.setProduct(productService.findById(order.getProduct().getId()));
        order.setOrderId("OU" + System.currentTimeMillis());
        order.setStatus("Pending");
        order.setSale(new Double(0));
        orderService.saveAll(order);
        model.setViewName("ecom/checkout");
        return model;
    }
    
    @GetMapping("contact")
    public String contact() {
        return "ecom/contact";
    }
    
    @GetMapping("trackorder")
    public ModelAndView trackorder(ModelAndView model,HttpSession httpSession) {
         Customer customer = (Customer) httpSession.getAttribute("customer");
        List<Orders> orders = orderService.getListbyCustomerId(customer.getId());
        model.addObject("orders", orders);
        model.setViewName("ecom/trackorder");
        return model;
    }
    
    @GetMapping("quickview/{id}")
    public ModelAndView productView(ModelAndView model, @PathVariable("id") Long id) {
        Product product = productService.findById(id);
        model.addObject("product", product);
        model.setViewName("ecom/productdetails");
        return model;
    }
    
    @GetMapping("login")
    public ModelAndView login(ModelAndView model) throws IOException {
        model.setViewName("ecom/loginregister");
        return model;
    }
    
    @PostMapping("registeruser")
    public ModelAndView registeruser(@ModelAttribute Customer customer, ModelAndView model) throws IOException {
        customer.setUserrole("USER");
        String encodedpass = passwordEncoder.encode(customer.getPassword());
        customer.setPassword(encodedpass);
        String status = customerService.saveAll(customer);
        model.setViewName("ecom/loginregister");
        return model;
    }
}
