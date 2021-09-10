import numpy as np
from Externals import calculate_gamma_new
from Externals import calculate_T
from single_estimate import single_worker

def DC_estimate(x, n, m, k_n, k_rho, tau):
    M1_1_array, M1_2_array, M2_1_array, M2_2_array, M2_3_array = calculate_M(x, m, n, k_n, k_rho)
    M1_1, M1_2, M2_1, M2_2, M2_3 = np.mean(M1_1_array), np.mean(
        M1_2_array), np.mean(M2_1_array), np.mean(M2_2_array), np.mean(M2_3_array)
    gamma_new = np.zeros(len(tau))
    for i in range(len(tau)):
        T = calculate_T(M2_1, M2_2, M2_3, tau[i])
        rho = -3 * np.abs((T-1) / (T-3))
        gamma_new[i] = calculate_gamma_new(M1_1, M1_2, rho, k_n)
    return M1_1, gamma_new


def calculate_M(x, m, n, k_n, k_rho):
    M1_1, M1_2, M2_1, M2_2, M2_3 = np.zeros(m), np.zeros(m), np.zeros(m), np.zeros(m), np.zeros(m)
    for i in range(m):
        # cut the data into different machines
        x_temp = x[(i*n):(i * n + n)].copy()
        # append the gamma in each machine
        M1_1[i], M1_2[i], M2_1[i], M2_2[i], M2_3[i] = single_worker(x_temp, k_n, k_rho)
    return M1_1, M1_2, M2_1, M2_2, M2_3



if __name__ == "__main__":
    from scipy.stats import invweibull
    N = 100000
    x = invweibull.rvs(1, size=N)
    n, m, k_n, tau, type = 10000, 10, 5000, [1], 'intermediate'
    k_rho = int(np.power(n, 0.91))
    res = DC_estimate(x, n, m, k_n, k_rho, tau)
    print(res)
