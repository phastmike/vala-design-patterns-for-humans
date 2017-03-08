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
    return 0;
}
