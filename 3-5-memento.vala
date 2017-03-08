class EditorMemento {
    protected string content;

    public EditorMemento (string content) {
        this.content = content;
    }

    public string get_content () {
        return content;
    }
}

class Editor {
    protected string content = "";

    public void type (string words) {
        content = content + " " + words;
    }

    public string get_content () {
        return content;
    }

    public EditorMemento save () {
        return new EditorMemento (content);
    }

    public void restore (EditorMemento memento) {
        content = memento.get_content ();
    }
}

public int main (string[] args) {
    var editor = new Editor ();

    editor.type ("This is the first sentence.");
    editor.type ("This is second."); 

    var saved = editor.save ();

    editor.type ("And this is third.");

    print ("%s\n", editor.get_content ());

    editor.restore (saved);

    print ("%s\n", editor.get_content ());

    return 0;
}
