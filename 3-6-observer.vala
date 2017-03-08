using Gee;

interface Observer : Object {
}

interface Observable {

}

class JobPost {
    protected string title;

    public JobPost (string title) {
        this.title = title;
    }

    public string get_title () {
        return title;
    }
}

class JobSeeker : Object, Observer {
    protected string name;

    public JobSeeker (string name) {
        this.name = name;
    }

    public void on_job_posted (JobPost job) {
        // Do something with the job posting
        print ("Hi %s! New job posted: %s\n", name, job.get_title ()); 
    }
}

class JobPostings : Observable {
    protected ArrayList<Observer> observers = new ArrayList<Observer> ();

    public void notify (JobPost job_posting) {
        foreach (Observer observer in observers) {
            ((JobSeeker) observer).on_job_posted (job_posting);
        }
    }

    public void attach (Observer observer) {
        observers.add (observer);
    }

    public void add_job (JobPost job_posting) {
        notify (job_posting);
    }
}

public int main (string[] args) {
    var john_doe = new JobSeeker ("John Doe");
    var jane_doe = new JobSeeker ("Jane Doe");

    var job_postings = new JobPostings ();
    
    job_postings.attach (john_doe);
    job_postings.attach (jane_doe);

    job_postings.add_job (new JobPost ("Software Engineer"));
    
    return 0;
}
