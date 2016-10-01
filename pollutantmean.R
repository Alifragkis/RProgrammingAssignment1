pollutantmean <- function(directory, pollutant, ID = 1:332){
        
        files_list <- list.files(directory, full.names = TRUE)
        my_data <- data.frame()
        
        for (i in ID){
                my_data <- rbind(my_data, read.csv(files_list[i]))
        }
        
        my_mean <- mean(my_data[, pollutant], na.rm=TRUE)
        my_mean
}