def LinearSearch(array, key):
    for index, theValue in enumerate(array):
        if(array[index] == key):
            return index
    return -1


def main():
    theArray = [2, 5, 25, 6, 8, 9, 1, 0, 6, 8, 4, 5, 66, 548, 889]
    print("The index of the 25 is: ", LinearSearch(theArray, 25))
    print("The index of the 91 is: ", LinearSearch(theArray, 91))


if __name__ == "__main__":
    main()
