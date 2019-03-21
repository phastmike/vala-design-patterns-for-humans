/*
 * Alternative singleton (vala/glib way)
 */

public class President : Object {
    static GLib.Once<President> _instance;
 
    // Public constructor
    public static unowned President instance () {
        return _instance.once (() => {
            return new President ();
        });
    }
}
 
void main () {
    President a = President.instance ();
    President b = President.instance ();

    print ((a == b).to_string () + "\n"); // true
}
