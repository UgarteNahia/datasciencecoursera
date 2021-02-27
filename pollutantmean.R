pollutantmean <- function  (poldir, poltype, id=1:332){
  allfiles <- list.files (poldir, full.names=TRUE)
  poldata <- lapply(allfiles, read.csv)
  p <- poltype
  n <- min(id)
  l <- length(id)
  total <- integer()
  
  
  if (p== 'sulfate'){col <-2}
  if (p== 'nitrate') {col <- 3}
  
  
  for (r in 1:l){
    column <- (data.frame(poldata[n]) [,col])
    total <- append(total, column)
    n <- n + 1
      
  }
  polmean <- mean(total, na.rm= TRUE)
  print(polmean)
}

