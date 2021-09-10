source('simulation.r')
source('plots.r')
library(parallel)
set.seed(1)
no_cores <- 3
distribution_set = c('Frechet','Pareto','Cauchy')
for (control in c(1,2,3))
{
  print(paste0('Now, run simu ', control))
  if (control == 1)
  {
    simu1 <- function(dis){Comparison_d(dis,20,50)}
    cl <- makeCluster(no_cores, type="FORK")
    parLapply(cl,distribution_set,simu1)
    stopCluster(cl)
    for (dis in distribution_set){plots_simu1(dis,20,50)}
  }else if(control==2){
    cl <- makeCluster(no_cores, type="FORK")
    parLapply(cl,distribution_set,Comparison_Hill)
    stopCluster(cl)
    for (dis in distribution_set){plots_simu2(dis)}
  }else{
    cl <- makeCluster(no_cores, type="FORK")
    parLapply(cl,distribution_set,Comparison_MLE)
    stopCluster(cl)
    for (dis in distribution_set){plots_simu3(dis)}
  }
}
system("xinfo finished")

