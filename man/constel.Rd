\name{constel}
\alias{constel}
\title{ Assign constellation abbreviations to equatorial coordinates }
\description{

  This function finds the abbreviations of constellations for given
  coordinates in equatorial system.

}
\usage{
constel(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ an object of class eqc }
}
\details{
  ~~ If necessary, more details than the description above ~~
}
\value{
  
  A character vector with constellation abbreviations

}
\references{ http://vizier.u-strasbg.fr/viz-bin/VizieR?-source=6042 }
\author{ Lukasz Komsta }
\examples{
options(latitude=51,longitude=22)
data(bright)
constel(bright)
constel(planets())
}
\keyword{ manip }

