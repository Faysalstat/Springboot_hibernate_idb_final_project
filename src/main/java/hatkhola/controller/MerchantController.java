/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.controller;

import hatkhola.service.MerchantService;
import java.util.List;
import model.Merchant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Faysal
 */
@RestController
@RequestMapping("/merchant")
public class MerchantController {
    
    @Autowired
    MerchantService merchantService;
    
    @PostMapping
    @CrossOrigin(origins = "*")
    public String checkLogin(@RequestBody Merchant merchant) {
        
        System.out.println("got it");
        boolean flag = merchantService.checkLogin(merchant);
        if (flag) {
             return "{\"status\":\"true\"}";
        }
        return "{\"status\":\"false\"}";
    }
    
    @GetMapping("getm")
    public List<Merchant> getMerchant(){
        List<Merchant> list = merchantService.getMerchant();
    return list;
    }
    
}
