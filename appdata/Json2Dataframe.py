#!/usr/bin/env python
# coding: utf-8

# ![ss](https://user-images.githubusercontent.com/50515418/235053043-e5436dc0-29d1-4a32-9f5f-76eecaa2cb5f.png)

# In[19]:


from pprint import pprint as pp

input_folder = "minecraft/"
file = "usercache.json"

with open(input_folder + file) as f:
    str_df = f.read()

pp(str_df)


# In[24]:


import pandas as pd
import ast

output_folder = "Saved CSV/"
df = ast.literal_eval(str_df)

df = pd.DataFrame.from_dict(df)
df.to_csv(output_folder + file + '.csv')


# In[22]:


def Save_CSV(input_folder = "minecraft/", file = "usercache.json"):
    import pandas as pd
    import ast

    with open(input_folder + file) as f:
        str_df = f.read()

    output_folder = "Saved CSV/"
    df = ast.literal_eval(str_df)

    df = pd.DataFrame.from_dict(df)
    df.to_csv(output_folder + file + '.csv')
    return df


# In[23]:


Save_CSV()


# In[ ]:




