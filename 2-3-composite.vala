interface Employee : Object {
    protected abstract string _name {protected get; protected set;}
    protected abstract float _salary {protected get; protected set;}

    // no overridable construct
    
    public string get_name () {
        return _name;
    }

    public void set_salary (float salary) {
        _salary = salary;
    }

    public float get_salary () {
        return _salary;
    } 
}


class Developer : Object, Employee {
    protected string _name {protected get; protected set;}
    protected float _salary {protected get; protected set;}

    public Developer (string name, float salary) {
        _name = name;
        _salary = salary;
    }
}

class Designer : Object, Employee {
    protected string _name {protected get; protected set;}
    protected float _salary {protected get; protected set;}

    public Designer (string name, float salary) {
        _name = name;
        _salary = salary;
    }
}

class Organization {
    protected List<Employee> employees;

    public void add_employee (Employee employee) {
        employees.append (employee);
    }

    public float get_net_salaries () {
        float net_salary = 0;

        employees.foreach ((employee) => {
            net_salary += employee.get_salary ();
        });

        return net_salary;
    }
}

public int main (string[] args) {
    var john = new Developer ("John Doe", 12000);
    var jane = new Developer ("Jane", 10000);

    var organization = new Organization ();
    organization.add_employee (john);
    organization.add_employee (jane);

    print ("Net salaries: " + organization.get_net_salaries ().to_string () + "\n");

    return 0;
}
