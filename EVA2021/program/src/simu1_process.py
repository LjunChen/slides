import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import os
from DC_estimate import DC_estimate
from model_simu import model_generate

def main_process(distribution, N, n, m, k_n, k_rho, tau):
    rep_times  = 1000
    gamma, gamma_new = np.zeros(rep_times), np.zeros((rep_times,len(tau)))
    for b in range(rep_times):
        x = model_generate(distribution,N)
        gamma_temp,gamma_new_temp = DC_estimate(x, n, m, k_n,k_rho, tau)
        gamma[b]=gamma_temp
        gamma_new[b,:] = gamma_new_temp
        # print('\r {} % has been finished'.format(b / 10), end='')
    df1 = pd.DataFrame(gamma_new)
    df2 = pd.DataFrame({'gamma':gamma})
    df = pd.concat([df2,df1],axis=1)
    return df



if __name__ == "__main__":
    distribution,true_gamma, type='Frechet',1,'intermediate'
    N, n, m, k_n  = 100000, 10000,10, 2000
    tau = [0,0.5,1]
    k_rho = int(np.power(n,0.98))
    df = main_process(distribution,N, n, m, k_n, k_rho, tau)
    print('\r')
    print(df.head())