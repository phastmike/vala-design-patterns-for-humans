using Gee;

class KarakTea {

}

class TeaMaker {
    protected HashMap<string, KarakTea> available_tea = new HashMap<string, KarakTea> ();

    public KarakTea make (string preference) {
        if (!available_tea.has_key (preference)) {
            available_tea[preference] = new KarakTea ();
        }

        return available_tea[preference];
    }
}

class TeaShop {
    protected HashMap<int, KarakTea> orders = new HashMap<int, KarakTea> ();
    protected TeaMaker tea_maker;

    public TeaShop (TeaMaker tea_maker) {
        this.tea_maker = tea_maker;
    }

    public void take_order (string tea_type, int table) {
        orders[table] = tea_maker.make (tea_type); 
    }

    public void serve () {
        foreach (int table in orders.keys) {
            print ("Serving tea to table# %d\n", table);
        }
    }
}

public int main (string[] args) {
    var tea_maker = new TeaMaker ();
    var shop = new TeaShop (tea_maker);

    shop.take_order ("less sugar", 1);
    shop.take_order ("more milk", 2);
    shop.take_order ("without sugar", 5);

    shop.serve ();

    return 0;
}
