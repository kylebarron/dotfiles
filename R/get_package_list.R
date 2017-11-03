# https://www.r-bloggers.com/list-of-user-installed-r-packages-and-their-versions/
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
ip <- ip[,1]

ip <- paste0('"', ip, '"')
ip <- paste(ip, collapse = ", ")
ip <- paste0('install.packages(c(', ip, '))')
ip <- paste0("#!/usr/bin/env Rscript\n",
             ip,
             "\ndevtools::install_github('IRkernel/IRkernel')",
             "\nIRkernel::installspec()"
         )

fileConn <- file(file.path('R', "install_packages.R"))
writeLines(ip, fileConn)
close(fileConn)
