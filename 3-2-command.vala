class Bulb {
    public void turn_on () {
        print ("Bulb has been lit\n");
    }

    public void turn_off () {
        print ("Darkness!\n");
    }
}

interface Command {
    public abstract void execute ();
    public abstract void undo ();
    public abstract void redo ();
}

class TurnOn : Command {
    protected Bulb bulb;

    public TurnOn (Bulb bulb) {
        this.bulb = bulb;
    }

    public void execute () {
        bulb.turn_on ();
    }

    public void undo () {
        bulb.turn_off ();
    }

    public void redo () {
        execute ();
    }
}

class TurnOff : Command {
    protected Bulb bulb;

    public TurnOff (Bulb bulb) {
        this.bulb = bulb;
    }

    public void execute () {
        bulb.turn_off ();
    }

    public void undo () {
        bulb.turn_on ();
    }

    public void redo () {
        execute ();
    }
}

class RemoteControl {
    public void submit (Command command) {
        command.execute ();
    }
}

public int main (string[] args) {
    var bulb = new Bulb ();

    var turn_on = new TurnOn (bulb);
    var turn_off= new TurnOff (bulb);

    var remote = new RemoteControl ();
    remote.submit (turn_on);
    remote.submit (turn_off);

    return 0;
}
