class Product {
    constructor(id) {
        this.id = id;
    }
}


class Customer {
    constructor(id) {
        this.id = id;
    }
}
class Cart {
    constructor(id, customer, product, quantity) {
        this.id = id;
        this.customer = customer;
        this.product = product;
        this.quantity = quantity;
    }
}

class Address {
    constructor(district, city, houseno, roadno, fulladdress) {
        this.district = district;
        this.city = city;
        this.houseno = houseno;
        this.roadno = roadno;
        this.fulladdress = fulladdress;
    }
}

class Order {
    constructor(product,quantity,paymentMethod, address, contact) {
        this.quantity=quantity;
        this.product=product;
        this.paymentMethod = paymentMethod;
        this.address = address;
        this.contact = contact;
    }
}