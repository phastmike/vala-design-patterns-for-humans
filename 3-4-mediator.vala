interface ChatRoomMediator : Object {
    public abstract void show_message (User user, string message);
}

class ChatRoom : Object, ChatRoomMediator {
    public void show_message (User user, string message) {
        var time = new DateTime.now_local ();
        var sender = user.get_name ();
        print ("%s [%s]:%s\n", time.to_string (), sender, message);
    }
}

class User {
    protected string name;
    protected ChatRoomMediator chat_mediator;

    public User (string name, ChatRoomMediator chat_mediator) {
        this.name = name;
        this.chat_mediator = chat_mediator;
    }

    public string get_name () {
        return name;
    }

    public void send (string message) {
        chat_mediator.show_message (this, message);
    }
}

public int main (string[] args) {
    var mediator = new ChatRoom ();
    
    var john = new User ("John Doe", mediator);
    var jane = new User ("Jane Dow", mediator);

    john.send ("Hi there!");
    jane.send ("Hey!");

    return 0;
}
