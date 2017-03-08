// Visitee
interface Animal {
    public abstract void accept (AnimalOperation operation);
}

interface AnimalOperation {
    public abstract void visit_monkey (Monkey monkey);
    public abstract void visit_lion (Lion lion);
    public abstract void visit_dolphin (Dolphin dolphin);
}

class Monkey : Animal {
    public void shout () {
        print ("Ooh oo aa aa!\n"); 
    }

    public void accept (AnimalOperation operation) {
        operation.visit_monkey (this);
    }
}

class Lion : Animal {
    public void roar () {
        print ("Roaaar !\n"); 
    }

    public void accept (AnimalOperation operation) {
        operation.visit_lion (this);
    }
}

class Dolphin : Animal {
    public void speak () {
        print ("Tuut tuttu tuutt!\n"); 
    }

    public void accept (AnimalOperation operation) {
        operation.visit_dolphin (this);
    }
}

class Speak : AnimalOperation {
    public void visit_monkey (Monkey monkey) {
        monkey.shout ();
    }

    public void visit_lion (Lion lion) {
        lion.roar ();
    }

    public void visit_dolphin (Dolphin dolphin) {
        dolphin.speak ();
    }
}

class Jump : AnimalOperation {
    public void visit_monkey (Monkey monkey) {
        print ("Jumped 20 feet high! on to the tree!\n");
    }

    public void visit_lion (Lion lion) {
        print ("Jumped 7 feet! Back on the ground!\n");
    }

    public void visit_dolphin (Dolphin dolphin) {
        print ("Walked on water a little and disappeared\n");
    }
}

public int main (string[] args) {
    var monkey = new Monkey ();
    var lion = new Lion ();
    var dolphin = new Dolphin ();

    var speak = new Speak ();
    var jump = new Jump ();

    monkey.accept (speak);
    monkey.accept (jump);

    lion.accept (speak);
    lion.accept (jump);

    dolphin.accept (speak);
    dolphin.accept (jump);

    return 0;
}
