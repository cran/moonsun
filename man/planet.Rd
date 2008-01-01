\name{planet}
\alias{planet}
\title{ Compute coordinates of a planet in solar system. }
\description{
  This function computes equatorial coordinates for inner or outer planet for given
  Julian Day Number.
}
\usage{
planet(jday = jd(), name = "", inner = FALSE, tp, ep, oo, e, a, i, om, th, mag)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{jday}{ Julian Day Number, default today }
  \item{name}{ name of a planet (appended to dates in result) }
  \item{inner}{ TRUE if it is inner, FALSE if outer planet }
  \item{tp}{ period of a planet (tropical years) }
  \item{ep}{ longitude at epoch 1990 January 0.00 (degrees) }
  \item{oo}{ longitude of the perihelion (degrees) }
  \item{e}{ eccentricity of the orbit }
  \item{a}{ semi-major axis of the orbit (AU) }
  \item{i}{ inclination of the orbit (degrees) }
  \item{om}{ longitude of the ascending node (degrees) }
  \item{th}{ angular diameter at 1 AU (arcsecs) }
  \item{mag}{ visual magnitude at 1 AU }
}
\details{
  The algorithm used here is fairly simple, it does not consider the
  Kepler equation, nor gravitational influences from other planets. See
  sun() for details.

  This function is not called by user unless calculating a position for
  planetoid or modified data. The planets() function calls it with appropriate
  parameters automatically.
}
\value{
  An object of class eqc, containing position and other data for requested days,
  see planets() for details.
}
\author{ Lukasz Komsta }
\examples{
planets()
}
\keyword{ math }% __ONLY ONE__ keyword per line
