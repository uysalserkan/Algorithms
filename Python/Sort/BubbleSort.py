def BubbleSort(theArray):
    length = len(theArray)
    for i in range(length - 1):
        swap = False
        for j in range(length - 1 - i):
            if(theArray[j] > theArray[j+1]):
                swap = True
                theArray[j], theArray[j + 1] = theArray[j+1], theArray[j]
        if not swap:
            break
    return theArray


def main():
    theList = [6, 5, 8, 88, 554, 54, 54, 2, 1, 6, 56, 5, 89,
               8, 656, 4, 5, 787, 33, 4, 5, 45, 45, 45, 1, 21, 2, 65]
    print("The unsorted list is: ", theList)
    theList = BubbleSort(theArray=theList)
    print("The sorted list is: ", theList)


if __name__ == "__main__":
    main()
