## Quiz Week-1.

```
dat <- read.xlsx(file = "survey.xlsx", sheetIndex = 1, colIndex = 7:15, startRow = 18, endRow = 23, header = TRUE)
sum(dat$Zip*dat$Ext,na.rm=T)
```

## Config My App.

```library(httr)

oauth_endpoints("github")

myapp <- oauth_app("github", key = "beed56c88c0e2468615d", secret = "7a6ace9048f492d0f15316bede0979c411a7f9e4")

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

gtoken <- config(token = github_token)

req <- GET("https://api.github.com/users/jtleek/repo", gtoken)
stop_for_status(req)
content(req)

**2013-11-07T13:25:07Z**

```

## 2. 
```
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"

f <- file.path(getwd(), "ss06pid.csv")

download.file(url, f)

acs <- data.table(read.csv(f))

query1 <- sqldf("select pwgtp1 from acs where AGEP < 50")

query2 <- sqldf("select pwgtp1 from acs")  ## NO

query3 <- sqldf("select * from acs where AGEP < 50 and pwgtp1")  ## NO

query4 <- sqldf("select * from acs where AGEP < 50")  ## NO

identical(query3, query4)
```
> install.package(RH2)
> install.package(data.table)
> library(RH2)
> library(data.table)

**sqldf("select distinct AGEP from acs")**
