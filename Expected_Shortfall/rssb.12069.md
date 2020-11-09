% Estimation of the marginal expected shortfall: the mean when a related variable is extreme





## Introduction

* Denote the loss of the equity return of a financial institution and that of the entire market as $X$ and $Y$ respectively.

* The MES is equal to $E(X|Y>t)$, where $t$ is a high threshold such  that $p=P(Y>t)$ is extremely small.

* The CTE in a univariate context is the same as that of the tail value at risk.

* In other words, the MES at probability level $p$ is defined as
  $$
  MES(p)=E(X|Y>Q_Y(1-p)),
  $$
  where $Q_Y$ is the quantile function of $Y$.



## Notation

* Let $(X,Y)$ be a random vector with a continuous distribution function $F$.

* Define 
  $$
  U_j=\left( \dfrac{1}{1-F_j}\right)^{\leftarrow}, j=1,2.
  $$

* Then the MES at a probability level $p$ can be written as
  $$
  \theta_p:=E\{X|Y>U_2(1/p)\}.
  $$

* $p=p(n)\to 0.$



## Tail Dependence

Suppose that, for all $(x,y)\in [0,\infty]^2 \backslash \{(\infty,\infty)\}$, the following limit exists:
$$
\lim _{t \rightarrow \infty} t P\left\{1-F_{1}(X) \leqslant x / t, 1-F_{2}(Y) \leqslant y / t\right\}=: R(x, y).
$$
The function R completely determines the so-called stable tail dependence function $l$ as, for all
$x, y\ge 0$,
$$
l(x,y)=x+y-R(x,y).
$$
We assume $X$ follows a distribution with a heavy right-hand tail: there exists $\gamma_1>0$ such that, for $x>0$,
$$
\lim_{t\to\infty}U_1(tx)/U_1(t)=x^{\gamma_1}.
$$

## Brief Review of multivariate extremes

Suppose $(X_1,Y_1), (X_2,Y_2),\dots$ are independent and identically distributed random variables with distribution function $F.$ Suppose that there exist sequences of constants $a_n, c_n>0,$ $b_n$ and $d_n$ real and a distribution function $G$ with nondegenerate marginals such that for all continuity points $(x,y)$ of $G$,
$$
\lim _{n \rightarrow \infty} P\left(\frac{\max \left(X_{1}, \ldots, X_{n}\right)-b_{n}}{a_{n}} \leq x, \frac{\max \left(Y_{1}, \ldots, Y_{n}\right)-d_{n}}{c_{n}} \leq y\right)=G(x,y).
$$
Any limit distribution function $G$ with nondegenerate marginals is called a multivariate extreme value function.

## Brief Review of multivariate Extremes

This implies convergence of the one-dimensional two marginal distributions, we have
$$
\lim _{n \rightarrow \infty} P\left(\frac{\max \left(X_{1}, X_{2}, \ldots, X_{n}\right)-b_{n}}{a_{n}} \leq x\right)=G(x, \infty),
$$
and
$$
\lim _{n \rightarrow \infty} P\left(\frac{\max \left(Y_{1}, Y_{2}, \ldots, Y_{n}\right)-d_{n}}{c_{n}} \leq y\right)=G(\infty, y).
$$
Now we choose the constants $a_n, c_n, b_n$ and $d_n$ such that for $\gamma_1,\gamma_2 \in\mathbb{R},$
$$
G(x, \infty)=\exp \left(-\left(1+\gamma_{1} x\right)^{-1 / \gamma_{1}}\right),
$$
and
$$
G(\infty, y)=\exp \left(-\left(1+\gamma_{2} y\right)^{-1 / \gamma_{2}}\right).
$$

## Brief Review of multivariate Extremes

$$
\lim _{n \rightarrow \infty} F^{n}\left(a_{n} x+b_{n}, c_{n} y+d_{n}\right)=G(x, y),
$$

Note that if $x_n \to u, y_n \to v,$ then by the continuity of G and the monotonicity of F
$$
\lim _{n \rightarrow \infty} F^{n}\left(a_{n} x_{n}+b_{n}, c_{n} y_{n}+d_{n}\right)=G(u, v).
$$
We apply this with
$$
x_{n}:=\frac{U_{1}(n x)-b_{n}}{a},y_{n}:=\frac{U_{2}(n y)-d_{n}}{c_{n}}.
$$
And we get
$$
\lim _{n \rightarrow \infty} F^{n}\left(U_{1}(n x), U_{2}(n y)\right)=G\left(\frac{x^{\gamma_{1}}-1}{\gamma_{1}}, \frac{y^{\gamma_{2}}-1}{\gamma_{2}}\right):=G_0(x,y).
$$

