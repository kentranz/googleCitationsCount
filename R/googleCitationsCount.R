

citeCount <- function(url)
{
  #temp <- RCurl::getURL("https://scholar.google.com/citations?user=9Mj44Z4AAAAJ&hl=en")
  if (is.character(url) == F)
  {
    stop("url has to be a string")
  }
  temp <- RCurl::getURL(url)
  
  value <- stringr::str_match_all(temp, "Citations\\<\\/a\\>.*?(\\d+)\\<")[[1]][2]
  return(value)
}


citeCount("https://scholar.google.com/citations?user=9Mj44Z4AAAAJ&hl=en")


