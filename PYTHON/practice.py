print("mkg")
name = "manas"
c = ord('😂')
print(chr(c))

# String Slicing
a = "manaskumar"
print(a[1:6:3])

print(f"hello , {a}!")

d = range(1,6,1)
print(type(d))


# for i in "manab":
#     i in range(1,4)
#     print(i)


# for i in range(0,4):
#     print("manab"[i])


# name = "manab"
# # print(name[2])

# for i in range(-5,0,1):
#     print(name[i])



year = int(input("Enter a year: "))

if(year%4 == 0):
    print(f"{year} is a leap year")
else:
    print(f"{year} is not a leap year")