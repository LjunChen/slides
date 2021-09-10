from scipy.stats import invweibull
import matplotlib
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
sns.set()



distribution_set = ['Frechet','Burr1','Burr2','Burr3','Cauchy']
true_gamma_set = [1,1,1/2,1/4,1]
m_set = [1,10,20,100]
# m_set = [20]
for i,distribution in enumerate(distribution_set):
    true_gamma = true_gamma_set[i]
    for m in m_set:
        filename = 'datasets/'+distribution+'_m'+str(m)+'.csv'
        # plot the bias
        df=pd.read_csv(filename)
        df = df.groupby('k_n').aggregate({'gamma': 'mean', '0': 'mean','1':'mean','2':'mean'})
        df = np.abs(df-true_gamma)
        df=df.reset_index()
        fig, ax = plt.subplots()
        ax.plot(df.k_n,df.gamma, '-k', label=r'$\hat{\gamma}_{DH,k_n}$')
        ax.plot(df.k_n,df['0'], '--r', label=r'$\tilde{\gamma}_{k_n,k_{\rho},\tau}$ with $\tau = 0$')
        ax.plot(df.k_n,df['1'], '-.g', label=r'$\tilde{\gamma}_{k_n,k_{\rho},\tau}$ with $\tau =0.5$')
        ax.plot(df.k_n,df['2'], ':b', label=r'$\tilde{\gamma}_{k_n,k_{\rho},\tau}$ with $\tau = 1$')
        ax.legend()
        ax.set_xlim(0,6000/m)
        ax.set_xlabel(r"$k_n$")
        ax.set_ylabel(r"Absolute Bias")
        figname = 'figs/'+distribution+'_m'+str(m)+'_0.eps'
        plt.savefig(figname,bbox_inches='tight')
        # plot the MSE
        df=pd.read_csv(filename)
        for item in ['gamma','0','1','2']:
            df[item] = df[item].apply(lambda x: (x-true_gamma)**2)
        df = df.groupby('k_n').aggregate({'gamma': 'mean', '0': 'mean','1':'mean','2':'mean'})
        df=df.reset_index()
        fig, ax = plt.subplots()
        ax.plot(df.k_n,df.gamma, '-k', label=r'$\hat{\gamma}_{DH,k_n}$')
        ax.plot(df.k_n,df['0'], '--r', label=r'$\tilde{\gamma}_{k_n,k_{\rho},\tau}$ with $\tau = 0$')
        ax.plot(df.k_n,df['1'], '-.g', label=r'$\tilde{\gamma}_{k_n,k_{\rho},\tau}$ with $\tau =0.5$')
        ax.plot(df.k_n,df['2'], ':b', label=r'$\tilde{\gamma}_{k_n,k_{\rho},\tau}$ with $\tau = 1$')
        ax.legend()
        ax.set_xlim(0,6000/m)
        ax.set_xlabel(r"$k_n$")
        ax.set_ylabel(r"MSE")
        #ax.set_ylim([0,0.1])
        figname = 'figs/'+distribution+'_m'+str(m)+'_1.eps'
        plt.savefig(figname,bbox_inches='tight')
