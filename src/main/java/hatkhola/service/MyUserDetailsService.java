/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.service;


import hatkhola.repository.CustomerRepository;
import hatkhola.securityconfig.UserPrinciple;
import model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Faysal
 */
@Service
public class MyUserDetailsService implements UserDetailsService{

    @Autowired
    CustomerRepository customerRepository;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Customer user = customerRepository.getbyusername(username);
        if (user==null) {
            throw new UsernameNotFoundException("User Not Found");
        }
        return new UserPrinciple(user);
    }
    
}
