\name{ecc}
\alias{ecc}
\alias{eqc}
\alias{hoc}
\title{ Create objects containing coordinates }
\description{
  These functions are simple way to create objects containing a set of
  horizontal (hoc), ecliptic (ecc) and equatorial (eqc) coordinates.
}
\usage{
ecc(lat, long, names = NULL)
eqc(ra, d, names = NULL)
hoc(az, alt, names = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lat}{ ecliptic latitude }
  \item{long}{ ecliptic longitude }
  \item{ra}{ right ascension }
  \item{d}{ declination }
  \item{az}{ azimuth }
  \item{alt}{ altititude }
  \item{names}{ names of objects }
}
\details{
  All the arguments to these functions are vectors of the same length, containing corresponding
  coordinates and names. These are collected into a dataframe of appropriate class - eqc, ecc or hoc.
}
\value{
  An object of class eqc/ecc/hoc, apos, data.frame.
}
\author{ Lukasz Komsta }
\examples{
a = ecc(1:360,rep(0,360),1:360)
a
as.eqc(a)
plot(as.eqc(a))
}
\keyword{ manip }

