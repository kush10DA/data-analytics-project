#!/usr/bin/env python
# coding: utf-8

# In[4]:


import numpy as np


# In[11]:


a=np.random.random((15))
print(a)
A=a.reshape(3,5)
print(A)
A=a.reshape(5,3)
print(A)


# In[38]:


array = [31,32,33,34,35,36,37,38,39,40]
print ("Input array : ", array)
array2 = np.log(array)
print ("Output array : ", array2)


# In[13]:


ba= np.zeros([3, 2], dtype = int) 
print("Matrix  : \n", a) 
print("\n")
b = np.ones([3, 2], dtype =int)
print("Matr : \n", b)


# In[44]:


arr = np.array([['apple', 'banana', 'cherry'],['mango','chikoo', 'strawberry']])
print(arr)
print(type(arr))


# In[45]:


X = [[1,3], [5,7], [9,11]]

Y = [0, 0, 0], [0, 0, 0]

for i in range (len (X)):
 
              for j in range (len (X[0])):

                             Y [j][i] = X [i][j]

for r in Y:

              print (r)
print(X)        
print(Y)
print('--------------------------------')
A = [[1,2,3],
    [4 ,5,6],
    [7 ,8,9]]
 
B = [[9,8,7],
    [6,5,4],
    [3,2,1]]
 
 
result = [[0,0,0],
        [0,0,0],
        [0,0,0]]

for i in range(len(A)): 
     for j in range(len(A[0])):
        result[i][j] = A[i][j] + B[i][j]
for R in result:
    print(R)


# In[47]:


# numpy.lower() function
print(np.char.lower(['krushang', 'patel']))
# numpy.split() function
print(np.char.split('krushang u patel'))
# numpy.join() function
print(np.char.join('-', 'krushang'))
# numpy.add() function
print(np.char.add(['hello'],[' xyz']) )
# numpy.multiply() function
print(np.char.multiply('Hello ',3))
# numpy.center() function
print(np.char.center('hello', 20,fillchar = '*'))
# numpy.capitalize() function
print(np.char.capitalize('hello world'))
# numpy.title() function
print(np.char.title('hello how are you?'))
# numpy.upper() function
print(np.char.upper(['hello','world']))
# numpy.splitlines() function
print(np.char.splitlines('hello\nhow are you?') )
# numpy.replace() function
print(np.char.replace('He is a bad boy', 'is', 'was'))
# numpy.decode() function
a = np.char.encode('hello', 'cp500') 
print(a) 
print(np.char.decode(a,'cp500'))
# numpy.encode() function
a = np.char.encode('hello', 'cp500') 
print(a)


# In[48]:


a = np.arange(9, dtype = np.float_).reshape(3,3) 

print( 'First array:' )
print( a) 
print ('\n')  

print ('Second array:' )
b = np.array([10,10,10]) 
print (b )
print ('\n')  

print ('Add the two arrays:' )
print (np.add(a,b) )
print ('\n')  

print ('Subtract the two arrays:' )
print (np.subtract(a,b) )
print ('\n'  )

print ('Multiply the two arrays:' )
print (np.multiply(a,b) )
print ('\n'  )

print ('Divide the two arrays:' )
print (np.divide(a,b))


# In[49]:


x = np.array([[1, 2], [3, 4]])
y = np.array([[5, 6], [7, 8]])
  
# using add() to add matrices
print ("The element wise addition of matrix is : ")
print (np.add(x,y))

# using subtract() to subtract matrices
print ("The element wise subtraction of matrix is : ")
print (np.subtract(x,y))
  
# using divide() to divide matrices
print ("The element wise division of matrix is : ")
print (np.divide(x,y))

# using multiply() to multiply matrices element wise
print ("The element wise multiplication of matrix is : ")
print (np.multiply(x,y))
  
# using dot() to multiply matrices
print ("The product of matrices is : ")
print (np.dot(x,y))

# using sqrt() to print the square root of matrix
print ("The element wise square root is : ")
print (np.sqrt(x))
  
# using sum() to print summation of all elements of matrix
print ("The summation of all matrix element is : ")
print (np.sum(y))
  
# using sum(axis=0) to print summation of all columns of matrix
print ("The column wise summation of all matrix  is : ")
print (np.sum(y,axis=0))
  
# using sum(axis=1) to print summation of all columns of matrix
print ("The row wise summation of all matrix  is : ")
print (np.sum(y,axis=1))
  
# using "T" to transpose the matrix
print ("The transpose of given matrix is : ")
print (x.T)


# In[50]:


arr =np.array([[5 , 10 , 15 ] ,[20,12,28]])
print(arr)
arr[arr>12]


# In[51]:


r = np.random.normal(size=5)
print(r)


# In[14]:


def largest(arr,n):
    return (max(arr))
arr = [25, 424, 545, 190, 980]
n = len(arr)
Ans = largest(arr,n)
print ("Largest in given array is",Ans)


# In[15]:


x = np.array([[ 10 , 20 ,30 ] , [ 11 ,22 ,33] , [111,222,333]])
print("Original array:")
print(x)
print("Mean of each column:")
print(x.mean(axis=0))
print("Mean of each row:")
print(x.mean(axis=1))


# In[16]:


array = np.array([ 8, 7, -5, 6, 0, 3, 2, 90 ,10 ])

array[array < 5] = 5
print(array)


# In[18]:


arr1 = [22,55,2,66,5,6]
arr2 = [2,5,6]
m = len(arr1) 
n = len(arr2) 
s = set()
for i in range(m) :
    s.add(arr1[i])
    
p = len(s)
for i in range(n) :
    s.add(arr2[i])
if (len(s) == p) :
    print("arr2[] is subset of arr1[] ")
else :
    print("arr2[] is not subset of arr1[] ")

