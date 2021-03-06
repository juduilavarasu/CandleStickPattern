% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/short.candle.R
\name{short.candle}
\alias{short.candle}
\title{Determine short candle using a OHLC price series}
\usage{
short.candle(x, n = 20, delta = 1)
}
\arguments{
\item{x}{OHLC prices.}

\item{n}{period}

\item{delta}{sensitivity parameter}
}
\value{
TRUE if short candle detected
}
\description{
Determine short candle using a OHLC price series
}
