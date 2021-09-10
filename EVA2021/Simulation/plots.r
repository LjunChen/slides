library(dplyr)
library(reshape2)
library(ggplot2)
library(ggpubr)
library(latex2exp)
plots_simu1<-function(dis,k,m)
{
  filename=paste0(dis,'_',k,'_',m,'_choice_d.csv')
  data =read.csv(filename)
  df =data %>% group_by(d) %>% summarise(DH_bias2=(mean(DH)-1)^2,
                                         DH_var=var(DH),
                                         DH_mse=DH_bias2+DH_var,
                                         oracle_bias2=(mean(oracle)-1)^2,
                                         oracle_var=var(oracle),
                                         oracle_mse=oracle_bias2+oracle_var)
  filename=paste0(dis,'_',k,'_',m,'_choice_d_bias.eps')
  mean_data=subset(df,select=c('d','DH_bias2','oracle_bias2'))
  names(mean_data)=c('d','Distributed Hill','Oracle Hill')
  mean_data=melt(mean_data,id.vars='d',variable.name="Method",value.name="Squared_bias")
  plt1<-ggplot(mean_data,aes(x=d,y=Squared_bias,colour=Method,linetype=Method))+
    geom_line(size=1.5)+theme(legend.position='none')+xlab('k')+theme(legend.position="right")+ylab("Squared Bias")
  if (dis == 'Pareto') plt1 =plt1 +ylim(0,0.01)
  ggsave(filename, width = 7, height = 5, units = "in")
  # dev.off()
  
  filename=paste0(dis,'_',k,'_',m,'_choice_d_variance.eps')
  var_data=subset(df,select=c('d','DH_var','oracle_var'))
  names(var_data)=c('d','Distributed Hill','Oracle Hill')
  var_data=melt(var_data,id.vars='d',variable.name="Method",value.name="Variance")
  plt2<-ggplot(var_data,aes(x=d,y=Variance,colour=Method,linetype=Method))+
    geom_line(size=1.5)+theme(legend.position='none')+xlab('k')+theme(legend.position="right")+ylab("Variance")
  ggsave(filename, width = 7, height = 5, units = "in")
  # dev.off()
  # 
  # 
  filename=paste0(dis,'_',k,'_',m,'_choice_d_mse.eps')
  mse_data=subset(df,select=c('d','DH_mse','oracle_mse'))
  names(mse_data)=c('d','Distributed Hill','Oracle Hill')
  mse_data=melt(mse_data,id.vars='d',variable.name="Method",value.name="MSE")
  plt3<-ggplot(mse_data,aes(x=d,y=MSE,colour=Method,linetype=Method))+
    geom_line(size=1.5)+theme(legend.position="right")+xlab('k')+theme(legend.position="right")+ylab("MSE")
  ggsave(filename, width = 7, height = 5, units = "in")
  # dev.off()
}

