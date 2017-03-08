class Computer {
    public void get_electric_shock () {
        print ("Ouch!\n");
    }

    public void make_sound () {
        print ("Beep beep!\n");
    }

    public void show_loading_screen () {
        print ("Loading...\n");
    }

    public void bam () {
        print ("Ready to be used!\n");
    }

    public void close_everything () {
        print ("Bup bup bup buzzzz!\n");
    }

    public void sooth () {
        print ("Zzzzz\n");
    }

    public void pull_current () {
        print ("Haaah!\n");
    }
}

class ComputerFacade {
    protected Computer computer;

    public ComputerFacade (Computer computer) {
        this.computer = computer;
    }

    public void turn_on () {
        computer.get_electric_shock ();
        computer.make_sound ();
        computer.show_loading_screen ();
        computer.bam ();
    }

    public void turn_off () {
        computer.close_everything ();
        computer.pull_current ();
        computer.sooth ();
    }
}

public int main (string[] args) {
    var computer = new ComputerFacade (new Computer());
    computer.turn_on ();
    computer.turn_off ();

    return 0;
}
