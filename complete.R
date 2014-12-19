
complete <- function(mapa, ID = 1:332) {
  
  setwd("C:/Users/MojKomp/Documents/")
  file_list <- list.files(mapa, full.names = TRUE)
  data<-data.frame()
  ids<-vector()
  counts<-vector()
  IDnobs<-data.frame()
  
  for (i in ID){
    data <-read.csv(file_list[i])
    ids<-c(ids,i)
    completecases<-data[complete.cases(data),]
    counts<-c(counts, nrow(completecases))
      }
  data.frame(id=ids, nobs=counts)
 
}