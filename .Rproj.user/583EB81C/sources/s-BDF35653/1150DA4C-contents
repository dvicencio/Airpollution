complete <- function(directory, id = 1:332){
  
  files_full <- list.files(directory, full.names = TRUE)
  
  dat <- data.frame()

  for (i in id){
    
    A <- read.csv(files_full[i])
    B <- complete.cases(A)
    C <- as.numeric(B)
    D <- sum(C)
    E <- c(i, D)
    dat <- rbind(dat, E)
  
    colnames(dat) <- c("id", "nobs")
  }
  print(dat)
}

