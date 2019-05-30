score.sentiment=function(sentences,pos.word,neg.word,.progress="none"){
  sent.score=lapply(sentences, function(sentences,pos.word,neg.word){
    #removing punctuations
    sentences=gsub("[[:punct:]]","",sentence)
    #removing contronl characters
    sentences=gsub("[[:cntrl:","",sentence)
    #removing digits
    sentences=gsub("\\d+","",sentence)
    #error handling function when trying to convert lower case 
    tryTolower=function(x){
      y=NA
      try_error=tryCatch(tolower(x),error=function(e)e)
      if(!inherits(try_error,"error")){
        y=tolower(x)
      }
      return(y)
    }
    sentence=sapply(sentence,tryTolower)
  })
}