stat_mode <- function(x){
  tablo <- table(x)
  return(as.numeric(names(tablo[tablo == max(tablo)])))
}