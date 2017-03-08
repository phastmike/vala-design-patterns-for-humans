interface Door : Object {
    public abstract void get_description ();
}

class WoodenDoor : Object, Door {
    public void get_description () {
        print ("I'm a wooden door\n");
    }
}

class IronDoor : Object, Door {
    public void get_description () {
        print ("I'm a iron door\n");
    }
}

interface DoorFittingExpert : Object {
    public abstract void get_description ();
}

class Welder : Object, DoorFittingExpert {
    public void get_description () {
        print ("I can only fit iron doors\n");
    }
}

class Carpenter : Object, DoorFittingExpert {
    public void get_description () {
        print ("I can only fit wooden doors\n");
    }
}

interface DoorFactory : Object {
    public abstract Door make_door ();
    public abstract DoorFittingExpert make_fitting_expert ();
}

class WoodenDoorFactory : Object, DoorFactory {
    public Door make_door () {
        return new WoodenDoor ();
    }

    public DoorFittingExpert make_fitting_expert () {
        return new Carpenter ();
    }
}

class IronDoorFactory : Object, DoorFactory {
    public Door make_door () {
        return new IronDoor ();
    }

    public DoorFittingExpert make_fitting_expert () {
        return new Welder ();
    }
}

public int main (string[] args) {
    var wooden_factory = new WoodenDoorFactory ();

    var door = wooden_factory.make_door ();
    var expert = wooden_factory.make_fitting_expert ();

    door.get_description ();
    expert.get_description ();

    var iron_factory = new IronDoorFactory ();
    door = iron_factory.make_door ();
    expert = iron_factory.make_fitting_expert ();

    door.get_description ();
    expert.get_description ();
    
    return 0;
}
