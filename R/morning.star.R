#' Determine morning star pattern using a OHLC price series
#'
#' @param x OHLC prices.
#' @param n number of period of trend
#' @param L.delta sensitivity for long candle
#' @param S.delta sensitivity for short candle
#' @return TRUE if kicking up pattern detected
#' @export


morning.star <- function(x,n=20,L.delta=1,S.delta=1) {
  U <- bullish.candle(x)
  D <- bearish.candle(x)

  Lag2.D <- quantmod::Lag(D,2)

  LC <- long.candle(x,n,L.delta)
  Lag2.LC <- quantmod::Lag(LC,2)

  SC <- short.candle(x,n,S.delta)
  Lag.SC <- quantmod::Lag(SC)

  GU <- gap.up(x)
  GD <- gap.down(x)
  Lag.GD <- quantmod::Lag(GD)


  result <- xts::reclass(U & LC &
                      Lag.SC &
                      Lag2.D & Lag2.LC &
                      GU &
                      Lag.GD,
                    x)
  colnames(result) <- "morning star"
  return(result)
}
