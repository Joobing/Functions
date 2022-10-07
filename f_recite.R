recite<-function(txt)
{
  txt<-gsub(pattern="\\(([A-Z]+[a-z]+)", replace="\\[\\@\\1", x=txt)
  txt<-gsub(pattern="\\(e.g. ([A-Z]+[a-z]+)", replace="\\[\\@\\1", x=txt)
  
  # txt<-gsub(pattern="\\(([A-Z]+[a-z]+) \\&", replace="\\[\\@\\1<", x=txt)
  txt<-gsub(pattern="(\\d{4})\\; ", replace="\\1\\; @", x=txt)
  txt<-gsub(pattern="\\@([A-Z]+[a-z]+)", replace="\\@\\1\\<", x=txt)
  txt<-gsub(pattern="\\@([A-Z]+[a-z]+)<-([A-Z]+[a-z]+)", replace="\\@\\1-\\2\\<", x=txt)
  txt<-gsub("\\, (\\d{4})", "\\, >\\1\\", x=txt)
  txt<-gsub("\\, >(\\d{4})\\)", ">\\1\\]", txt)
  txt<-gsub("<(\\d{4})\\)", "<>\\1\\]", txt)
  txt<-gsub("<(\\d{4})\\;", "<>\\1\\;", txt)
  txt<-gsub("\\@([A-Z]+[a-z]+)<(\\d{4})", "\\@\\1<>\\2", txt)
  txt<-gsub("\\@\\@", "\\@", txt)
  
  
  
  txt<-gsub("<[^>]+>", "", txt)
  output<-gsub("<>", "", txt)
  return(output)
}

  # txt<-gsub(pattern="\\(([A-Z]+[a-z]+)\\, ", replace="\\[\\@\\1<", x=txt)
  # txt<-gsub(pattern="\\(([A-Z]+[a-z]+) \\&", replace="\\[\\@\\1<", x=txt)
  # txt<-gsub(pattern="\\; ([A-Z]+[a-z]+) \\&", replace="\\; \\@\\1<", x=txt)
  # txt<-gsub("\\, (\\d{4})\\)", ">\\1\\]", txt)
  # txt<-gsub("<(\\d{4})\\;", "<>\\1\\;", txt)
  # txt<-gsub("<[^>]+>", "", txt)
  # output<-gsub("<>", "", txt)
#   return(output)
# }

write(recite(readLines("D:/#recite/Document.txt")), "D:/#recite/recited.rtf")