plots_simu2<-function(dis){
  filename = paste0(dis,'_Hill.csv')
  data=read.csv(filename)
  true_gamma=1
  
  df=data %>% group_by(k_H) %>% summarise(DH1_bias2=(mean(DH1)-true_gamma)^2,
                                            DH1_var=var(DH1),
                                            DH1_mse=DH1_bias2+DH1_var,
                                            DH2_bias2=(mean(DH2)-true_gamma)^2,
                                            DH2_var=var(DH2),
                                            DH2_mse=DH2_bias2+DH2_var,
                                            Hill_bias2=(mean(Hill)-true_gamma)^2,
                                            Hill_var=var(Hill,na.rm=T),
                                            Hill_mse=Hill_bias2+Hill_var)
  figname=paste0(dis,'_oracle_bias.eps')
  mean_data=subset(df,select=c('k_H','DH1_bias2','DH2_bias2','Hill_bias2'))
  names(mean_data)=c('k_H','Distributed Hill k=2','Distributed Hill k=8','Oracle Hill')
  mean_data=melt(mean_data,id.vars='k_H',variable.name="Method",value.name="Squared_bias")
  plt1<-ggplot(mean_data,aes(x=k_H,y=Squared_bias,colour=Method,linetype=Method))+
    geom_smooth(se=FALSE,size=1.5)+theme(legend.position='none')+theme(legend.position="right")+xlab(TeX("$km$"))
  if (dis == 'Pareto') plt1 =plt1 +ylim(0,0.01)
  ggsave(figname, width =7, height = 5, units = "in")
  
  
  figname=paste0(dis,'_oracle_variance.eps')
  var_data=subset(df,select=c('k_H','DH2_var','DH2_var','Hill_var'))
  names(var_data)=c('k_H','Distributed Hill k=2','Distributed Hill k=8','Oracle Hill')
  var_data=melt(var_data,id.vars='k_H',variable.name="Method",value.name="Variance")
  plt2<-ggplot(var_data,aes(x=k_H,y=Variance,colour=Method,linetype=Method))+
    geom_smooth(se=FALSE,size=1.5)+theme(legend.position='none')+theme(legend.position="right")+xlab(TeX("$km$"))
  ggsave(figname, width =7, height = 5, units = "in")
  
  figname=paste0(dis,'_oracle_mse.eps')
  mse_data=subset(df,select=c('k_H','DH1_mse','DH2_mse','Hill_mse'))
  names(mse_data)=c('k_H','Distributed Hill k=2','Distributed Hill k=8','Oracle Hill')
  mse_data=melt(mse_data,id.vars='k_H',variable.name="Method",value.name="MSE")
  plt3<-ggplot(mse_data,aes(x=k_H,y=MSE,colour=Method,linetype=Method))+
    geom_smooth(se=FALSE,size=1.5)+theme(legend.position="right")+xlab(TeX("$km$"))
  
  
  # ggarrange(plt1,plt2,plt3,ncol=3,nrow=1,widths=c(1,1,1.25))
  ggsave(figname, width =7, height = 5, units = "in")
  # dev.off()
}





plots_simu3<-function(dis){
  filename = paste0(dis,'_MLE.csv')
	data=read.csv(filename)
	true_gamma=1
	data[which(data$MLE>2*true_gamma),'MLE']=NA	
	df=data %>% group_by(k_seq) %>% summarise(DH_bias2=(mean(DH)-true_gamma)^2,
											DH_var=var(DH),
											DH_mse=DH_bias2+DH_var,
											MLE_bias2=(mean(MLE,na.rm=T)-true_gamma)^2,
											MLE_var=var(MLE,na.rm=T),
											MLE_mse=MLE_bias2+MLE_var,
											NA_count=sum(is.na(MLE)))
	print(df$NA_count)
	figname=paste0(dis,'_MLE.eps') 

	
	
	mean_data=subset(df,select=c('k_seq','DH_bias2','MLE_bias2'))
	names(mean_data)=c('k','Distributed Hill d=2','MLE')
	mean_data=melt(mean_data,id.vars='k',variable.name="Method",value.name="Squared_bias")
	plt1<-ggplot(mean_data,aes(x=k,y=Squared_bias,colour=Method,linetype=Method))+geom_smooth(se=FALSE,size=1.5)+theme(legend.position='none')+xlab('k')

	var_data=subset(df,select=c('k_seq','DH_var','MLE_var'))
	names(var_data)=c('k','Distributed Hill d=2','MLE')
	var_data=melt(var_data,id.vars='k',variable.name="Method",value.name="Variance")
	plt2<-ggplot(var_data,aes(x=k,y=Variance,colour=Method,linetype=Method))+geom_smooth(se=FALSE,size=1.5)+theme(legend.position='none')+xlab('k')

	mse_data=subset(df,select=c('k_seq','DH_mse','MLE_mse'))
	names(mse_data)=c('k','Distributed Hill d=2','MLE')
	mse_data=melt(mse_data,id.vars='k',variable.name="Method",value.name="MSE")
	plt3<-ggplot(mse_data,aes(x=k,y=MSE,colour=Method,linetype=Method))+geom_smooth(se=FALSE,size=1.5)+xlab('k')
	ggarrange(plt1,plt2,plt3,ncol=3,nrow=1,widths=c(1,1,1.25))
	ggsave(figname, width = 21, height = 7, units = "in")
	dev.off()
	
}

