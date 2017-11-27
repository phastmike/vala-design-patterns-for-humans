using Gee; 

class RadioStation {
    protected float frequency;

    public RadioStation (float frequency) {
        this.frequency = frequency;
    }

    public float get_frequency () {
        return frequency;
    }
}

class StationList : Object, Traversable<RadioStation>, Iterable<RadioStation> {
    protected ArrayList<RadioStation> stations = new ArrayList<RadioStation> ();
    
    public void add_station (RadioStation station) {
        stations.add (station);
    }

    public bool remove_station (RadioStation to_remove) {
        foreach (RadioStation station in stations) {
            if (station.get_frequency () == to_remove.get_frequency ()) {
                stations.remove (station);
                return true;
            }
        }

        return false;
    }

    public int count () {
        return stations.size;
    }

    public Type element_type {
        get { return typeof (RadioStation); }
    }

    public bool @foreach (Gee.ForallFunc<RadioStation> f) {
        return iterator ().foreach (f);
    }

    public Iterator<RadioStation> iterator () {
        return stations.iterator ();
    }
}

public int main (string[] args) {
    var station_list = new StationList ();

    station_list.add_station (new RadioStation (89.0f));
    station_list.add_station (new RadioStation (101.0f));
    station_list.add_station (new RadioStation (102.0f));
    station_list.add_station (new RadioStation (103.2f));
    
    foreach (RadioStation r in station_list) {
        print ("%f\n", r.get_frequency ());
    }

    print ("We have %d stations\n", station_list.count ());

    station_list.remove_station (new RadioStation (89.0f));

    print ("We have %d stations\n", station_list.count ());
    
    return 0;
}    

