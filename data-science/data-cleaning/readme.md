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

req <- GET("https://api.github.com/rate_limit", gtoken)
stop_for_status(req)
content(req)

or

req <- with_config(gtoken, GET("https://api.github.com/rate_limit")) 
stop_for_status(req) 
content(req)
```