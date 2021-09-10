#author=Liujun Chen
#create time 2020-11-30 13:54:48

import numpy as np
from Externals import calculate_T
from Externals import calculate_gamma_new
from single_estimate import single_worker

def DC_rho(x, n, m, k_n,k_rho, tau):
    rho = np.zeros(m)
    M1_1,M1_2=np.zeros(m),np.zeros(m)

    for i in range(int(m)):
        x_temp = x[(i*n):(i * n + n)].copy()  # cut the data into different machines
        # append the gamma in each machine
        M1_1[i],M1_2[i],M2_1,M2_2,M2_3 = single_worker(x_temp,k_n,k_rho)
        T= calculate_T(M2_1,M2_2,M2_3,tau[0])
        rho[i] = -3 * np.abs( (T-1) / (T-3) )
    M1_1, M1_2,rho = np.mean(M1_1), np.mean(M1_2),np.mean(rho)
    res_gamma=calculate_gamma_new(M1_1,M1_2,rho,k_n)
    return res_gamma


