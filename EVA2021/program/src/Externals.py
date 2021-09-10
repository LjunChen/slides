#author=Liujun Chen
#create time 2020-11-30 11:11:11

import numpy as np
from scipy import special


def calculate_T(M2_1,M2_2,M2_3,tau):
    if tau>0:
        T = (np.power(M2_1,tau)-np.power(M2_2/2,tau/2))/(np.power(M2_2/2,tau/2)-np.power(M2_3/6,tau/3))
    elif tau==0:
        T = (np.log(M2_1) - np.log(M2_2 / 2)  / 2) / (np.log(M2_2 / 2)  / 2 - np.log(M2_3 / 6) / 3)
    else:
        raise ValueError('Your input for rho is wrong')
    return T


def calculate_gamma_new(M1_1,M1_2,rho,k_n):
    # if k_n >=10:
    #     h = 1
    # else:
    #     if k_n-rho>=10:
    #         eta = -rho-int(-rho)
    #         h = np.power(k_n,eta)*special.gamma(k_n+1+eta)/special.gamma(k_n+1)
    #         if rho>-1:
    #             pass
    #         else:
    #             for i in range(1,int(-rho)+1):
    #                 h= h * (1+(i+eta)/k_n)
    #     else:
    #         h=   np.power(k_n,rho) * special.gamma(k_n-rho+1) / special.gamma(k_n+1)
    gamma_new = M1_1 - (1-rho) * (M1_2-2*np.power(M1_1,2)) / (2*M1_1*rho)
    return gamma_new


