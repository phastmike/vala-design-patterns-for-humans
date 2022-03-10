interface Employee : Object {
    protected abstract string pname {protected get; protected set;}
    protected abstract float psalary {protected get; protected set;}

    // no overridable construct
    
    public string get_name () {
        return pname;
    }

    public void set_salary (float salary) {
        psalary = salary;
    }

    public float get_salary () {
        return psalary;
    } 
}


class Developer : Object, Employee {
    protected string pname {protected get; protected set;}
    protected float psalary {protected get; protected set;}

    public Developer (string name, float salary) {
        pname = name;
        psalary = salary;
    }
}

class Designer : Object, Employee {
    protected string pname {protected get; protected set;}
    protected float psalary {protected get; protected set;}

    public Designer (string name, float salary) {
        pname = name;
        psalary = salary;
    }
}

class Organization {
    protected List<Employee> employees;

    public void add_employee (Employee employee) {
        employees.append (employee);
    }

    public float get_net_salaries () {
        float net_salary = 0;

        foreach (var employee in employees) {
            net_salary += employee.get_salary ();
        }

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
