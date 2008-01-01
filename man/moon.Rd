\name{moon}
\alias{moon}
\title{ Equatorial Coordinates of Moon }
\description{
  The function computes equatorial coordinates of Moon.
}
\usage{
moon(jday = jd() + gmt()/24)
}
\arguments{
  \item{jday}{ Julian Day Number. }
}
\value{
  An object of class eqc, apos, data.frame containing computed coordinates. See
  planet() for details.
}
\author{ Lukasz Komsta }
\note{ 

  The daily motion of the Moon is significant, and therefore default behavior
  of the function is to add a day fraction to the Julian Day Number, depending 
  on current hour. 

  The algorithm used here is fairly simple and the expected accuracy is within
  12 arc minutes of expected coordinates.

}
\examples{
moon()
moon(jd(length=30))
as.ecc(moon())
}
\keyword{ math }

