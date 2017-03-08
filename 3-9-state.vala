interface WritingState : Object {
    public abstract void write (string words);
}

class UpperCase : Object, WritingState {
    public void write (string words) {
        print ("%s\n", words.up ());
    }
}

class LowerCase : Object, WritingState {
    public void write (string words) {
        print ("%s\n", words.down ());
    }
}


class Default : Object, WritingState {
    public void write (string words) {
        print ("%s\n", words);
    }
}

class TextEditor {
    protected WritingState state;

    public TextEditor (WritingState state) {
        this.state = state;
    }

    public void set_state (WritingState state) {
        this.state = state;
    }

    public void type (string words) {
        state.write (words);
    }
}

public int main (string[] args) {
    var editor = new TextEditor (new Default ());
    
    editor.type ("First line");

    editor.set_state (new UpperCase ());
    
    editor.type ("Second line");
    editor.type ("Third line");

    editor.set_state (new LowerCase ());
    editor.type ("Fourth line");
    editor.type ("Fifth line");

    return 0;
}
