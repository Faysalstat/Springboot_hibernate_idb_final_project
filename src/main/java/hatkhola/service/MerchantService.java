/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.service;

import hatkhola.repository.MerchantRepository;
import java.util.List;
import model.Merchant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Faysal
 */
@Service

@Transactional
public class MerchantService {

    @Autowired
    MerchantRepository merchantRepository;

    public boolean checkLogin(Merchant merchant) {
        boolean status = merchantRepository.checkLogin(merchant);
        return status;
    }

    public List<Merchant> getMerchant() {

        return merchantRepository.getMerchant();
    }

}
