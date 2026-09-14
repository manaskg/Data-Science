d = {
    1:17,
    # "m": "manas",
    0.1456:3.01556455,

}


# for i in d:
#     print(i, ":", d[i])
    
# help(dict)

d2 = {
    2:17,
    "m2": "manab",
    0.1456:3.01556455,

}

# merge two dictionaries

merged_dict = {**d, **d2}
print(merged_dict)

# sum all the values in a dictionary

# total = sum(d.values())
# print(total)

# print(d[1])
# print(d.get(2,"does not exist"))

d["m2"] = "manab"

print(d)









