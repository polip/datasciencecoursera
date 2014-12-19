korelacija <- function (mapa, treshold=0) {
    file_list <- list.files(path=mapa,full.names = TRUE) 
    setwd("C:/Users/MojKomp/Documents/")
    correlations <- numeric(0)  
    data<-data.frame()
    completes<-data.frame()
    
    completes<-complete(mapa, 1:332)  
    completes<-completes[completes$nobs > treshold, ]
       
    
 for (i in completes$id) {    
      data <-read.csv(file_list[i])
      correlations <- c(correlations,cor(data$nitrate, data$sulfate,use = "pairwise.complete.obs" ))
 }
  return(correlations)
    }
  