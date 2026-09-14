numbers = [7,5,2,7,4,1,9,6,3]

# numbers.append(10)
# numbers.insert(2,15)
# numbers.extend([20,25,30])
# numbers.remove(7)
# popped_item = numbers.pop(0)
# index = numbers.index(5)
# count_7 = numbers.count(7)
# numbers.sort()
# numbers.reverse()
# new_nums = numbers.copy()
# numbers.clear()

# Print positive and negative elements of an List

# numbers = [-7,-3,1,2,3]
# positive =[]
# negative = []
# for i in numbers:
#     if(i>=0):
#         positive.append(i)
#     else:
#         negative.append(i)

# Mean of List elements

# sum = 0;
# for i in numbers:
#     sum +=i;
# print(sum/len(numbers))    

# Find the greatest element and print its index too

# maximum = 0

# for i in numbers:
#     if(i>maximum):
#         maximum = i

# print(maximum)
# print(numbers.index(maximum))

# Find the second greatest element

maximum = second = 0

for i in numbers:
    
    if(i>maximum):
        second = maximum
        maximum = i
        
    elif (maximum>i>second):
        second = i
        
print(second)

# Check if List is sorted or not.
            
# def isSorted(nums):
#     for i in range (len(nums)-1):
#         if(nums[i]>nums[i+1]):
#             return False

#     return True

# print(isSorted(numbers))

def isSorted(nums):
    return all(nums[i]<=nums[i+1] for i in range(len(nums)-1))

print(isSorted(numbers))




#print(len(numbers))
# print(positive,"\n","="*10,"\n", negative)