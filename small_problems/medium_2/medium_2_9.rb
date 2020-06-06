=begin
Write a method that takes an Array as an argument, and sorts that Array using
the bubble sort algorithm as just described. Note that your sort will be
"in-place"; that is, you will mutate the Array passed as an argument. You may
assume that the Array contains at least 2 elements.

Input(s):
- Array

Output(s):
- Array

Data Structure(s):
- Array

Example(s) / Test Case(s):
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

Clarifications:
- Will all elements in argument Array be of the same object type?
- How should the method handle invalid inputs?

Rules:
  Explicit:
  - Sorting should occur "in-place," so original argument Array will be mutated.
  - All arguments will have at least two elements.

  Implicit:
  - 

Algorithm:
From Wikipedia page (https://en.wikipedia.org/wiki/Bubble_sort):
procedure bubbleSort(A : list of sortable items)
    n := length(A)
    repeat
        swapped := false
        for i := 1 to n-1 inclusive do
            /* if this pair is out of order */
            if A[i-1] > A[i] then
                /* swap them and remember something changed */
                swap(A[i-1], A[i])
                swapped := true
            end if
        end for
    until not swapped
end procedure
=end

def bubble_sort!(arr)
  length = arr.size

  loop do
    swapped = false
    1.upto(length - 1) do |n|
      if arr[n - 1] > arr[n]
        arr[n - 1], arr[n] = arr[n], arr[n - 1]
        swapped = true
      end
    end
    break if !swapped
  end

  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
