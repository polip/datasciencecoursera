
pollutantmean <- function (dir,pollutant, ID = 1:332) {  
  
  setwd("C:/Users/MojKomp/Documents/")
  file_list <- list.files(dir,full.names = TRUE)
  data<-data.frame()
  
  for (i in ID){
    data <-rbind(data,read.csv(file_list[i]))
  }
        if (pollutant=="nitrate") {
      mean<- mean( data[,3], na.rm=TRUE)
    } else if (pollutant=="sulfate") {
      mean<- mean( data[,2], na.rm=TRUE)
    }
    mean   
         } 



  
