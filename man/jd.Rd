\name{jd}
\alias{jd}
\title{ Julian Day Number }
\description{
  Compute the Julian Day Number for a given date, optionally generating
  a sequence.
}
\usage{
jd(year = 0, month = 0, day = 0, epoch = Sys.time(), length = 1, by = 1)
}
\arguments{
  \item{year}{ year }
  \item{month}{ month }
  \item{day}{ day }
  \item{epoch}{ epoch (number of seconds since 1st January 1970 0000 UTC) }
  \item{length}{ length of sequence }
  \item{by}{ step of sequence }
}
\details{
  If any of the year, month or day parameters is given (and thus nonzero)
  the date is taken from these parameters. If not, the epoch parameter is
  considered (default taken from system timer).
}
\value{
  A vector of Julian Day Numbers.
}
\author{ Lukasz Komsta }
\examples{
jd()
jd(1978,10,16)
jd(length=10)
}
\keyword{ math }

