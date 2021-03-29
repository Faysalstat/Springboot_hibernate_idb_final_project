/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.service;

import hatkhola.repository.ProductRepository;
import java.util.List;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Faysal
 */
@Service
public class ProductService {

    @Autowired
    ProductRepository productRepository;

    public List<Product> getList() {
        List<Product> list = productRepository.getList();
        return list;

    }

    public String saveAll(Product product) {
        return productRepository.saveAll(product);
    }
    public String deleteproduct(Product product) {
        return productRepository.deleteproduct(product);
    }
    public Product findById(Long id) {
    return productRepository.findById(id);
    }
    public String updateProduct(Product product){
    return productRepository.updateProduct(product);
    }

}
