from scipy.stats import invweibull,genpareto,cauchy,burr12
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from DC_estimate import DC_estimate
from DC_gamma import DC_gamma
from DC_rho import DC_rho
from model_simu import model_generate

def main_process(distribution, N, n, m, k_n, k_rho, tau):
    rep_times  = 1000
    gamma, gamma_pro,gamma_direct_DC,gamma_rho = np.zeros(rep_times), np.zeros(rep_times), np.zeros(rep_times),np.zeros(rep_times)
    for b in range(rep_times):
        x = model_generate(distribution,N)
        gamma_temp,gamma_pro_temp = DC_estimate(x, n, m, k_n,k_rho, tau)
        gamma_direct_temp=DC_gamma(x, n, m, k_n,k_rho, tau)
        gamma_rho_temp = DC_rho(x, n, m, k_n,k_rho, tau)
        gamma[b]=gamma_temp
        gamma_pro[b] = gamma_pro_temp
        gamma_direct_DC[b]=gamma_direct_temp
        gamma_rho[b]=gamma_rho_temp
        # print('\r {} % has been finished'.format(b / 10), end='')
    df=pd.DataFrame({'original_gamma':gamma,'proposed_gamma':gamma_pro,'gamma_direct':gamma_direct_DC,'gamma_rho':gamma_rho})
    return df



if __name__ == "__main__":
    distribution,true_gamma, type='Frechet',1,'intermediate'
    N, n, m, k_n  = 10000, 100,100, 80
    tau = [0.5]
    k_rho = int(np.power(n,0.98))
    df = main_process(distribution, N, n, m, k_n, k_rho, tau)
    print('\r')
    print(df.head())
    print(df.proposed_gamma.mean())
    print(df.gamma_direct.mean())