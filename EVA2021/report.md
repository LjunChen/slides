This is a joint work with Deyuan Li and Chen Zhou. 





I'm most happy to give the talk today.



Is it working well? okay, perfect. This is a joint work with Prof. Deyuan Li  from Fudan University and Prof. Chen Zhou from Erasmus University Rotterdam.  Prof. Chen Zhou is also in the audience, so if I'm saying anything no sense, please jump in and correct me. This work is about what we call "Distributed inference for extreme value index."

There are at least two motivations for considering the distributed inference problems. The first is about the data privacy issue. Consider analyzing operational loss data from various banks. Given that operational loss are scarce, it is ideal to combine data from various institutions. However, due to confidentiality, banks may not share such data among each other. Another example is to analyze insurance claims from various insurance companies. Insurance firm cannot share even a single observations to externals.  Nevertheless, they may be willing to share some statistical result conducted based their own data.

Besides the data privacy issue, the distributed inference is useful for massive datasets.  Consider the case when the size of the data is beyond  a computer's memory. Such a dataset must be analyzed in batches, mimicking a multiple storage scenario.

Divide and Conquer algorithms are often invoked when data distributedly stored. It first estimates a desired quantity or parameter based on the data on each machine. And then transmits the results to the central machine. The cnetral machine combines all the results, often by a simple averaging to obtain a  computationally feasible estimator. Theoretically,  we particularly care  about whether the aggregated estimator achieves the same statistical efficiency as the Oracle estimator, which is the imaginary estimator using all observations. This is what we call oracle property.

In this talk, we discuss whether the divide and conquer algorithm can be applied to estimate the extreme value index.  We consider a distribution function F belongs to the maximum domain of attraction of the generalized extreme value distribution with shape parameter $\gamma>0.$ With these audiences, I think I don't need to explain this. Now, assume that the i.i.d. observations $X_1$ to $X_N$ are stored in $m$ machines with $n$ observations in each machine. And we assume that both the number of machines $m$ and the number of observations in each machine $n$ both diverge.  

---



If we can use the oracle sample, then a commonly used estimator for the extreme value index is the Hill estimator, which is defined as this.  Here, $l$ is an intermediate sequence and $M^{(1)}, M^{(N)}$ are the order statistics of the oracle sample. 



---

Now, since we cannot access to the oracle sample, we follow a divide and conquer algorithm to estimate the extreme value index. We apply the Hill estimator at each machine, we then get $m$ estimates since we have $m$ machines. On the central machine, we take the average of the Hill estimates from all machines to get the final estimator, we call it the distributed Hill estimator.

---

To obtain the asymptotics of the distributed Hill estimator, we need some conditions. Condition (A) requires that the number of observations in each machine $n$ is not too low. Notice that the distributed Hill estimator essentially involves $km$ exceedance ratios: with $k$ from each machine. If $n$ is too low, the distributed Hill estimator involves too any non-extreme observations from the oracle sample. So it may fail to be consistent. Indeed, condition (A) ensures the consistency of the distributed Hill estimator.

The condition B is the second order condition, which is a common assumption when you want to study the asymptotics  in  extreme value statistics. 

---



For the asymptotics, we consider two scenarios: the number of top exceedance ratios $k$ used in each machine can be regarded as either a fixed integer or an intermediate sequence depending on $N$. First, we consider the case when $k$ is a fixed integer. Here is the main theorem, as you can imagine, we have the asymptotic normality for the distributed Hill estimator.  

---

Now, we discuss the oracle property of the distributed Hill estimator in this case. Assume that $\sqrt{km} A(n/k)$ converges to a constant $\lambda$,  the oracle Hill estimator posses the asymptotic normality, as this one. 

Under the same condition, we have for the distributed Hill estimator, this one. we see that, the variance for both these two estimators are the same.  However, the biases are not equal. It can be shown when $\lambda =0$ or $\rho=0$, the two estimators have the same asymptotic bias, thus, the distributed Hill estimator achieves the oracle property. And we can show $\lambda =0$ or $\rho=0$ is not only sufficient, but also necessary for the oracle  property in this case.



---

