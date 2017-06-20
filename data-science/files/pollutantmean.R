pollutantmean <- function(directory, pollutant, id = 1:323) {
        ##Directory : location of load *.csv file.
        loadData <- read.csv(directory)
        temp = list.files(pattern="*.csv")
        for (i in 1:length(temp)) {
                ##assign(temp[i], read.csv(temp[i]))
                
                print(temp[i])
                if(pollutant == 'nitrate') {
                        result <- mean(loadData$nitrate[!is.na(loadData$nitrate)][id])
                } else if(pollutant == 'sulfate') {
                        result <- mean(loadData$sulfate[!is.na(loadData$sulfate)][id])
                } else {
                        warning('option not available. Try again')
                        result <- 0
                }
        }
        result
}