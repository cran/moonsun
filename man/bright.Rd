\name{bright}
\alias{bright}
\docType{data}
\title{ Brighest stars coordinates }
\description{
  The equatorial coordinates of 23 brighest stars.
}
\usage{data(bright)}
\format{
  A data frame of class eqc with 23 observations on the following 2 variables.
  \describe{
    \item{\code{ra}}{right ascension}
    \item{\code{d}}{declination}
  }
}

\source{
  The position data was taken from English Wikipedia.
}
\examples{
data(bright)
options(latitude=51,longitude=22)
plot(bright)
plot(as.hoc(bright))
as.lt(rst(bright))
angle(bright)
}
\keyword{datasets}
