pollutantmean <- function(directory, pollutant, id = 1:323) {
        ##Directory : location of load *.csv file.
        loadData <- read.csv(directory)
        ##pollutant : is character vector indicate type of pollutant.
        result <- 0
        if(pollutant == 'nitrate') {
                result <- mean(loadData$nitrate[!is.na(loadData$nitrate)])
        } else if(pollutant == 'sulfate') {
                result <- mean(loadData$sulfate[!is.na(loadData$sulfate)])
        } else {
                warning('option not available. Try again')
        }
        result
}