When $k$ is an intermediate sequence,  we also have the asymptotic normality for the distributed Hill estimator.  We further investigate the oracle property of the distributed Hill estimator in this case.  Similarly, by assuming $\sqrt{km}A(n/k)$ converges to a constant $\lambda$, the oracle Hill estimator posses the asymptotic normality, with variance $\gamma^2$ and bias $\lambda/(1-\rho)$.

In this case, we can show that $g(k,n,\rho) \to 1$, thus the asymptotic distribution coincides with the oracle estimator. 

And we conclude that whether the distributed Hill estimator achieves the oracle property depends on the theoretical setup for $k$

---

Now, let's move to the simulation study. The focus of the simulation study is to verify the oracle property in finite sample size.  First, we keep $N=1000,m=20$ and $n=50$ unchanged. We plot the squared bias against different level of $k$ for the distributed Hill estimator and the oracle Hill estimator. 

This figure is for the unit Frechet distribution. When $k$ is low, the bias for both the estimators are close to zero. As $k$ increases, the biases for the two estimators become visible. Nevertheless, they are still comparable.  This figure is the variance against different level of $k$. We see that the two estimators have almost the same variance for all levels of $k$.  For the MSE, we observe a trade off between the bias and the variance for the both estimators. And their MSE are comparable.

---

Next, we keep $k$ fixed at two levels, $k=2$ and $k=8$. We plot the squared bias, variance and MSE against different level of the effective number of exceedance ratios used in each machine. Recall that the distributed Hill estimator essentially uses $km$ exceedance ratios. We see as $km$ increases, the distributed Hill estimator with $k=8$ is closer to the performance of the oracle Hill estimator compared to that with $k=2$. This is in line with the theoretical result since $k=2$ can be regarded as fixed while $k=8$ can be regarded as an intermediates sequence.

---

From the simulation study, we also see that the distributed Hill estimator is sensitive to the choice of $k$. Such problem also exists for the oracle Hill estimator, we need to choose $l$ . Such a problem is more pronounced in the context of distributed inference since when $k$ increases by 1, the effective number of exceedance ratios will increase by m. 

Recall that, in extreme value statistics literature, there are two types of solutions: the first aim at finding the optimal level that balances the asymptotic bias and variance.  The second is called bias correction. In real applications, if the sample size is large, the bias correction method is preferred. We consider a bias correction procedure for estimating the extreme value index.

---

Recall that, for the distributed Hill estimator, we have this asymptotic expansion, the bias here is an explicit function. We shall estimate the bias, subtract it from the original estimator,and create the asymptotically unbiased distributed estimator. 

To estimate the bias, we first need to estimate the second order parameter. We use a high intermediate sequence $k_{\rho}$ for estimating $k_{\rho}$. We require that $\sqrt{k_{\rho}m} A(n/k_{\rho}) \to\infty$.  We calculate the $R_{j,k}^{(\alpha)}$ statistics in each machine and send these value to the central machine. On the central machine, we take the average of these statistics to obtain this.  And then the estimation for $\rho$ follows from the method proposed in Alves et al. (2003). 

---

With the bias correction method, We can choose a high level of k in the eventual  estimator. We choose $k_n$ as this.  

---

Then, we can define the asymptotically unbiased distributed estimator for the extreme value index. Note that, this estimator adheres to a divide and conquer algorithm since each machine only needs to send these five values to the central machine. And then, under the third order condition and the above choice for $k_{\rho}$ and $k_n$, we can show the asymptotic normality of the $\tilde{\gamma}$.  And the limit distribution is the same as the bias corrected Hill estimator based on the oracle sample. In other words, this estimator always achieves the oracle property.

---

We use the simulation study to compare the bias for different level of $k$ and $m$.

This figure $m$ is fixed at $20$, at a low level.  The black line is the original distributed Hill estimator. The other three lines are both the bias corrected estimator, but with different hyper parameter $\tau$. We see that, this estimator has superior performance compared to the original distributed Hill estimator. We vary $m$ to $100$. the pattern is similar. And then, we change $m$ to 1, which means we can use the oracle sample.  We see that the performance across different levels of $m$ is comparable to the case $m=1$. 

----



And this is all for this talk. Thanks for listening. 

