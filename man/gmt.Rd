\name{gmt}
\alias{gmt}
\alias{gst}
\alias{lst}
\alias{lt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Create sequences of a time }
\description{
  The functions for creating a time (or time sequences) measured in 
  Greenwich Mean Time (gmt), Greenwich Sidereal Time (gst),
  Local Sidereal Time (lst), Local Time (lt).
}
\usage{
gmt(hour = NULL, minute = 0, second = 0, epoch = Sys.time(), length = 1, by = 1)
gst(jday = jd(), hour = NULL, minute = 0, second = 0, epoch = Sys.time(), length = 1, by = 1)
lst(..., lambda = getOption("longitude"))
lt(hour = NULL, minute = 0, second = 0, epoch = Sys.time(), length = 1, by = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{jday}{ Julian Day Number }
  \item{hour}{ hour }
  \item{minute}{ minute }
  \item{second}{ second }
  \item{epoch}{ epoch }
  \item{length}{ length }
  \item{by}{ step in sequence }
  \item{\dots}{ additional arguments }
  \item{lambda}{ longitude of the observer, default taken from options }

}
\details{
  The functions gmt() and lt() are simple time series generators. By default they take
  current time expressed as local or GMT. 

  The functions lst() and gst() compute sidereal times for given Julian Day Number and 
  time. Default is for now.
}
\value{
  A vector containing times expressed as hours from 00h 00m 00s, of class "time".
}
\author{ Lukasz Komsta }
\examples{
lt()
gmt()
gst()
lst()
options(latitude=51,longitude=22)
lst(jd(2008,01,01),hour=12) # Local Sidereal Time, 1st January 2008 1200 UTC
lst(length=10) # 10 hours ahead sequence from now
}
\keyword{ math }

