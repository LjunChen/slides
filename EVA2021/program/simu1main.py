import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from src.simu1_process import main_process
from src.model_simu import get_k_n_range
import os
from multiprocessing import Pool


def main(distribution,m):
    N = 10000
    tau = [0, 0.5,1]
    result = pd.DataFrame()
    n = int(N/m)
    k_rho = int(np.power(n,0.98))
    k_n_range=get_k_n_range(m)
    for k_n in  k_n_range:
        result_temp = main_process(distribution, N, n, m, k_n, k_rho, tau)
        result_temp['k_n'] = k_n
        result = pd.concat([result, result_temp])
    filename = 'simu1/datasets/'+distribution+'_m'+str(m)+'.csv'
    pd.DataFrame(result).to_csv(filename, index=False)
if __name__ == '__main__':
    distribution_set = ['Frechet','Burr1','Burr2','Burr3','Cauchy']
    m_set = [1,10,20,100]
    p=Pool(4)
    for distribution in distribution_set:
        for m in m_set:
            p.apply_async(main,args=(distribution,m,))
    p.close()
    p.join()
    print('all the process have been finished')


