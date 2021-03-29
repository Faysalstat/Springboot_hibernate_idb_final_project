/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.jspHandler;

import hatkhola.service.ProductService;
import java.io.IOException;
import java.util.List;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


public class HomeController {
    
    @Autowired
    ProductService productService;
    
    @GetMapping({"/","index", "home"})
    public ModelAndView homepage(ModelAndView model) throws IOException {
        List<Product> list = productService.getList();
        model.addObject("productlist", list);
        model.setViewName("ecom/index");
        return model;
    }
    
}
