## Quiz Week-1.

```
dat <- read.xlsx(file = "survey.xlsx", sheetIndex = 1, colIndex = 7:15, startRow = 18, endRow = 23, header = TRUE)
sum(dat$Zip*dat$Ext,na.rm=T)
```