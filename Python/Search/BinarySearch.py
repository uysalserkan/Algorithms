import sys


def BinarySearch(theArray, key):
    left = 0
    right = len(theArray) - 1
    while left <= right:
        middle = left + (right - left) // 2
        value = theArray[middle]
        if(value == key):
            return middle
        elif key < value:
            right = middle - 1
        else:
            left = middle + 1
    return -1


def BubbleSort(arrayListETC):
    length = len(arrayListETC)
    for i in range(length - 1):
        swap = False
        for j in range(length - 1 - i):
            if(arrayListETC[j] > arrayListETC[j+1]):
                swap = True
                arrayListETC[j], arrayListETC[j +
                                              1] = arrayListETC[j+1], arrayListETC[j]
        if not swap:
            break
    return arrayListETC


def main():
    theArray = [2, 5, 25, 6, 8, 9, 1, 0, 6, 8, 4, 65, 66, 548, 889]
    try:
        BubbleSort(theArray)
    except ValueError:
        sys.exit("Sequence must be ascending sorted to apply binary search")
    print("The list is:", theArray)
    print("The index of the 25 is: ", BinarySearch(theArray, 25))
    print("The index of the 91 is: ", BinarySearch(theArray, 91))


if __name__ == "__main__":
    main()
