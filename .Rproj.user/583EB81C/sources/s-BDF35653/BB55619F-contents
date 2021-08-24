corr <- function(directory, threshold = 0) {
  
  files_full <- list.files(directory, full.names = TRUE)
  
  dat <- data.frame()
  
  for (i in 1:332){
    
    A <- read.csv(files_full[i])
    B <- complete.cases(A)
    C <- sum(as.numeric(B))
    if(C > threshold){
    dat <- rbind(dat, C)
}
  }
  print(dat)
  
}