% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/news_request.R
\name{get_news_headlines}
\alias{get_news_headlines}
\title{get_news_headlines}
\usage{
get_news_headlines(
  query = "Topic:TOPALL and Language:LEN",
  count = 10L,
  date_from = NULL,
  date_to = NULL,
  raw_output = FALSE,
  debug = FALSE
)
}
\arguments{
\item{query}{string, optional. Search criteria for the news headlines
The query can contain RIC codes, company names, country names and
operators (AND, OR, NOT, IN, parentheses and quotes for explicit search…).
Tip: Append 'R:' in front of RIC names to improve performance.
Default: Top News written in English}

\item{count}{int, optional. The maximum number of headlines to retrieve.
Value Range: [1-100].
Default: 10}

\item{date_from}{string. Beginning of date range.
String format is:'\%Y-\%m-\%dT\%H:\%M:\%S'. e.g. 2016-01-20T15:04:05.}

\item{date_to}{string. End of date range.
String format is: '\%Y-\%m-\%dT\%H:\%M:\%S'. e.g. "2016-01-20T15:04:05".}

\item{raw_output}{boolean. Set this parameter to True to get the data in json format
if set to False, the function will return a data frame
The default value is False}

\item{debug}{boolean. If this parameter is set to True, the json request and response are printed.}
}
\description{
Returns a data frame contianing the news headlines
}
\examples{
\dontrun{
set_app_key('set your app key here')
headlines = get_news_headlines("R:MSFT.O", 2L)
headlines = get_news_headlines("R:MSFT.O IN FRANCE")
headlines = get_news_headlines("R:MSFT.O IN FRANCE IN ENGLISH", count=5L)
headlines = get_news_headlines("OBA* OR CLINTON IN ENGLISH", count=5L)
}
}
