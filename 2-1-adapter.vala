interface Lion {
    public abstract void roar ();
}

class AfricanLion: Lion {
    public void roar () {
    }
}

class AsiaLion: Lion {
    public void roar () {
    }
}

class Hunter {
    public void hunt (Lion lion) {
    }
}

class WildDog {
    public void bark () {
    }
}

class WildDogAdapter: Lion {
    protected WildDog dog;

    public WildDogAdapter (WildDog dog) {
        this.dog = dog;
    }

    public void roar () {
        dog.bark ();
    }
}

public int main (string[] args) {
    var wild_dog = new WildDog ();
    var wild_dog_adapter = new WildDogAdapter (wild_dog);

    var hunter = new Hunter ();
    hunter.hunt (wild_dog_adapter);
    return 0;
}
