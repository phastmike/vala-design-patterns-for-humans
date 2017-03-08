interface Door : Object {
    public abstract void open ();
    public abstract void close ();
}

class LabDoor : Object, Door {
    public void open () {
        print ("Opening lab door\n");
    }

    public void close () {
        print ("Closing the lab door\n");
    }
}

class Security : Object {
    protected Door door;

    public Security (Door door) {
        this.door = door;
    }

    public void open (string password) {
        if (authenticate (password)) {
            door.open ();
        } else {
            print ("Big no! It ain't passible.\n");
        }
    }

    public bool authenticate (string password) {
        return password == "$ecr@t";
    }

    public void close () {
        door.close ();
    }
}

public int main (string[] args) {
    var door = new Security (new LabDoor ());

    door.open ("invalid");
    door.open ("$ecr@t");
    door.close ();

    return 0;
}
