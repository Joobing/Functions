library(pdftools)
library(tabulizer)
setwd("d:/#ReadingList/")
for(file in list.files(path="d:/#ReadingList/"))
{s<-tabulizer::extract_text(file)
write.table(s, file = paste("d:/txt/", gsub("pdf", "txt", file),sep=""), row.names = FALSE)}

