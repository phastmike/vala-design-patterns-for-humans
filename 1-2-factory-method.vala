interface Interviewer : Object {
    public abstract void ask_questions ();
}

class Developer : Object, Interviewer {
    public void ask_questions () {
        print ("Asking questions about patterns!\n");
    }
}

class CommunityExecutive : Object, Interviewer {
    public void ask_questions () {
        print ("Asking questions about community building.\n");
    }
}

abstract class HiringManager {
    // Factory Method
    public abstract Interviewer make_interviewer ();

    public void take_interview () {
        var interviewer = this.make_interviewer ();
        interviewer.ask_questions ();
    }
}

class DevelopmentManager : HiringManager {
    public override Interviewer make_interviewer () {
        return new Developer ();
    }
}

class MarktingManager : HiringManager {
    public override Interviewer make_interviewer () {
        return new CommunityExecutive ();
    }
}

public int main (string[] args) {
    var dev_manager = new DevelopmentManager ();
    dev_manager.take_interview ();

    var marketing_manager = new MarktingManager ();
    marketing_manager.take_interview ();

    return 0;
}
