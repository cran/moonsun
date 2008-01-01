\name{angle}
\alias{angle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Angular distance between the places in the sky }
\description{
  The function computes angle between two or more objects on the sky.
}
\usage{
angle(x, y = NULL)
}
\arguments{
  \item{x}{ an object of class "apos" }
  \item{y}{ optional second object of class "apos" }
}
\value{

  If y==NULL, the function returns value of class (angle,dist),
  containing the angles (in degrees) between all positions in 
  the given object (for example distances between all planets 
  for one day).

  If y is given (y should contain the same row number than x) and
  the return value is a vector of distances between the subsequent
  corresponding rows (for example distance between Moon and Sun
  for some days ahead).

}
\author{ Lukasz Komsta }
\examples{
options(latitude=51,longitude=22)
data(bright)
angle(bright)
angle(planets())
j=jd(length=100)
plot(angle(mercury(j),venus(j))) # angle between Venus and Mercury for next 100 days
}
\keyword{ math }

