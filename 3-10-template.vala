abstract class Builder {

    // Template method
    public void build()
    {
        this.test();
        this.lint();
        this.assemble();
        this.deploy();
    }

    public abstract void test();
    public abstract void lint();
    public abstract void assemble();
    public abstract void deploy();
}

class AndroidBuilder : Builder {
    public override void test()
    {
        print ("Running android tests\n");
    }

    public override void lint()
    {
        print ("Linting the android code\n");
    }

    public override void assemble()
    {
        print ("Assembling the android build\n");
    }

    public override void deploy()
    {
        print ("Deploying android build to server\n");
    }
}

class IosBuilder : Builder {
    public override void test()
    {
        print ("Running ios tests\n");
    }

    public override void lint()
    {
        print ("Linting the ios code\n");
    }

    public override void assemble()
    {
        print ("Assembling the ios build\n");
    }

    public override void deploy()
    {
        print ("Deploying ios build to server\n");
    }
}

public int main (string[] args) {
    var android_builder = new AndroidBuilder();
    android_builder.build ();

    // Output:
    // Running android tests
    // Linting the android code
    // Assembling the android build
    // Deploying android build to server

    var ios_builder = new IosBuilder ();
    ios_builder.build ();

    // Output:
    // Running ios tests
    // Linting the ios code
    // Assembling the ios build
    // Deploying ios build to server

    return 0;
}
