ptm <- proc.time()
library("data.table")
header <- read.table("CPALTT01USA659N.csv", header = TRUE, sep=",", nrow = 1)
DF <- fread("CPALTT01USA659N.csv", skip=1, sep=",", header = FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
DF
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME

