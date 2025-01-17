corr <- function(directory, threshold = 0) {
  
  files_full <- list.files(directory, full.names = TRUE)
  
  vec <- vector()
  
  for (i in 1:332){
    
    A <- read.csv(files_full[i])
    B <- complete.cases(A)
    C <- sum(as.numeric(B))
    
    if(C > threshold){
      D <- read.csv(files_full[i])
      data_complete <- D[complete.cases(D), ]
      
      sul <- as.numeric(unlist(c(data_complete[2])))
      nit <- as.numeric(unlist(c(data_complete[3])))
      
      E <- (cor(sul, nit))
      vec <- rbind(vec, E)
      
    }
  }
  done <- (c(vec))
  return(done)
  
}