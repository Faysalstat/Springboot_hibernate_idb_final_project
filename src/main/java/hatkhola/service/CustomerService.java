/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.service;

import hatkhola.repository.CustomerRepository;
import model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Faysal
 */
@Service
public class CustomerService {

    @Autowired
    CustomerRepository customerRepository;

    public String saveAll(Customer customer) {
        return customerRepository.saveAll(customer);
    }

    public String Update(Customer customer) {
        return customerRepository.Update(customer);
    }

    public Customer getbyCustomerId(Long id) {
        return customerRepository.getbyCustomerId(id);
    }

    public Customer getbyusername(String username) {
        return customerRepository.getbyusername(username);
    }
}
