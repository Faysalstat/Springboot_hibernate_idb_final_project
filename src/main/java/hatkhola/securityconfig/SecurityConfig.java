/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hatkhola.securityconfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

/**
 *
 * @author Faysal
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;
    
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Bean
    public AuthenticationProvider authProvider() {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailsService);
        provider.setPasswordEncoder(passwordEncoder);
//        provider.setPasswordEncoder(NoOpPasswordEncoder.getInstance());
        return provider;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests().antMatchers("/","/hatkhola/login","/hatkhola/registeruser",
                        "/dashboard/**","/order/**","/product/**")
                .permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/hatkhola/login")
                .defaultSuccessUrl("/hatkhola/index", true)
                .permitAll()
                .and()
                .logout().invalidateHttpSession(true)
                .clearAuthentication(true)
                .and()
                .rememberMe().key("uniqueAndSecret")
                .userDetailsService(userDetailsService)
                .and()
                .logout().invalidateHttpSession(true)
                .clearAuthentication(true)
                .logoutRequestMatcher(new AntPathRequestMatcher("/hatkhola/logout"))
                .logoutSuccessUrl("/hatkhola/login").permitAll();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        //Web resources
        web.ignoring().antMatchers("/ecom/css/**");
        web.ignoring().antMatchers("/ecom/fonts/**");
        web.ignoring().antMatchers("/ecom/js/**");
        web.ignoring().antMatchers("/ecom/images/**");
        web.ignoring().antMatchers("/dash/css/**");
        web.ignoring().antMatchers("/dash/img/**");
        web.ignoring().antMatchers("/dash/lib/**");
        web.ignoring().antMatchers("/dash/lib/bootstrap-datepicker/css/**");
        web.ignoring().antMatchers("/dash/lib/bootstrap-datetimepicker/**");
        web.ignoring().antMatchers("/img/**");
        web.ignoring().antMatchers("*.map");
        web.ignoring().antMatchers("*.css");
    }

}
