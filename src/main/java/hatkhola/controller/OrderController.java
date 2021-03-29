/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.controller;

import hatkhola.service.CartService;
import hatkhola.service.OrderService;
import hatkhola.service.ProductService;
import hatkhola.service.UserService;
import java.util.List;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Orders;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/order")
@CrossOrigin(origins = "*")
public class OrderController {

    @Autowired
    OrderService orderService;
    @Autowired
    CartService cartService;
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;

    @PostMapping("paymentsuccess/{refid}")
    @CrossOrigin("*")
    public String paymentsuccess(@PathVariable("refid") String refid) {
        return refid;
    }

    @PostMapping("process/{id}")
    @CrossOrigin(origins = "*")
    public String updateOrderstatus(@PathVariable("id") Long id) {
        Orders singleOrder = orderService.getSingleOrderbyId(id);
        singleOrder.setStatus("Processing");
        double sale = (singleOrder.getProduct().getNewPrice()*singleOrder.getQuantity()+100);
        singleOrder.setSale(sale);
        String stat = orderService.toPrecess(singleOrder);
        Product product = singleOrder.getProduct();
        product.setQuantitysold(product.getQuantitysold() + singleOrder.getQuantity());
        productService.updateProduct(product);
        return stat;
    }

    @PostMapping("shipping/{id}")
    @CrossOrigin(origins = "*")
    public String shippingOrderstatus(@PathVariable("id") Long id) {
        Orders singleOrder = orderService.getSingleOrderbyId(id);
        singleOrder.setStatus("Shipping");
        String stat = orderService.toPrecess(singleOrder);
        return stat;
    }
    @PostMapping("deliver/{id}")
    @CrossOrigin(origins = "*")
    public String deliverOrderstatus(@PathVariable("id") Long id) {
        Orders singleOrder = orderService.getSingleOrderbyId(id);
        singleOrder.setStatus("Delivered");
        String stat = orderService.toPrecess(singleOrder);
        return stat;
    }

    @PostMapping("cancel/{id}")
    @CrossOrigin(origins = "*")
    public String cancelOrder(@PathVariable("id") Long id) {
        Orders singleOrder = orderService.getSingleOrderbyId(id);
        singleOrder.setStatus("Canceled");
        String stat = orderService.toPrecess(singleOrder);
        return stat;
    }

//    test
    @GetMapping("montlysale")
    public List<Orders> montlysale() {
            List<Orders> sale = orderService.getList();
            for(Orders order:sale){
              Product product = order.getProduct();
              product.setQuantitysold(order.getQuantity());
              productService.updateProduct(product);
            }
            return sale;
        
    }

}
