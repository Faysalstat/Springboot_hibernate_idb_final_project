/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.controller;

import hatkhola.service.ProductService;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@RestController
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService productService;

    @GetMapping("/getp")
    @CrossOrigin("*")
    public List<Product> getProduct() {
        List<Product> list = productService.getList();
        return list;
    }

    @PostMapping
    @CrossOrigin(origins = "*")
    public String addProduct(@ModelAttribute("product") Product product) {
        String status = productService.saveAll(product);
        return status;
    }

//    @PostMapping("deleteproduct/{id}")
//    @CrossOrigin(origins = "*")
//    public String deleteProduct(@PathVariable("id") Long id) {
//        Product product = productService.findById(id);
//        productService.deleteproduct(product);
//        return "{\"action\":false}";
//    }

    @PostMapping("/upload")
    @CrossOrigin(origins = "*")
    public String singleFileUpload(@RequestParam("image") MultipartFile file,
            RedirectAttributes redirectAttributes) {

        String image = System.currentTimeMillis() + ".jpg";

        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
//            Path path = Paths.get("C:/Users/Faysal/Desktop/"
//                     + image);
            Path path = Paths.get("C:/Users/Faysal/Documents/NetBeansProjects/"
                    + "SpringBoot_Hibernate_JSP/src/main/webapp/WEB-INF/assets/img/products/"
                    + image);
            Files.write(path, bytes);
        } catch (IOException e) {
            return "{\"action\":false}";
        }

        return "{\"action\":true , \"iname\":\"" + image + "\"}";
    }

}
