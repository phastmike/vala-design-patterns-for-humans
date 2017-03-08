interface SortStrategy : Object {
    public abstract int[] sort (int[] dataset);
}

class BubbleSortStrategy : Object, SortStrategy {
    public int[] sort (int[] dataset) {
        print ("Sorting using bubble sort\n");
        
        //do sorting
        return dataset;
    }
}

class QuickSortStrategy : Object, SortStrategy {
    public int[] sort (int[] dataset) {
        print ("Sorting using quick sort\n");
        
        //do sorting
        return dataset;
    }
}

class Sorter {
    protected SortStrategy sorter;

    public Sorter (SortStrategy sorter) {
        this.sorter = sorter;
    }
    
    public int[] sort (int[] dataset) {
        return sorter.sort (dataset);
    }
}

public int main (string[] args) {
    int[] dataset = {1, 5, 4, 3 ,2, 8};
    
    var sorter = new Sorter (new BubbleSortStrategy ());
    sorter.sort (dataset);

    sorter = new Sorter (new QuickSortStrategy ());
    sorter.sort (dataset);

    return 0;
}
