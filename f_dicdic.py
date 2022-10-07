# -*- coding: utf-8 -*-
"""
Created on Mon Oct 28 19:46:25 2019

@author: u811717
"""
import pandas as pd

def dicdic(dic):
    return pd.DataFrame([{k:v for element in value for k,v in element.items()}for value in dic.values()])


def diclis(d):
    return pd.DataFrame.from_dict(d,orient='index').transpose()