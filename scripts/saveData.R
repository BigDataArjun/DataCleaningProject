### saveData.r
### save datafiles to disk

## create data directory
if (!file.exists("data")) {
  dir.create("data")
}


## save datafiles
write.csv(accData, "./data/accData.csv", quote = TRUE, row.names = FALSE)
write.table(accData, "./data/accData.txt", sep = "\t", quote = TRUE, row.names = FALSE)
save(accData, file = "./data/accData.rda")

