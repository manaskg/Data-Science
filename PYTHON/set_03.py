s = {1,5,6,8,5,3,4}

# s.add(0.1)
# s.remove(1)
# s.discard(10) 
# popped = s.pop()

# print(s, "\n", popped)

# s.clear()
# print(s)

s2 = {100,200,300,0,17,8,5,3}

union = s | s2
intersection = s & s2
difference = s - s2
symmetric_diff = s ^ s2


print(union)
print(intersection)
print(difference)
print(symmetric_diff)