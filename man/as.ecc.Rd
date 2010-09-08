\name{as.ecc}
\alias{as.ecc}
\alias{as.eqc}
\alias{as.hoc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Convert between different coordinate systems }
\description{
  The function converts data between equatorial, ecliptic and horizontal
  coordinates.
}
\usage{
as.ecc(x)
as.eqc(x,time=lst(),phi=getOption("latitude")) 
as.hoc(x,time=lst(),phi=getOption("latitude")) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ An object of class eqc,ecc or hoc. }
  \item{time}{Local Sidereal Time - the LST at the moment by default.}
  \item{phi}{Latitude of the observer - taken from options by default.}
}

\value{
  An converted object of desired class.
}
\author{ Lukasz Komsta }
\examples{
options(latitude=51,longitude=22)
data(bright)
plot(as.hoc(bright))
plot(as.hoc(bright,time=lst(hour=0)))
plot(as.ecc(bright))
plot(as.hoc(planets()))
}
\keyword{ manip }

