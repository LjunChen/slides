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

Then, we also need some conditions for $k$ and $h$.  Condition (4) ensures that the number of high order statistics used in each local interval tends to infinity.

 Condition (5)istheone usually required for extreme value analysis to guarantee to have no asymptotic bias in the estimator. Condition (6) assumes that $k_n$ is compatible with the $h_n$-variation in the $\gamma$ function.Condition (7)states that($1−k_n$)-quantiles of distributions are sufficiently smooth in shorth-interval.



