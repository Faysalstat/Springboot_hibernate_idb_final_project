/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.jspHandler;

import hatkhola.service.CustomerService;
import hatkhola.service.MerchantService;
import hatkhola.service.OrderService;
import hatkhola.service.ProductService;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Orders;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//@Scope(value = "session")
@Controller(value = "pagehandler")
@RequestMapping(value = "/dashboard")
public class DashboardHandler {

    @Autowired
    CustomerService customerService;

    @Autowired
    ProductService productService;

    @Autowired
    OrderService orderService;

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login() {
        return "dash/login";
    }

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView welcome(ModelAndView model) {
        try {
            List<Orders> list = orderService.getList();
            List<Product> plist = productService.getList();
            double jan = 0;
            double feb = 0;
            double mar = 0;
            double apr = 0;
            double may = 0;
            double jun = 0;
            double jul = 0;
            double aug = 0;
            double sep = 0;
            double oct = 0;
            double nov = 0;
            double dec = 0;
            double total = 0;
            Date dateobj = new Date();
            System.out.println(dateobj.getMonth());
//            for (Orders order : list) {
//                
//            }
            for (Orders order : list) {
total = total+order.getSale();
                switch (order.getOrderDate().getMonth() + 1) {
                    case 1:
                        jan += order.getSale();
                        break;
                    case 2:
                        feb += order.getSale();
                        break;
                    case 3:
                        mar += order.getSale();
                        break;
                    case 4:
                        apr += order.getSale();
                        break;
                    case 5:
                        may += order.getSale();
                        break;
                    case 6:
                        jun += order.getSale();
                        break;
                    case 7:
                        jul += order.getSale();
                        break;
                    case 8:
                        aug += order.getSale();
                        break;
                    case 9:
                        sep += order.getSale();
                        break;
                    case 10:
                        oct += order.getSale();
                        break;
                    case 11:
                        nov += order.getSale();
                        break;
                    case 12:
                        dec += order.getSale();
                        break;
                    default:
                        break;
                }

            }

            model.addObject("jan", (jan / total) * 100);
            model.addObject("feb", (feb / total) * 100);
            model.addObject("mar", (mar / total) * 100);
            model.addObject("apr", (apr / total) * 100);
            model.addObject("may", (may / total) * 100);
            model.addObject("jun", (jun / total) * 100);
            model.addObject("jul", (jul / total) * 100);
            model.addObject("aug", (aug / total) * 100);
            model.addObject("sep", (sep / total) * 100);
            model.addObject("oct", (oct / total) * 100);
            model.addObject("nov", (nov / total) * 100);
            model.addObject("dec", (dec / total) * 100);
            model.addObject("orderlist", list);
            model.addObject("productlist", plist);
            model.addObject("total", total);
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.setViewName("dash/home");
        return model;
    }

    @RequestMapping(value = "loginchk", method = RequestMethod.POST)
    public String loginchk(@ModelAttribute("user") Customer merchant, HttpSession httpSession) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        System.out.println(merchant.getEmail());
        Customer admin = customerService.getbyusername(merchant.getUsername());
        if (encoder.matches(merchant.getPassword(), admin.getPassword()) && admin.getUserrole().equals("ADMIN")) {
            httpSession.setAttribute("admin", admin);
            return "dash/redirecthome";
        }
        return "dash/login";
    }

    @RequestMapping(value = "allproduct", method = RequestMethod.GET)
    public ModelAndView listContact(ModelAndView model) throws IOException {
        List<Product> productlist = productService.getList();
        model.addObject("productlist", productlist);
        model.setViewName("dash/all_product");
        return model;
    }

    @PostMapping("updateproduct")
    @CrossOrigin(origins = "*")
    public String updateproduct(@ModelAttribute("product") Product product) {
        String status = productService.updateProduct(product);
        return "dash/edit_product";
    }

    @PostMapping("addproducttodatabase")
    @CrossOrigin(origins = "*")
    public String addProducttodatabase(@ModelAttribute("product") Product product) {
        String status = productService.saveAll(product);
        return "dash/add_product";
    }

    @RequestMapping(value = "viewproduct", method = RequestMethod.GET)
    public String viewproduct() {
        return "dash/viewproduct";
    }

    @RequestMapping(value = "addproduct", method = RequestMethod.GET)
    public String addprouctpage() {
        return "dash/add_product";
    }

    @GetMapping("logout")
    public ModelAndView logout(@PathVariable("id") Long id, ModelAndView model, HttpSession httpSession) {
        httpSession.invalidate();
        model.setViewName("dash/login");
        return model;
    }

    @GetMapping("editproduct/{id}")
    public ModelAndView editproduct(@PathVariable("id") Long id, ModelAndView model) {
        Product product = productService.findById(id);
        model.addObject("product", product);
        model.setViewName("dash/edit_product");
        return model;
    }
    @GetMapping("delete/{id}")
    public ModelAndView deleteproduct(@PathVariable("id") Long id, ModelAndView model) {
        Product product = productService.findById(id);
        productService.deleteproduct(product);
        List<Product> productlist = productService.getList();
        model.addObject("productlist", productlist);
        model.setViewName("dash/all_product");
        return model;
    }

    @GetMapping("orders")
    public ModelAndView orderList(ModelAndView model) throws IOException {
        List<Orders> list = orderService.getList();
        int pending = 0;
        int processing = 0;
        int delivered = 0;
        int shipping = 0;
        int canceled = 0;
        for (Orders order : list) {
            switch (order.getStatus()) {
                case "Pending":
                    pending++;
                    break;
                case "Processing":
                    processing++;
                    break;
                case "Delivered":
                    delivered++;
                    break;
                case "Shipping":
                    shipping++;
                    break;
                case "Canceled":
                    canceled++;
                    break;
                default:
                    break;
            }

        }
        model.addObject("pending", pending);
        model.addObject("processing", processing);
        model.addObject("delivered", delivered);
        model.addObject("shipping", shipping);
        model.addObject("canceled", canceled);
        model.addObject("orderlist", list);
        model.setViewName("dash/order");
        return model;
    }
}