## Brief Review of multivariate Extremes

For any $(x,y)$ for which $0<G_0(x,y)<1$,
$$
\lim _{l \rightarrow \infty} n\left\{1-F\left(U_{1}(n x), U_{2}(n y)\right)\right\}=-\log G_{0}(x, y):=L(x,y).
$$

$$
\begin{aligned}
R(x,y) &=\lim _{t \rightarrow \infty} t P\left\{1-F_{1}(X) \leqslant x / t, 1-F_{2}(Y) \leqslant y / t\right\}\\
		&=\lim_{t\to \infty}tP\left\{ X\ge U_1(\dfrac{t}{x}),Y\ge U_2(\dfrac{t}{y})\right\}\\
		&=\lim_{t\to \infty}t \left(1-P\{X\le U_1(t/x)\}-P\{Y\le U_2(t/y)\}+P\{X\le U_1(t/x),Y\le U_2(t/y)\} \right)\\
		&=\lim_{t\to \infty} t\left(1-P\{X\le U_1(t/x)\}\right)+\lim_{t\to \infty}t\left(1-P\{X\le U_2(t/y)\}\right)\\
		&\quad \quad 
		-\lim_{t\to \infty}t\left(1-P\{X\le U_1(t/x),Y\le U_2(t/y)\}\right)\\
		&=x+y-L(x,y).
\end{aligned}
$$



## MES

$$
\theta_p=E(X|Y>U_2(1/p))
$$



* $X$ Positive



* $X$ real



## $X$ Positive

Assume that $X$ takes values in $(0,\infty).$

$\textbf{Proposition 1.}$ Suppose $\gamma_1\in (0,1).$ Then,
$$
\lim _{p \downarrow 0} \frac{\theta_{p}}{U_{1}(1 / p)}=\int_{0}^{\infty} R\left(x^{-1 / \gamma_{1}}, 1\right) \mathrm{d} x.
$$
we construct an estimator of $\theta_p$ by two-stage approach.

* Firstly, we consider the estimation $\theta_{k/n},  k/n\to 0.$

* Secondly, we use an extrapolation method
  $$
  \theta_{p} \sim \frac{U_{1}(1 / p)}{U_{1}(n / k)} \theta_{k / n} \sim\left(\frac{k}{n p}\right)^{\gamma_{1}} \theta_{k / n}.
  $$

## A Sketch of Proof of Proposition 1

Recall that, for a non-negative random variable $Z$
$$
E(Z)=\int_{0}^{\infty} P(Z>x) \mathrm{d} x
$$
Hence,
$$
\begin{aligned}
\frac{\theta_{p}}{U_{1}(1 / p)} &=\int_{0}^{\infty} \frac{1}{p} P\left\{X>x, Y>U_{2}(1 / p)\right\} \frac{\mathrm{d} x}{U_{1}(1 / p)} \\
&=\int_{0}^{\infty} \frac{1}{p} P\left\{X>U_{1}(1 / p) x, Y>U_{2}(1 / p)\right\} \mathrm{d} x
\end{aligned}
$$
The limit relationships (1) and (2) imply that
$$
\lim _{p \downarrow 0} \frac{1}{p} P\left\{X>U_{1}\left(\frac{1}{p}\right) x, Y>U_{2}\left(\frac{1}{p}\right)\right\}=R\left(x^{-1 / \gamma_{1}}, 1\right)
$$
Use DCT to prove the integral and limit can be interchanged.

## Non-parametric Estimator

* $$
  \hat{\theta}_{k / n}=\frac{1}{k} \sum_{i=1}^{n} X_{i} I\left(Y_{i}>Y_{n-k, n}\right)
  $$

* We estimate $\gamma_1$ with the Hill (1975) estimator
  $$
  \hat{\gamma}_{1}=\frac{1}{k_{1}} \sum_{i=1}^{k_{1}} \log \left(X_{n-i+1, n}\right)-\log \left(X_{n-k_{1}, n}\right).
  $$
  
* we estimate $θ_p$ by
  $$
  \hat{\theta}_{p}=\left(\frac{k}{n p}\right)^{\hat{\gamma}_{1}} \hat{\theta}_{k / n}.
  $$
  

## Some Conditions

