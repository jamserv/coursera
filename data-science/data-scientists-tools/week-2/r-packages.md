## R Packages.

Search available packages.
```
a <- available.packages()
head(rowname(a), 3)
```

**Install R Packages**
* ```install.packages("ggplots2")```				- unique packages
* ```install.packages(c("ggplots2","libzip"))```	- multiple packages

**Install from Bioconductor**

try http:// if https:// URLs are not supported

source("https://bioconductor.org/biocLite.R")
biocLite()

```
source("URL_PACKAGE")
biocLite()
biocLite(c("ggplots2","libzip"))
```

**Loading packages**.

```
library(ggplots2)
```