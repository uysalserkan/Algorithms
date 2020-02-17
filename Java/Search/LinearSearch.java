package Search;

public class LinearSearch {
    public static int LinearSearch(int[] in, int Key) {
        for (int i = 0; i < in.length; i++) {
            if (Key == in[i])
                return i;
        }
        return -1;
    }

    public static void main(String[] args) {
        int[] theArray = { 1, 2, 34, 5, 25, 442, 1, 98, 225, 8 };
        System.out.println("The index number of 25 is " + LinearSearch(theArray, 25));
        System.out.println("The index number of 99 is " + LinearSearch(theArray, 99));
    }
}