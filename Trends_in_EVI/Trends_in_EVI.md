% Trends in Extreme Value Index

## Introduction

* Classical extreme value analysis assumes that the observations are independent and identically distributed (iid).
* Recent studies aim at dealing with the case when observations are drawn from different distributions.
* In this article, we aim at dealing with non-iid observations: we consider a continuously changing extreme value index and try to estimate the functional extreme value index accurately.

## Introduction

* Consider a set of distribution functions $F_s(x)$ for $s\in(0,1]$ and independent random variables $X_i\sim F_{\frac{i}{n}}(x)$ for $i=1,\dots,n.$
* Here $F_s(x)$ is assumed to be continuous with respect to $s$ and $x$.
* To perform extreme value analysis, assume that $F_s\in D_{\gamma(s)}$, where $D$ denotes the max-domain of attraction with corresponding extreme value index.
* In this article, we consider the case that the function $\gamma$ is positive and continuous on $[0,1].$
* The goal is to estimate the function $\gamma$ and test the hypothesis that $\gamma=\gamma_0$ for some given function $\gamma_0$, based on the observations $X_1,\dots,X_n.$



## Introduction

* The idea for estimating $\gamma(s)$ locally is similar to the kernel density estimation.

* More specifically, we will use only observations $X_i$ in the $h$-neighborhood of $s$, that is 
  $$
  i\in I_n(s)=\{|\frac{i}{n}-s|\le h\},
  $$
  where $h:=h(n)$ is the bandwidth such that as $n\to \infty, h\to \infty$ and $nh\to \infty.$

* Correspondingly there will be $[2hn]$ observations for $s\in [h,1-h]$.

* To apply any known estimators for extreme value index, such as Hill estimator, we choose an  intermediate sequence $k:=k(n)$ such that $n\to \infty, k\to \infty$ and $k/n \to 0$.



## Introduction

* Then we use the top $[2kh]$ order statistics among the $[2nh]$ local observations in the
  h-neighborhood of s to estimate $\gamma(s)$.
  
* The local Hill estimator for $\gamma(s)$ is defined as follows. Rank the $[2nh]$ observations $X_i$ with $i \in I_n(s)$ as $X_{1,[2nh]}^{(s)}\le \cdots \le X_{[2nh],[2nh]}^{(s)}$. Then
  $$
  \hat{\gamma}_{H}(s):=\frac{1}{[2 k h]} \sum_{i \in I_{n}(s)}\left(\log X_{i}-\log X_{[2 n h]-[2 k h],[2 n h]}\right)^{+}.
  $$

* We start with considering the local asymptotic normality.

## Conditions

* The second order condition: suppose there exists a continuous negative function $\rho(s)$ on $[0,1]$ and a set of auxiliary function $A_s(t)$ that are continuous with respect to $s$, such that
  $$
  \lim _{t \rightarrow \infty} \frac{\frac{U_{s}(t x)}{U_{s}(t)}-x^{\gamma(s)}}{A_{s}(t)}=x^{\gamma(s)} \frac{x^{\rho(s)}-1}{\rho(s)},\qquad (3)
  $$
  holds for $x>1/2$ and uniformly for all $s\in [0,1]$. 

  

## Conditions

* $$
  h=h_n\to 0, k=k_n \to \infty, k_n/n \to 0, \dfrac{k_nh_n}{|\log h_n|}\to \infty, \qquad (4)
  $$

* $$
  \Delta_{1,n}:=\sqrt{k_n}\sup_{0\le s\le 1}|A_s(\dfrac{n}{k_n})|\to 0,\qquad (5)
  $$

* $$
  \Delta_{2, n}:=\sqrt{k_{n}} \log k_{n} \sup _{\left|s_{1}-s_{2}\right| \leq 2 h_{n}}\left|\gamma\left(s_{1}\right)-\gamma\left(s_{2}\right)\right| \rightarrow 0. \qquad (6)
  $$

* $$
  \Delta_{3, n}:=\sup _{\left|s_{1}-s_{2}\right| \leq h_{n}}\left|\frac{\frac{U_{s_{1}}\left(\frac{n}{k_{n}}\right)}{U_{s_{2}}\left(\frac{n}{k_{n}}\right)}-1}{A_{s_{2}}\left(\frac{n}{k_{n}}\right)}\right| \rightarrow 0 \qquad (7)
  $$

  

## Theorem 2.1

Let $X_1,X_2,\dots, X_n$ be independent random variables with distributions $X_i \sim F_{\frac{i}{n}}(x)$, where $F_s(x)$ is a set of distribution functions depends on $s\in [0,1]$. Assume that $F_s(x)$ is continuous with respect to $x$ and $F_s \in D_{\gamma(s)}$ where $\gamma(s)$ is a positive continuous function on [0,1]. Assume conditions (3)-(7). Then as $n \to \infty$, we have that for all $s\in (0,1)$, 
$$
\sqrt{2kh}(\hat{\gamma}_H(s)-\gamma(s))\stackrel{d}{\to}N(0,\gamma^2(s)).
$$



##  A Global Estimator