(a) There exist $\beta>\gamma_1$ and $\tau<0$ such that, as $t\to \infty$,
$$
\sup _{0<x<\infty \atop 1 / 2 \leqslant y \leqslant 2} \frac{\left|t P\left\{1-F_{1}(X)<x / t, 1-F_{2}(Y)<y / t\right\}-R(x, y)\right|}{x^{\beta} \wedge 1}=O\left(t^{\tau}\right).
$$
(b) There exist $\rho_1<0$ and an eventually positive or negative function $A_1$ such that, as $t \to \infty$, $A_1(tx)/A_1(t)\to x^{\rho_1}$ for all $x>0$ and
$$
\sup _{x>1}\left|x^{-\gamma_{1}} \frac{U_{1}(t x)}{U_{1}(t)}-1\right|=O\left\{A_{1}(t)\right\}.
$$
(c) As $n \to \infty, \sqrt{k_1}A_1(n/k_1)\to 0$.

(d) As $n \to \infty, k=O(n^{\alpha})$, for some $\alpha<\min \left\{-2 \tau /(-2 \tau+1), 2 \gamma_{1} \rho_{1} /\left(2 \gamma_{1} \rho_{1}+\rho_{1}-1\right)\right\}$.



## Limit Distribution

We define a mean 0 Gaussian process $W_R$ on $(x,y)\in [0,\infty]^2 \backslash \{(\infty,\infty)\}$ with covariance structure
$$
E\left\{W_{R}\left(x_{1}, y_{1}\right) W_{R}\left(x_{2}, y_{2}\right)\right\}=R\left(x_{1} \wedge x_{2}, y_{1} \wedge y_{2}\right).
$$
Set
$$
\Theta=\left(\gamma_{1}-1\right) W_{R}(\infty, 1)+\left\{\int_{0}^{\infty} R(s, 1) \mathrm{d} s^{-\gamma_{1}}\right\}^{-1} \int_{0}^{\infty} W_{R}(s, 1) \mathrm{d} s^{-\gamma_{1}},
$$
and
$$
\Gamma=\gamma_{1}\left\{-W_{R}(1, \infty)+\int_{0}^{1} s^{-1} W_{R}(s, \infty) \mathrm{d} s\right\}.
$$

## Theorem 1

Suppose that conditions (a)–(d) hold and $\gamma\in (0,1/2).$ Assume that $d_n=k/(np)\ge 1$ and

