complete <- function(directory, ID = 1:332) {
        
        files_list <- list.files(directory, full.names = TRUE)
        my_data2 <- data.frame()
        colid <- data.frame()
        for (i in ID) {
                
                my_data2 <- rbind(my_data2, sum(complete.cases(read.csv(files_list[i]))))
                colid <- rbind(colid, i)
        }
        
        cc <- cbind(colid, my_data2)
        colnames(cc) <- c("id", "nobs")
        cc
}