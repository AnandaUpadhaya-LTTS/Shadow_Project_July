"""""
03-07-2022
10:04 Am
DSA Series
Ananda Upadhaya

# ARRAYS
#1. Reverse the array

arr = [2,3,4,1,5,6]
def reverse_arr(arr):
    new_arr = arr[::-1]
    return new_arr

def main():
    res = reverse_arr(arr)
    print(res)


arr = [2,3,4,1,5,6]
def reverse_arr(arr):
    n = len(arr)
    new_arr = []
    for x in range(n-1, 0):
        new_arr.append(arr[x])
    return new_arr

def main():
    res = reverse_arr(arr)
    print(res)

"""""
s="abbacd"
arr = list(s)
print(arr)
new_str = []
new_str.append(arr[0])
for x in arr:
    if x in new_str:
        pass
    else:
        new_str.append(x)
print(len(new_str))

