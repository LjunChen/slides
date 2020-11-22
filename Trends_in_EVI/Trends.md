The paper I am going to prensent is "Trends in Extreme Value Indices". This paper is published on Journal of the American Statistical Association in 2020. It is written by Laurens de Haan and Chen Zhou.


This is the outline of My presentation. First, I will give a introduction to this study. And then I will present the main methodology. And Finally, a simualtion study and a real data application will be presented.

Now, we turn to the first part.

Classic extreme value analysis assumes that the observations are independent and identically distributed. 
Recent studies aim at dealing with case when observations are drawn from different distribution. 
This paper considers a continously changing extreme value index and try to estimate the functional extreme value index accurately.


Mathematically, consider a set of distributions $F_s(x)$ for $s\in [0,1]$. Now  we have independent random variables $X_1$ to $X_n$ and the distribution function of $X_i$ is $F_{i/n}$.

Here, assume that the function $F_s(x)$ is continous with respect to $s$ and $x$. Also, assume that $F_s$ belongs to the maximum domain of attraction with extreme value index $\gamma(s)$.

This paper considers the case that the function $\gamma$ is positive. This means that for each $s$, the function $F_s$ is a Frechet distribution. Also,  the function $\gamma$ is assumed to be continous.

The goal of this paper is to estimate the function $\gamma$ and test the hypothesis that $\gamma=\gamma_0$ for some given function $\gamma_0$. In particular, it can be applied to test whether the extreme value index remains at a constant level across all observations.



We first dicuss how to estimate the function $\gamma$ locally. And then I will present how to obtain a global estimator and how to use this to do the hypothesis testsing that $\gamma=\gamma_0$ for some given function $\gamma_0$.


The idea for estimating $\gamma(s)$ locally is similar to the kernel density estimation. More speciefically, use only observations $X_i$ in the $h$-neighborhood of $s$. And the mathematical definition of the h-neighborhood is displayed as this, where $h$ is bandwidth and $h$ satisfies that as $n$ goes to infnity, $h$ will go to infinity and n times h will go to infinity.

Correspondling there will be [2nh] observations in the h-neighborhood for each $s\in [h,1-h]$. To apply any known estimators for extreme value index, such as the Hill estimator, we choose an intermediate sequence $k=k(n)$ such that as $n \to \infty, k \to \infty$ and $k/n\to 0$. This choice of $k$ is very standard in the extreme value analysis.

Then, we will use the top [2kh] order statistics among the [2nh] local observation in the h-neighborhood of $s$ to estimate $\gamma(s)$.  Rank the [2nh] observations in the h-neighborhood of $s$ as this. Then we can apply the Hill estimator to estimate $\gamma(s)$ locally. And the mathematical definition of the local Hill estimator is defined as this.

This is the main idea of how to estimate the function $\gamma$ locally.  To obtain the asymptotic properties of this estimator, we need some conditions.

The first condition is second order condition.  Suppose there exist a continous negative function $\rho(s)$ and a set of function $A_s(t)$, such that the equation (3) holds. Assume a second order condition is quite standard and sometimes necessary for the extreme value analysis. What is different here is that this is a functional form of the second order condtion.


 The approach can be regarded as a combination of kernel density estimation and extreme value statistics. To prove thelocal and global asymptotic normality, we need to combine two limiting procedures as the number of observations tending to infinity. First, the observations used are from a h-neighborhood that is shrinking. Second, within each h-neighborhood, we need to apply a threshold to all observations that is increasing toward infinity. If the h-neighborhood shrinks too fast, there will not be sufficient observations in each neighborhood for statistical inference. If it shrinks too slowly, we would have involved too many observations with vary different extreme value indices such that the estimation is distorted. Therefore, the two limiting procedures have to be balanced such that the resulting estimators possess proper asymptotic behavior.
Then, we also need some conditions for $k$ and $h$. They are displayed as condition 4-7. Condition (4) ensures that the number of high order statistics used in each local interval tends to infinity. Condition (5)is the one usually required for extreme value analysis to guarantee to have no asymptotic bias in the estimator. Condition (6) assumes that $k_n$ is compatible with the $h_n$-variation in the $\gamma$ function.Condition (7) states that($1-k_n$)-quantiles of distributions are sufficiently smooth in shorth-interval.


Under the above conditions, the estimation for $\gamma(s)$ possess the asymtotical normality. This results is displayed in Theorem 2.1. This result is comparable with the asymtotical normality of Hill estimator, but now the estimation is based on the observations with different extreme value indicies. The speed of convergence is $\sqrt{2kh}$ beacause only the top [2kh] order statistics are used in the estimation.


Now, consider testing the hypothesis that $\gamma(s)=\gamma_0(s)$ for all $s\in [0,1]$. Although we are able to estimate the function $\gamma$ locally, since the local estimators use only local observations, their asymtotic limits are obviously indepedent, That prevents us from constructing a hypothesis testing procedure.
In addition, the local estimators converges with a slow speed of convergence $1/\sqrt{2kh}$. To achieve the hypothesis testing goal, consider the estimation $\Gamma(s)$, which is the integrate of $\gamma$ function from 0 to s. $\Gamma=\Gamma_0$ is the  equivalent hypothesis.

The function $\Gamma$ is estimated by aggregating the local estimators of $\gamma(s)$ to a global estimator. Consider a discretized version of the local Hill estimator. And then define the estimator of estimator of $\Gamma(s)$ as the integral of the discretized version of local Hill estimator.
However, the local Hill estimator is only defined for $s$ less than $1-h$. So, we need to extend the range of local Hill estimator to accomodate the case when $s>1-h$. This is just some accomodations.

 Note that $\hat{\Gamma}(s)$ is a stochastic process defined on [0,1]. Then, assume the same conditions as in Theorem 2.1,
There exist a series of Brownian motions $W_n(s)$ such that $\hat{\Gamma}(s)$ can be approximated by this process.


Firstly, the convergence is uniformly for all $s\in [0,1]$. Secondly, the speed of convergence for the estimators $\hat{\Gamma}(s)$ is $1/\sqrt{k}$.



Now, the above Theorem, Theorem 2.2 provides
the possibility to test if the extreme value indicies follow a specific trend, that is $\gamma(s)=\gamma_0(s)$ for all $s\in [0,1]$. Clearly, one may construct a Kolomogrov-Smirnvo (KS) type test with the test statistic defined as this. Then, under the null hypothesis, this relation holds.


It is often of interest to test whether the extreme value index remains constant over time, without prior knowledge on the constant extreme value index, that is, $H_0: \gamma(s)=\gamma$ without specifying $\gamma$.In this case,one may use $\hat{\Gamma}(1)$ as an estimator of the constant extreme value index $\gamma$ and define the testing statistic as $\tilde{T}$. It is straightforward to show that under $H_0$,$\sqrt{k}\tilde{T}$ convergences in distribution to a supreme of a standard Brownain bridges defined on [0,1]. Note that the limit distribution is identical to that in the classic KS test.


Now, we turn to the simulation study part. This simulation study is used to demonstrate the finite sample performance of the testing procedure using $\tilde{T}$. 

This is the simulation setting. This paper generate $m=2000$ samples with $n=5000$ observations in each sample. For the two parameters $k$ and $h$, choose several combinations between $k=100,200$ and $h=0.025, 0.04$. For each sample, simulate the observations from this data generating process
$X_i=Z_i^{1/\gamma(i/n)}$, where $Z_i$ are iid observations from the standard Frechet distribution.


For the function $\gamma(s)$, we consider


