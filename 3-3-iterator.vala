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

class StationList {
    protected ArrayList<RadioStation> stations = new ArrayList<RadioStation> ();
    protected int counter;

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

    // The example implements a already defined PHP iterator... not the best example...
    // we are also using the LibGee ArrayList which implements a Iterator...Whatever...
    // Real example would be to implement a Iterator from scratch...
}

public int main (string[] args) {
    var station_list = new StationList ();

    station_list.add_station (new RadioStation (89.0f));
    station_list.add_station (new RadioStation (101.0f));
    station_list.add_station (new RadioStation (102.0f));
    station_list.add_station (new RadioStation (103.2f));
    
    // well we need the iterator

    print ("We have %d stations\n", station_list.count ());

    station_list.remove_station (new RadioStation (89.0f));

    print ("We have %d stations\n", station_list.count ());

    return 0;
}    

