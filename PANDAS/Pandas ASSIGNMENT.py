#!/usr/bin/env python
# coding: utf-8

# In[ ]:





# In[15]:


#2. Write a program to concat two DataFrames. 
import pandas as pd

df1={'col1':[1,2,3,4],'col2':[5,6,7,8]}
df2={'col1':[11,12,13],'col2':[14,15,16]}
df_1 = pd.DataFrame(df1)
df_2 = pd.DataFrame(df2)
df_1,df_2

df3 = pd.concat([df_1,df_2],axis=0)
df4 = pd.concat([df_2,df_1],axis=1)
print(df3,'\n \n',df4)


# In[31]:


#3. Write a program to perform custom addition function on a DataFrame. 

import pandas as pd
df_3 = pd.DataFrame(df1)
df_4 = df_3 + 3
df_3.add(5,axis=0)


# In[46]:


#4. Write a program to merge two DataFrames. 
import pandas as pd

student_tb1 = pd.DataFrame({'Std_id':['s1','s2','s3','s4'],
              'Name':['vivek','Rachit','Pooja','Dharmi',],
              'Marks':[19,18,17,17]})

student_tb2 = pd.DataFrame({'Std_id':['s5','s6','s7','s8'],
              'Name':['Jay','Jimmy','Kiran','Urvi'],
              'Marks':[16,17,18,19]})

exam_td = pd.DataFrame({'Std_id':['s1','s2','s3','s4','s5','s6','s7','s8'],
          'exam_id':[1,2,3,4,5,6,7,8]})

print(student_tb1)
print('\n',student_tb2)
print('\n',exam_td)
result_td = pd.concat([student_tb1,student_tb2])
print('Mergeing Tables: \n',pd.merge(result_td,exam_td,on='Std_id'))


# In[56]:


#5. Write a program to handle missing data from DataFrame. 

print(df4)
df5 = df4.fillna(1)
print('\n NaN places are filled by 1: \n \n ',df5)


# In[70]:


#6. Write program to create bar chart, box chart, area plot, scatter plot and pie chart from a DataFrame.

import pandas as pd
import matplotlib.pyplot as plt

data = {'City':['Surat','Rajkot','Delhi','pune'],
       'Visits':[20.42,17.95,9.7,18],
       'People':[13,14,15,16]}
df = pd.DataFrame(data)
print(df)
#Histogram
ax = df.Visits.plot.hist()
print(ax)


# In[71]:


#bar plot
ac = df.Visits.plot.bar()
print(ac)


# In[72]:


#Boxplot
av = df.Visits.plot.box()
print(av)


# In[73]:


# Pie chat
ab = df.People.plot.pie()
print(ab)


# In[78]:


#Scatter plot
an = df.plot.scatter(x='Visits',y='People')
print(an)


# In[83]:


#8. W.A.P two program Which can represent the difference between rand( and randn().

import numpy as np

arr = np.random.randn(5,2)
print('It will create Matrix btw number -1 to 1 : \n',arr)


# In[85]:


# numpy.random.rand() method

import numpy as np

# 1D Array
array = np.random.rand(5)
print("1D Array filled with random values : \n", array);


# In[93]:


#9. Assume that in data frame we are having the ‘Elbert’ on some position, how you are going to 
# convert that Name To ‘Albert’, Write a Program For that.

import pandas as pd
data = {'Names':['Elbert','Rajkot','Delhi','pune'],
       'Visits':[20.42,17.95,9.7,18],
       'People':[13,14,15,16]}

df = pd.DataFrame(data)
df['Names'] = df['Names'].replace(('Elbert'),'Albert')
df


# In[134]:


# 10. You are having Some dataFrame of IPL ,
#Column 1 = Team Name 
#Column 2 = Team Captain name
#Column 3 = Total Run by The Team 
#Column 4 = Year

import pandas as pd

data = {'Team_Name':['RCB','CSK','MI','SRH'],
                   'Captain':['Virat','Dhoni','Rohit','Kane'],
                   'Runs':[900,500,400,300],
                   'Year':[2016,2017,2018,2019]}
IPL = pd.DataFrame(data)
IPL


# In[135]:


#10.1 Write A Pandas Function which can Give the output as Year Vise Run 
IPL = IPL[['Runs','Year']]
IPL


# In[ ]:





# In[ ]:




