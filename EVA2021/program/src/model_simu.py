#author=Liujun Chen
#create time 2020-12-01 09:14:12

from scipy.stats import invweibull,genpareto,cauchy,burr12
import numpy as np


def model_generate(distribution,N):
    if distribution=='Frechet':
        x = invweibull.rvs(1, size=N)
    elif distribution=='Burr1':
        x = burr12.rvs(1/2,2, size=N)
    elif distribution=='Burr2':
        x = burr12.rvs(1,2,size=N)
    elif distribution=='Burr3':
        x = burr12.rvs(2,2,size=N)
    elif distribution=='Cauchy':
        x = cauchy.rvs(size=N)
        x = np.abs(x)
    else:
        raise ValueError('Input for distribution is wrong')
    return x


def get_k_n_range(m):
    if m==1: 
        k_n_range = range(100, 8001, 100)
    elif m==10:
        k_n_range = range(10, 801, 10)
    elif m==20:
        k_n_range = range(10,401,10)
    elif m==100:
        k_n_range = range(5, 81, 5)
    else:
        raise ValueError('Your input for m is wrong')
    return k_n_range