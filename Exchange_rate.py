#!/usr/bin/env python
# coding: utf-8

# In[36]:


# importing needed Libraries
import pandas as pd
import requests 



# In[54]:


# Requesting API for Data 
url = "https://api.frankfurter.dev/v1/latest?base=USD"
response=requests.get(url)
get=response.json()
df=pd.json_normalize(get)
print(get)



# In[55]:


# Too check data Type
print(type(get))


# In[81]:


# Creating Data Frame 
df=pd.DataFrame(
    get['rates'].items(),
    columns=['Currency_Code','Exchange_Rate'])
df['Exchange_Date']=get['date']
df['Base_Currency']=get['base']
df


# In[82]:


df.head(7)


# In[83]:


df.tail()


# In[84]:


df['Exchange_Rate'] = df['Exchange_Rate'].round(4)
df


# In[85]:


df.sort_values(by='Exchange_Rate',ascending=True)


# In[93]:


df


# In[80]:


import pymysql
from sqlalchemy import create_engine, URL
url_db=URL.create(
    drivername="mysql+pymysql",
    username= "root",
    host="127.0.0.1",
    database="currency_exchange_db",
    password="karthik@2",
    port=3306
)
connection=create_engine(url_db)
df.to_sql(
    name='rates',
    con=connection,
    if_exists="append",
    index=False)
print("Data Loaded Successfully🥳🎉")


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




