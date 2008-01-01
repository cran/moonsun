\name{planets}
\alias{planets}
\title{ Coordinates of all planets for given day }
\description{
  Compute equatorial coordinates for all planets (and also
  Moon and Sun if needed) by one function call.
}
\usage{
planets(jday = jd(), show.sun = TRUE, show.moon = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{jday}{ Julian Day Number (default today) }
  \item{show.sun}{ should the Sun position be computed? }
  \item{show.moon}{ should the Moon position be computed? }
}
\details{
  The function calls the planet(), sun() and moon() function for
  each object.
}
\value{
  An object of class eqc, containing all computed coordinates.
}
\author{ Lukasz Komsta }
\examples{
planets()
rst(planets())
}
\keyword{ math }

