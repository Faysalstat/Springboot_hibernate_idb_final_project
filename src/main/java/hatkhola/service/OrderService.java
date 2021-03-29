/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.service;

import hatkhola.repository.OrderRepository;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import model.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
    @Autowired
    OrderRepository orderRepository;

    public List<Orders> getList() {
        List<Orders> list = orderRepository.getList();
        return list;
    }
    public Orders getSingleOrderbyId(Long id) {
        return orderRepository.getSingleOrderbyId(id);
    }
    
    public String toPrecess(Orders orders){
        return orderRepository.toPrecess(orders);
    }
    public List<Orders> getListbyCustomerId(Long id) {
        List<Orders> list = orderRepository.getListbyCustomerId(id);
        return list;
    }
    public String saveAll(Orders order) {
        order.setOrderDate(today());
        return orderRepository.saveAll(order);
    }
    private Date today() {
        DateFormat df = new SimpleDateFormat("YYYY-MM-DD");
        Date dateobj = new Date();
        return dateobj;
    }

    public List<Orders> getYearlySale(int month,int year) {
        return orderRepository.getYearlySale(month,year);
    }
    
}
