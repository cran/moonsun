\name{plot.apos}
\alias{plot.apos}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Coordinates plots }
\description{
  Plot positions of objects in the sky
}
\usage{
\method{plot}{apos}(x, label = TRUE, grid = TRUE, type = "n", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ an object inherited from class "apos" ("eqc", "ecc" or "hoc")}
  \item{label}{ should labels be plotted? }
  \item{grid}{ shoulf grid be plotted? }
  \item{type}{ type passed to plot(), default "n" (when labels are TRUE) }
  \item{\dots}{ additional parameters passed to plot() }
}
\author{ Lukasz Komsta }
\examples{
options(latitude=51,longitude=22)
par(mfrow=c(2,2))
data(bright)
plot(bright)
plot(as.ecc(bright))
plot(as.hoc(bright))
plot(as.lt(rst(bright)))
}
\keyword{ hplot }

