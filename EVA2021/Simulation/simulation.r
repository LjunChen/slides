library(evd)
library(actuar)
library(maxLik)
library(fExtremes)
library(dplyr)
source("base_func.R")


Comparison_d_base<-function(distribution,k,m){
  n=1000
  if (distribution=="Frechet") x=rfrechet(n,shape=1)
  if (distribution=="Pareto") x=rpareto(n,shape=1,scale=1)+1
  if (distribution=="Cauchy") x=abs(rcauchy(n))
  d_seq = seq(1,30,1)
  tmp_oracle =rep(NA,length(d_seq)) 
  tmp_DH = rep(NA,length(d_seq)) 
  
  for ( i in 1:length(d_seq)){
      tmp_DH[i]  = calculate_DH(x,k,m,d_seq[i])
      tmp_oracle[i] = calculate_Hill(x,k*d_seq[i])
  }
    df_temp = data.frame(d=d_seq,DH=tmp_DH,oracle=tmp_oracle)
    return (df_temp)
  }

Comparison_d<-function(distribution,k,m){
  rep_times = 1000
  df = data.frame()
    for ( i in 1:rep_times){
    tmp_df = Comparison_d_base(distribution, k, m)
    df = rbind(df,tmp_df)
  }
  out_name=paste0(distribution,'_',k,'_',m,'_','choice_d','.csv')
  write.csv(df,out_name,row.names = F)
}

Comparison_Hill_base <-function(distribution){
  n=1000
  d_set = c(2,8)
  if (distribution=="Frechet") x=rfrechet(n,shape=1)
  if (distribution=="Pareto") x=rpareto(n,shape=1,scale=1)+1
  if (distribution=="Cauchy") x=abs(rcauchy(n))
  k_H=seq(40,400,8)
  DH1=rep(NA,length(k_H))
  DH2=rep(NA,length(k_H))
  Hill=rep(NA,length(k_H))
  for( j in 1:length(k_H)){
    DH1[j] = calculate_DH(x,k_H[j]/d_set[1],n*d_set[1]/k_H[j],d_set[1])
    DH2[j] = calculate_DH(x,k_H[j]/d_set[2],n*d_set[2]/k_H[j],d_set[2])
    Hill[j] = calculate_Hill(x,k_H[j])
  }
  temp_result=data.frame(k_H,DH1,DH2,Hill)
  return (temp_result)
}

Comparison_Hill <- function(distribution){
  rep_times = 1000
  df = data.frame()
  for (i in 1:rep_times)
  {
    df_temp = Comparison_Hill_base(distribution)
    df = rbind(df, df_temp)
  }
  write.csv(df,paste0(distribution,'_Hill.csv'),row.names = F)
}



Comparison_MLE_base <-function(distribution){
	n=1000
	constant_C = 0.1
	if (distribution=="Frechet") x=rfrechet(n,shape=1)
	if (distribution=="Pareto") x=rpareto(n,shape=1,scale=1)+1
	if (distribution=="Cauchy") x=abs(rcauchy(n))
	k_seq=seq(10,200,2)
	DH=rep(NA,length(k_seq))
	MLE=rep(NA,length(k_seq))
	for( j in 1:length(k_seq)){
		k=k_seq[j]
		DH[j]=calculate_DH(x,k,floor(n/k),2)
		model=try(calculate_MLE(x,k,floor(n/k),constant_C),silent=TRUE)
		if ('try-error' %in% class(model)  ){
		MLE[j]=NA
		}else if (model$code %in% c('1','2','8')){
		MLE[j]=model$estimate[1]
		}else{
		MLE[j]=NA
		print('Not Convergence')
		}
	}
		temp_result=data.frame(k_seq,DH,MLE)
		return (temp_result)
}
Comparison_MLE <- function(distribution){
  rep_times = 1000
  df = data.frame()
  for (i in 1:rep_times)
  {
    df_temp = Comparison_MLE_base(distribution)
    df = rbind(df, df_temp)
  }
  write.csv(df,paste0(distribution,'_MLE.csv'),row.names = F)
}