* Next, we consider testing the hypothesis that $\gamma(s)=\gamma_0(s)$ for all $s\in[0,1]$. 
* Although we are able to estimate the function $\gamma$ locally, since the local estimators use only local observations, their asymptotic limits are obviously independent.
* That prevents us from constructing a testing procedure.
* To achieve the stated goal, we consider the estimation $\Gamma(s)=\int_{0}^{s}\gamma(u)du$ and test the equivalent hypothesis that $\Gamma=\Gamma_0$.

## A Global Estimator

* Consider a discretized version of $\hat{\gamma}_H(s): \hat{\gamma}_H((2[\frac{s}{2h}]+1)h)$.

* Define the estimator of $\Gamma(s)$ as the integral of the discretized version as follows: for all $0\le s\le 1$,
  $$
  \hat{\Gamma}_{H}(s)=\int_{0}^{s} \hat{\gamma}_{H}\left(\left(2\left[\frac{u}{2 h}\right]+1\right) h\right) d u.
  $$




## Theorem 2.2

Assume the same conditions in Theorem 2.1. Then under a Skorokhod  construction, there exists a series of Brownian motions $W_n(s)$ such that as $n \to \infty$,
$$
\sup _{s \in[0,1]}\left|\sqrt{k}\left(\hat{\Gamma}_{H}(s)-\Gamma(s)\right)-\int_{0}^{s} \gamma(u) d W_{n}(u)\right| \stackrel{P}{\rightarrow} 0.
$$


## Testing Trends in Extreme Value Indices

Similar to testing the specific trend in the “skedasis” function in Einmahl, de Haan, and Zhou (2016), we apply an equivalent test to test $H_0: \Gamma(s)=\Gamma_0(s)$ for all $s$.

Clearly, one may construct a KS type test with testing statistic defined as 
$$
T:=\sup_{s\in[0,1]}|\hat{\Gamma}_H(s)-\Gamma_0(s)|
$$
Then, Theorem 2.2 implies that under the hypothesis $H_0$, as $n \to \infty$,
$$
\sqrt{k} T \stackrel{d}{\rightarrow} \sup _{s \in[0,1]}\left|\int_{0}^{s} \gamma(u) d W(u)\right|.
$$


## Testing Trends in Extreme Value Indices

It is often of interest to test whether the extreme value index remains constant over time, that is, $H_0 :\gamma(s)=\gamma$ for all $s \in [0,1]$ without specifying $\gamma$. In this case, one may use $\hat{\Gamma}_H(1)$  as an estimator of the constant extreme value index $\gamma$ and define the testing statistic as
$$
\tilde{T}:=\sup _{s \in[0,1]}\left|\frac{\hat{\Gamma}_{H}(s)}{\hat{\Gamma}_{H}(1)}-s\right|.
$$
It is straightforward to show under $H_0$, as $n \to \infty$
$$
\sqrt{k} \tilde{T} \stackrel{d}{\rightarrow} \sup _{s \in[0,1]}|B(s)|,
$$
where $B(s)$ is a standard Brownian bridge defined on.



## Simulation Study

* $m=2000$ samples
* $n=2000$ observations in each sample
* $k=100,200$
* $h=0.025,0.04$

For each sample, we simulate the observations from the following data generating process
$$
X_i=Z_i^{1/\gamma(i/n)}, i=1,2,\dots,n,
$$
where $\{Z_i\}_{i=1}^n$ are iid observations from the standard Frechet distribution.

## Simulation Study

For the function $\gamma(s)$ we consider either a linear trend as $\gamma(s)=1+bs$ or a trend following the sin function as $\gamma(s)=1+c\sin(2\pi s)$.

If $b=0$ or $c=0$, the two model resemble the iid case.

We consider four alternative cases $b=1, b=2, c=1/4$ and $c=1/2$.



## Simulation Study

![](C:\Sven\Paper\Discuss_report\Trends_in_EVI\image-20200429225701649.png)

## Simulation

![](C:\Sven\Paper\Discuss_report\Trends_in_EVI\image-20200429225741056.png)



## Simulation 

![](C:\Sven\Paper\Discuss_report\Trends_in_EVI\image-20200429225848297.png)

## Simulation

We also compare the results for $n=2000$.

![](C:\Sven\Paper\Discuss_report\Trends_in_EVI\image-20200429230056303.png)

## Simulation

![](C:\Sven\Paper\Discuss_report\Trends_in_EVI\image-20200429230129768.png)

## Application 1: Precipitation

* We employ a dataset consisting of the precipitation at Saint-Martin-de-Londres from 1976 to 2015, with 14,610 daily observations.
* We test the constancy of the extreme value indices over the entire period.
* We do not reject the null hypothesis under the 5% significance level (the dash line).
* We then estimate the constant extreme value index by applying the Hill estimator to all observations, that is, estimating $\Gamma(1)$.



## Application 1: Precipitation

![](C:\Sven\Paper\Discuss_report\Trends_in_EVI\image-20200429230720801.png)

## Application 2: Loss Returns of S&P500

![](C:\Sven\Paper\Discuss_report\Trends_in_EVI\image-20200429230846070.png)