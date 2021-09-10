library(evd)
library(actuar)
library(maxLik)
library(fExtremes)
library(dplyr)

calculate_Hill <- function(x,d){
  x_temp=x %>% sort(decreasing=TRUE) %>% .[1:(d+1)] %>% log
  return (mean(x_temp[1:d])-x_temp[d+1])
}

calculate_DH<- function(x,k,m,d){
  x_data=rep(NA,k)
  for ( i in 1:k){
    x_temp=x[((i-1)*m+1):(i*m)] %>% sort(decreasing=TRUE) %>% .[1:(d+1)] %>% log
    x_data[i]=mean(x_temp[1:d])-x_temp[d+1]
  }
  return (mean(x_data))
}

calculate_MLE<-function(x,k,m,constant_C){
  x_MLE=blockMaxima(x,m,doplot = F)[1:k]
  x_MLE=pmax(x_MLE,constant_C)
  loglik<-function(para){
    gamma=para[1]
    sigma=para[2]
    logL=-log(gamma*sigma)-(x_MLE/sigma)^(-1/gamma)-(1/gamma+1)*log(x_MLE/sigma)
    return (sum(logL))
  }
  gamma=runif(1,0.05,1)
  sigma=runif(1,1,2)
  return(maxLik(loglik,start=c(gamma=gamma,sigma=sigma)))
}


