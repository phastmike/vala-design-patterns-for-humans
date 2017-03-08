/* simple-factory.vala */

interface Door : Object {
    public abstract float get_width ();
    public abstract float get_height ();
}

class WoodenDoor: Object, Door {
    protected float width;
    protected float height;

    public WoodenDoor (float width, float height) {
        this.width = width;
        this.height = height;
    }

    public float get_width () {
        return width;
    }

    public float get_height () {
        return height;
    }
}

class DoorFactory {
    public static Door make_door (float width, float height) {
        return new WoodenDoor (width, height);
    }
}

public int main (string[] args) {
    var door = DoorFactory.make_door (100,200);
    print ("width: %f\n", door.get_width ());
    print ("height: %f\n", door.get_height ());
    return 0;
}
