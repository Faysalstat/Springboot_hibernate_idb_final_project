package model;
// Generated Feb 29, 2020 6:06:14 PM by Hibernate Tools 4.3.1

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Customer generated by hbm2java
 */
@Entity
@Table(name = "customer",
         catalog = "hatkhola"
)
public class Customer implements java.io.Serializable {


     private Long id;
     private String email;
     private String password;
     private String username;
     private String userrole;
     private String customername;
     private String contactno;

    public Customer() {
    }

    public Customer(String email, String password, String username, String userrole, String customername, String contactno) {
       this.email = email;
       this.password = password;
       this.username = username;
       this.userrole = userrole;
       this.customername = customername;
       this.contactno = contactno;
      
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="id", unique=true, nullable=false)
    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    
    @Column(name="email", length=150)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    
    @Column(name="password", length=100)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    
    @Column(name="username")
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    
    @Column(name="userrole", length=20)
    public String getUserrole() {
        return this.userrole;
    }
    
    public void setUserrole(String userrole) {
        this.userrole = userrole;
    }

    
    @Column(name="customername", length=100)
    public String getCustomername() {
        return this.customername;
    }
    
    public void setCustomername(String customername) {
        this.customername = customername;
    }

    
    @Column(name="contactno", length=100)
    public String getContactno() {
        return this.contactno;
    }
    
    public void setContactno(String contactno) {
        this.contactno = contactno;
    }
}
