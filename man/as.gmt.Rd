\name{as.gmt}
\alias{as.gmt}
\alias{as.gst}
\alias{as.lst}
\alias{as.lt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Converting between several time standards }
\description{
  These functions are used for converting between astronomical and sidereal times.
}
\usage{
as.gmt(x, jday = jd(), lambda = getOption("longitude"), ...)
as.gst(x, jday = jd(), lambda = getOption("longitude"), ...)
as.lst(x, lambda = getOption("longitude"), ...)
as.lt(x, ...)
}
\arguments{
  \item{x}{ an object of class gmt (Greenwich Mean Time), gst (Greenwich Sidereal Time), lst 
   (Local Sidereal Time) or lt (Local Time)}
  \item{jday}{ Julian Day Number (default for today) }
  \item{lambda}{ Longitude of observer (default taken from options) }
  \item{\dots}{ Additional arguments }
}
\value{
  A converted object of appropriate class.
}
\author{ Lukasz Komsta }

\examples{
l=lt(length=10)
as.gst(l)
as.lst(l)
as.gmt(l)
as.lt(as.gst(as.gmt(l)))
}
\keyword{ manip }

