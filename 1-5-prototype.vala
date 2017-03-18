// CONTROVERSIAL SUBJECT ON OBJECT.CLONE ()
class Sheep {
    protected string name;
    protected string category;

    public Sheep (string name, string category = "Mountain Sheep") {
        this.name = name;
        this.category = category;
    }

    public void set_name (string name) {
        this.name = name;
    }

    public string get_name () {
        return name;
    }

    public void set_category (string category) {
        this.category = category;
    }

    public string get_category () {
        return category;
    }

    // No Object clone method, lets implement a clone method
    public Sheep clone () {
        return new Sheep (name, category);
    }
}

public static int main (string[] args) {
    var original = new Sheep ("Jolly");
    print ("%s\n", original.get_name ());
    print ("%s\n", original.get_category ());

    var cloned = original.clone ();
    cloned.set_name ("Dolly");
    print ("%s\n", cloned.get_name ());
    print ("%s\n", cloned.get_category ());
    
    return 0;
}


