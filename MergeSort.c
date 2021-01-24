/**
 * @AUTHOR: Serkan UYSAL
 * @MAIL: uysalserkan08@gmail.com
 * @DATE: 24.01.2021
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void swap();
void merge();
void merge_sort();

int main()
{
    int *num_arr, size;
    scanf("%d", &size);

    num_arr = (int *)malloc(size * sizeof(int));

    for (int i = 0; i < size; i++)
        scanf("%d", &num_arr[i]);

    merge_sort(num_arr, size, 0, size - 1);

    for (int i = 0; i < size; i++)
        printf("%d\t", num_arr[i]);

    printf("\n");

    free(num_arr);
}

void merge_sort(int *arr, int size, int l, int r)
{
    if ((r - l) == 1)
    {
        if (arr[l] > arr[r])
        {
            swap(&arr[l], &arr[r]);
        }
    }

    else if (l != r)
    {
        merge_sort(arr, size, l, (l + r) / 2);
        merge_sort(arr, size, ((l + r) / 2) + 1, r);
        merge(arr, l, r, size);
    }
}

void swap(int *arr_num1, int *arr_num2)
{
    int temp;
    temp = *arr_num1;
    *arr_num1 = *arr_num2;
    *arr_num2 = temp;
}

void merge(int *arr, int l, int r, int size)
{
    int *temp = (int *)malloc(size * sizeof(int));
    int curr = l;
    int part1, part2;
    part1 = l;
    part2 = ((l + r) / 2) + 1;

    while ((part1 < ((l + r) / 2) + 1) && (part2 < r + 1))
    {
        if (arr[part1] <= arr[part2])
        {
            temp[curr++] = arr[part1++];
        }
        else
        {
            temp[curr++] = arr[part2++];
        }
    }

    if (part2 == (r + 1))
    {
        while ((part1 < ((l + r) / 2) + 1))
        {
            temp[curr++] = arr[part1++];
        }
    }
    else
    {
        while (part2 < (r + 1))
        {
            temp[curr++] = arr[part2++];
        }
    }

    for (curr = l; curr < r - l + 1; curr++)
    {
        arr[curr] = temp[curr];
    }

    free(temp);
}
