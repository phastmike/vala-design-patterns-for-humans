interface WebPage {
    //abstract constructor doesn't exist, at least that i know of
    public abstract string get_content ();
}

class About : WebPage {
    protected Theme theme;

    public About (Theme theme) {
        this.theme = theme; 
    } 

    public string get_content () {
        return "About page in " + theme.get_color () + "\n";
    }
}

class Careers : WebPage {
    protected Theme theme;

    public Careers (Theme theme) {
        this.theme = theme; 
    } 

    public string get_content () {
        return "Careers page in " + theme.get_color () + "\n";
    }
}

interface Theme : Object {
    public abstract string get_color ();
}

class DarkTheme : Object, Theme {
    public string get_color () {
        return "Dark Black";
    }
}

class LightTheme : Object, Theme {
    public string get_color () {
        return "Off White";
    }
}

class AquaTheme : Object, Theme {
    public string get_color () {
        return "Light blue";
    }
}

public int main (string[] args) {
    var dark_theme = new DarkTheme ();
    var about = new About (dark_theme); 
    var careers = new Careers (dark_theme); 

    print ("%s", about.get_content ());
    print ("%s", careers.get_content ());

    return 0;
}
