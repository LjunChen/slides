import numpy as np

def single_worker(x,k_n,k_rho):
    x.sort()
    x = x[::-1]
    M_base_1 = np.log(x[0:k_n]) - np.log(x[k_n])
    M_base_2 = np.log(x[0:k_rho]) - np.log(x[k_rho])
    return np.mean(M_base_1), np.mean(np.power(M_base_1,2)), np.mean(M_base_2), np.mean(np.power(M_base_2,2)), np.mean(np.power(M_base_2,3))

if __name__ == '__main__':
    from scipy.stats import invweibull
    n=1000
    x = invweibull.rvs(1, size=n)
    res = single_worker(x,100,int(np.power(n,0.98)))
    print(res)