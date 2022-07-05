""""
03-07-2022
10:04 Am
DSA Series
Ananda Upadhaya
"""
# ARRAYS
#1. Reverse the array

arr = [2,3,4,1,5,6]
def reverse_arr(arr):
    new_arr = arr[::-1]
    return new_arr

def main():
    res = reverse_arr(arr)
    print(res)