$r:=\lim _{n \rightarrow \infty} \sqrt{k} \log \left(d_{n}\right) / \sqrt{k_{1}} \in[0, \infty]$. If $\lim _{n \rightarrow \infty} \log \left(d_{n}\right) / \sqrt{k}_{1}=0$,then, as $n \to \infty$,
$$
\min \left\{\sqrt{k}, \frac{\sqrt{k_{1}}}{\log \left(d_{n}\right)}\right\}\left(\frac{\hat{\theta}_{p}}{\theta_{p}}-1\right) \stackrel{\mathrm{d}}{\rightarrow}\left\{\begin{array}{ll}
\Theta+r \Gamma, & \text { if } r \leqslant 1 \\
(1 / r) \Theta+\Gamma, & \text { if } r>1
\end{array}\right.
$$

$$
\operatorname{var}(\Theta)=\gamma_{1}^{2}-1-b^{2} \int_{0}^{\infty} R(s, 1) \mathrm{d} s^{-2 \gamma_{1}}, \quad \operatorname{var}(\Gamma)=\gamma_{1}^{2}
$$

$$
\begin{aligned}
\operatorname{cov}(\Gamma, \Theta) & =\gamma_{1}\left(1-\gamma_{1}+b\right) R(1,1)\\ 
& -\gamma_{1} \int_{0}^{1}\left[\left(1-\gamma_{1}\right) 
 +b s^{-\gamma_{1}}\left\{1-\gamma_{1}-\gamma_{1} \ln (s)\right\}\right] R(s, 1) s^{-1} \mathrm{d} s
\end{aligned}
$$

with $b=\left\{\int_{0}^{\infty} R(s, 1) \mathrm{d} s^{-\gamma_{1}}\right\}^{-1}$

## A sketch of Proof of Theorem 1

$$
\frac{\hat{\theta}_{p}}{\theta_{p}}=\frac{d_{n}^{\hat{\gamma}_{1}}}{d_{n}^{\gamma_{1}}} \frac{\hat{\theta}_{k / n}}{\theta_{k / n}} \frac{d_{n}^{\gamma_{1}} \theta_{k / n}}{\theta_{p}}=: L_{1} L_{2} L_{3}
$$

* $L_1$ is easy to deal.
  $$
  \dfrac{\sqrt{k_1}}{\log d_n}(L_1-1) \stackrel{p}{\to}\Gamma
  $$
  

* $L_2$       
  $$
  \sqrt{k}\left(\frac{\hat{\theta}_{k / n}}{\theta_{k / n}}-1\right) \stackrel{\mathrm{d}}{\rightarrow} \Theta.
  $$

* $L_3=1+o(1/\sqrt{k}).$ 

  

  

## $X$ Real

In this section,$X$ takes values in $\mathbb{R}$. Define $X^{+}=\max(X,0)$ and $X^{-}=X-X^{+}$. We require two more conditions.

* (e) $E\left|X^{-}\right|^{1 / \gamma} <\infty.$
* (f) As $n \rightarrow \infty, k=o\left(p^{2 \tau\left(1-\gamma_{1}\right)}\right).$

We estimate $\theta_p$ with
$$
\hat{\theta}_{p}=\left(\frac{k}{n p}\right)^{\hat{\gamma}_{1}} \frac{1}{k} \sum_{i=1}^{n} X_{i} I\left(X_{i}>0, Y_{i}>Y_{n-k, n}\right).
$$
$\textbf{Theorem 2}$ Under the conditions of theorem 1 and conditions (e) and (f), as $n\to \infty$,
$$
\min \left\{\sqrt{k}, \frac{\sqrt{k_{1}}}{\log \left(d_{n}\right)}\right\}\left(\frac{\hat{\theta}_{p}}{\theta_{p}}-1\right) \stackrel{\mathrm{d}}{\rightarrow}\left\{\begin{array}{ll}
\Theta+r \Gamma, & \text { if } r \leqslant 1 \\
(1 / r) \Theta+\Gamma, & \text { if } r>1
\end{array}\right. 
$$

## A Sketch of Theorem 2

Write $\theta_p^{+}:=E\{X^{+}|Y>U_2(1/p)\}$. Then,
$$
\frac{\hat{\theta}_{p}}{\theta_{p}}=\frac{\hat{\theta}_{p}}{\theta_{p}^{+}} \frac{\theta_{p}^{+}}{\theta_{p}}
$$

* Prove that $\hat{\theta}_p/\theta_p^{+}$ follows the asymptotic normality stated in theorem 1. Verify the conditions.

* $\dfrac{\theta_{p}^{+}}{\theta_{p}}=1+o(1/\sqrt{k})$.

## Simulation study

* We first generate data from three bivariate distributions.

* Throughout this section, $(Z_1,Z_2)$  denotes a standard Cauchy distribution on $\mathbb{R}^2$ with density $1/(2\pi)(1+x^2+y^2)^{-3/2}.$

* We draw 500 samples from each distribution with sample sizes $n=500$ and $n=200$. 

* On the basis of each sample, we estimate $\theta_p$ for $p$ equal to $1/500,1/5000$ and $1/10000.$

  

## Simulation study

* The first distribution is a transformed Cauchy distribution on $(0,\infty)^2$ defined as
  $$
  (X,Y)=(|Z_1|^{2/5},|Z_2|).
  $$
  It follows that $\gamma_1=2/5$ and $R(x,y)=x+y-\sqrt{(x^2+y^2)}, x, y \ge 0.$

* The second distribution is a Student $t_3$ -distribution on $(0,\infty)^2$ with density
  $$
  f(x, y)=\frac{2}{\pi}\left(1+\frac{x^{2}+y^{2}}{3}\right)^{-5 / 2}, \quad x, y>0.
  $$
  We have $\gamma_1=1/3, R(x,y)=x+y-(x^{4/3}+1/2x^{2/3}y^{2/3}+y^{4/3})/\sqrt{(x^{2/3}+y^{2/3})}$.

* The third distribution is a transformed Cauchy distribution on the whole $\mathbb{R}^2$ defined as 
  $$
  (X, Y)=\left(Z_{1}^{2 / 5} I\left(Z_{1} \geqslant 0\right)+Z_{1}^{1 / 5} I\left(Z_{1}<0\right), Z_{2} I\left(Z_{1} \geqslant 0\right)+Z_{2}^{1 / 3} I\left(Z_{1}<0\right)\right).
  $$
  We have $\gamma_1=2/5, R(x,y)=x/2+y-\sqrt{(x^2/4+y)}$.



## Simulation Study

Besides the estimator we propose, we construct two other estimators.

* for $np\ge 1$,  an empirical counterpart of $\theta_p$, given by
  $$
  \hat{\theta}_{\mathrm{emp}}=\frac{1}{\lfloor n p\rfloor} \sum_{i=1}^{n} X_{i} I\left(Y_{i}>Y_{n-\lfloor n p\rfloor, n}\right).
  $$

* Secondly, exploiting the relationship in proposition 1 and using the empirical estimator of R given by
  $$
  \hat{R}(x, y)=\frac{1}{k} \sum_{i=1}^{n} I\left(X_{i}>X_{n-\lfloor k x\rfloor, n}, Y_{i}>Y_{n-\lfloor k y\rfloor, n}\right), \quad x, y \geqslant 0.
  $$
  and the Weissman (1978) estimator of $U_1(1/p)$ given by $\hat{U}_{1}(1 / p)=d_{n}^{\hat{\gamma}_{1}} X_{n-k, n}$,  we define an
  alternative EVT estimator as
  $$
  \begin{aligned}
  \bar{\theta}_{p} &=-\hat{U}_{1}\left(\frac{1}{p}\right) \int_{0}^{\infty} \hat{R}(x, 1) \mathrm{d} x^{-\hat{\gamma}_{1}} \\
  &=d_{n}^{\hat{\gamma}_{1}} X_{n-k, n} \frac{1}{k} \sum_{i=1}^{n} I\left(Y_{i}>Y_{n-k, n}\right)\left\{\frac{n-\operatorname{rank}\left(X_{i}\right)+1}{k}\right\}^{-\hat{\gamma}_{1}}
  \end{aligned}.
  $$
  

## Simulation Study

$p_1=500, p_2=5000, p_3=10000$

transformed Cauchy distribution 1, $n=500, k=75, k_1=75$

![image-20200411153120009](C:\Sven\Paper\Discuss_report\Expected_Shortfall\image-20200411153120009.png)



## Simulation Study

![](C:\Sven\Paper\Discuss_report\Expected_Shortfall\image-20200411153143533.png)

## Simulation Study

We write $\sigma_p^2=\frac{1}{k} \text{var}(\Theta+r\Gamma)$.
$$
r=\dfrac{\sqrt{k}\log\{k/(np) \}}{\sqrt{k_1}}.
$$
We compare the distribution of $(1/\sigma_p)\log(\hat{\theta}_p/\theta_p)$ with the limit distribution $N(0,1).$

We use QQ plots to detect this.

## Simulation Study

![](C:\Sven\Paper\Discuss_report\Expected_Shortfall\image-20200411153429959.png)

## Simulation Study

![](C:\Sven\Paper\Discuss_report\Expected_Shortfall\image-20200411153456915.png)

## Simulation Study

We also investigate the performance of our estimator when our assumptions are partially
violated.

* The transformed Cauchy distribution 3 is defined as
  $$
  (X, Y)=\left(\left|Z_{1}\right|^{0.7},\left|Z_{2}\right|\right).
  $$
  The dependence structure between $X$ and $Y$ is the same as that of the transformed Cauchy  distribution 1. $\gamma_1=0.7>1/2.$

* The second distribution is an asymptotically independent distribution defined as
  $$
  (X, Y)=\left(V_{1}+W_{1}, V_{2}+W_{2}\right),
  $$
  where $(V_1,V_2)$ follows the Student $t_3$-distribution with density (9) and $W_1$ and $W_2$ are
  Pareto distributed with density $(25/2)(1+5x)^{-7/2}, x>0.$ Moreover, $(V_1,V_2), W_1$ and $W_2$ are independent. This does not satisfy condition (a).



## Simulation Study

![](C:\Sven\Paper\Discuss_report\Expected_Shortfall\image-20200411155147361.png)

## Application

* We apply our estimation method to estimate the MES for financial institutions
* We consider three large investment banks in the USA, namely Goldman Sachs, Morgan Stanley and T. Rowe Price.
* $p=1/2513$ , which corresponds to a once-per-decade systemic event.



## Application

![](C:\Sven\Paper\Discuss_report\Expected_Shortfall\image-20200411160008043.png)

## Application

![](C:\Sven\Paper\Discuss_report\Expected_Shortfall\image-20200411160126403.png)

## Application

![](C:\Sven\Paper\Discuss_report\Expected_Shortfall\image-20200411160202407.png)