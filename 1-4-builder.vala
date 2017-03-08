class Burger {
    protected int size;
    
    protected bool cheese = false;
    protected bool pepperoni = false;
    protected bool lettuce = false;
    protected bool tomato = false;

    public Burger (BurgerBuilder builder) {
        size = builder.size;
        cheese = builder.cheese;
        pepperoni = builder.pepperoni;
        lettuce = builder.lettuce;
        tomato = builder.tomato;
    }
}

class BurgerBuilder {
    public int size;

    public bool cheese = false;
    public bool pepperoni = false;
    public bool lettuce = false;
    public bool tomato = false;

    public BurgerBuilder (int size) {
        this.size = size;
    }

    public BurgerBuilder add_cheese () {
        cheese = true;
        return this;
    } 

    public BurgerBuilder add_pepperoni () {
        pepperoni = true;
        return this;
    } 

    public BurgerBuilder add_lettuce () {
        lettuce = true;
        return this;
    }

    public BurgerBuilder add_tomato () {
        tomato = true;
        return this;
    }

    public Burger build () {
        return new Burger (this);
    }
}

public int main (string[] args) {
    var burger = (new BurgerBuilder (14))
                    .add_pepperoni ()
                    .add_lettuce ()
                    .add_tomato ()
                    .build ();

    return 0;
}


