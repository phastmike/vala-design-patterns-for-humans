public class President : Object {
    static President? instance;
 
    // Private constructor
    private President () {
 
    }
 
    // Public constructor
    public static President get_instance () {
        if (instance == null) {
            instance = new President ();
        }
        return instance;
    }

    // No default clone or unserialize methods.
}
 
void main () {
    President a = President.get_instance ();
    President b = President.get_instance ();

    print ((a == b).to_string () + "\n"); // true
}
