public errordomain OurError {
    PAY_ERROR 
}

abstract class Account : Object {
    protected Account? successor = null;
    protected float balance;

    public void set_next (Account account) {
        successor = account;
    }

    public void pay (float ammount_to_pay) throws OurError {
        if (can_pay (ammount_to_pay)) {
            print ("Paid %f using %s\n", ammount_to_pay, get_type ().name ()); 
        } else if (successor != null) {
            print ("Cannot pay using %s, Proceeding ..\n", get_type ().name ()); 
            successor.pay (ammount_to_pay);
        } else {
                throw new OurError.PAY_ERROR ("None of the accounts have enough balance");
        }
    }

    public bool can_pay (float ammount) {
        return balance >= ammount;
    }
}

class Bank : Account {
    public Bank (float balance) {
        this.balance = balance;
    }
}

class Paypal : Account {
    public Paypal (float balance) {
        this.balance = balance;
    }
}

class Bitcoin : Account {
    public Bitcoin (float balance) {
        this.balance = balance;
    }
}

public int main (string[] args) {
    var bank = new Bank (100);
    var paypal = new Paypal (200);
    var bitcoin = new Bitcoin (300);

    bank.set_next (paypal);
    paypal.set_next (bitcoin);

    try {
        bank.pay (259);
    } catch (OurError e) {
        stderr.printf ("%s\n", e.message);
    }

    return 0;
}

