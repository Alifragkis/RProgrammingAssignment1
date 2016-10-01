corr <- function(directory, threshold = 0){
        
        files_list <- list.files(directory, full.names = TRUE)
        coc <- data.frame()
        corrs <- vector()
        
        for (i in 1:332){
                
                ccc <- sum(complete.cases(read.csv(files_list[i])))
                
                if (ccc > threshold) {
                        my_data3 <- data.frame()
                        my_data3 <- rbind(my_data3, read.csv(files_list[i]))
                        coc <- my_data3[complete.cases(my_data3),]
                        corrs <- c(corrs, cor(coc$sulfate, coc$nitrate))
                }
                
        }
        
        corrs
        
        
}