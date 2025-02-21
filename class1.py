
# #######Task1#####
# Analyze the data structures of the given values.


x = 8
y = 3.2
z = 8j + 18
a = "Hello World"
b = True
c = 23 < 22
l = [1, 2, 3, 4]
d = {"Name": "Jake",
     "Age": 27,
    "Adress": "Downtown"}

t = ( "Machine Learning", "Data Science" )
s = {"Python", "Machine Learning", "Data Science"}

data_types=[x,y,z,a,b,c,l,d,t,s]
print([type(i) for i in data_types])




###task2###
# Given a string, convert all letters to uppercase, replace commas and periods with spaces, and split it into words.

text = "The goal is to turn data into information, and information into insight."
text=text.upper().replace(","," ").replace("."," ").split()
print(text)

###task3###

# Apply the following steps to the given list.
# Step 1: Check the number of elements in the given list.
# Step 2: Retrieve the elements at index 0 and index 10.
# Step 3: Create a list ["D", "A", "T", "A"] from the given list.
# Step 4: Remove the element at index 8.
# Step 5: Add a new element.
# Step 6: Reinsert the element "N" at index 8.

lst = ["D", "A", "T" , "A", "S", "C" ,"I", "E", "N","C" ,"E"]
print(len(lst))
print(lst[0],lst[10])
lst2=lst[0:4]
lst.pop(8)
lst.append("F")
lst.insert(8,"N")


###task4###

# Apply the following steps to the given dictionary:
# Step 1: Access the key values.
# Step 2: Access the values.
# Step 3: Update the value of the "Daisy" key from 12 to 13.
# Step 4: Add a new key-value pair with the key "Ahmet" and the value "Turkey",24
# Step 5: Remove "Antonio" from the dictionary.

dict = {'Christian': ["America",18],
'Daisy': ["England",12],
'Antonio': ["Spain",22],
'Dante': ["Italy",25]}

print(dict.keys())
print(dict.values())
dict.update(Daisy=["England",13])
dict.update(Ahmet=["Turkey",24])
del dict["Antonio"]



###task5###
# Write a function that takes a list as an argument, separates the odd and even numbers into separate lists, and returns these lists.

def func(l):
    even=list(filter(lambda x:x%2==0,l))
    odd=list(filter(lambda x:x%2==1,l))
    return even,odd


l = [2,13,18,93,22]
even_ltst, odd_list=func(l)

print(even_ltst)
print(odd_list)



