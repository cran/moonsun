\name{rst}
\alias{rst}
\alias{sun.rst}
\alias{moon.rst}
\alias{plot.rst}
\title{ Rise, Transit and Set of specific coordinate points }
\description{
   Compute Time of Rise, Transit and Set, and also azimuths of Rise and
   Set, for given positions, expressed in LOCAL SIDEREAL TIME.
}
\usage{
rst(x, phi = getOption("latitude"))
sun.rst(jday = jd(), phi = getOption("latitude"))
moon.rst(jday = jd(), phi = getOption("latitude"))

\method{plot}{rst}(x, annotate = TRUE, ...)

}
\arguments{
  \item{x}{ an object of class eqc }
  \item{jday}{ Julian Day Number }
  \item{phi}{ observer's latitude (default taken from options) }
  \item{annotate}{ should the plot be annotated (set FALSE for large periods) }
  \item{...}{ additional arguments passed to plot() }
}
\details{
  The computed time is expressed as LOCAL SIDEREAL TIME (thus, longitude
  is not needed). If you want to convert it to local time, use as.lt().

  The rst() function does not consider any motion of the object, so
  it shows some inaccuracy for Sun and very significant inaccuracy (even 
  an hour) for the Moon. sun.rst() and moon.rst() function are designed
  for calculating the better rise, transit and set times of Sun and Moon 
  by stepwise approximation.
}
\value{
  An object of class "rst". If all values are -Inf, the object never rises
  above horizon. If rise and set are Inf, the object is always above horizon
  and only transit time is computed.
}
\author{ Lukasz Komsta }
\examples{
options(latitude=51,longitude=22)
data(bright)
rst(bright)
as.lt(rst(bright))
as.lt(rst(planets()))
as.lt(moon.rst(jd(length=30)))
}
\keyword{ math }

