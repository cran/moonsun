\name{sun}
\alias{sun}
\alias{mercury}
\alias{venus}
\alias{mars}
\alias{jupiter}
\alias{saturn}
\alias{uranus}
\alias{neptune}
\alias{pluto}
\title{ Equatorial coordinates for celectial objects (ephemerides) }
\description{
  These functions compute equatorial coordinates of celestial objects at given day, their phase,
  position of the limb, distance from earth and the magnitude.
}
\usage{
sun(jday = jd())
mercury(jday = jd())
venus(jday = jd())
mars(jday = jd())
jupiter(jday = jd())
saturn(jday = jd())
uranus(jday = jd())
neptune(jday = jd())
pluto(jday = jd())
}
\arguments{
  \item{jday}{ Julian Day number }
}
\details{
  The algorithms used here are fairly simple and not with top-accuracy. 

  Sun is assumed to be always on ecliptic and no eccentric anomaly is considered. The accuracy should be
  within 10s of right ascension and few minutes of declination.

  Planets position are calculated without solving the Kepler Equation and considering perturbations, so
  the accuracy is similar.
}
\value{
  An object of class "eqc, apos, data.frame", containing a row for each day, and following
  columns:
  \item{ra}{Right Ascension}
  \item{d}{Declination}
  \item{phase}{Percentage of bright area visible from Earth}
  \item{angle}{Angle between the limb and north-south equatorial axis}
  \item{dist}{Distance from Earth in AUs}
  \item{size}{Size in arcsecs}
  \item{mag}{Magnitude}
}
\author{ Lukasz Komsta}
\examples{
options(latitude=51.25,longitude=22.5)	# Lublin, Poland
j=jd(length=30)				# Next 30 days
sun(j) 					# Equatorial position
as.hoc(sun(j),j)			# Horizontal position at current time
}
\keyword{ math }

