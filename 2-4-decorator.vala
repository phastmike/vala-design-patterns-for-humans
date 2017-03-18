interface Coffee : Object {
    public abstract int get_cost ();
    public abstract string get_description ();
}

class SimpleCoffee : Object, Coffee {
    public int get_cost () {
        return 10;
    }

    public string get_description () {
        return "Simple coffee";
    }
}   

class MilkCoffee : Object, Coffee {
    protected Coffee coffee;

    public MilkCoffee (Coffee coffee) {
        this.coffee = coffee;
    }

    public int get_cost () {
        return coffee.get_cost () + 2;
    }
    
    public string get_description () {
        return coffee.get_description () + ", milk";
    }
}

class WhipCoffee : Object, Coffee {
    protected Coffee coffee;

    public WhipCoffee (Coffee coffee) {
        this.coffee = coffee;
    }

    public int get_cost () {
        return coffee.get_cost () + 5;
    }
    
    public string get_description () {
        return coffee.get_description () + ", whip";
    }
}

class VanillaCoffee : Object, Coffee {
    protected Coffee coffee;

    public VanillaCoffee (Coffee coffee) {
        this.coffee = coffee;
    }

    public int get_cost () {
        return coffee.get_cost () + 3;
    }
    
    public string get_description () {
        return coffee.get_description () + ", vanilla";
    }
}

public int main (string[] args) {
    Coffee some_coffee = new SimpleCoffee ();
    print ("%d\n", some_coffee.get_cost ()); // 10
    print ("%s\n", some_coffee.get_description ()); // Simple Coffee

    some_coffee = new MilkCoffee (some_coffee);
    print ("%d\n", some_coffee.get_cost ()); // 12
    print ("%s\n", some_coffee.get_description ()); // Simple Coffee, milk

    some_coffee = new WhipCoffee (some_coffee);
    print ("%d\n", some_coffee.get_cost ()); // 17
    print ("%s\n", some_coffee.get_description ()); // Simple Coffee, milk, whip

    some_coffee = new VanillaCoffee (some_coffee);
    print ("%d\n", some_coffee.get_cost ()); // 20
    print ("%s\n", some_coffee.get_description ()); // Simple Coffee, milk, vanilla

    return 0;
}
