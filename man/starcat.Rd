\name{starcat}
\alias{starcat}
\docType{data}
\title{
Data extracted from Yale bright star catalogue
}
\description{
The data frame contains the equitorial coodinates at epoch 2000.0 of 9110 bright stars extracted  from Yale bright star catalogue.
}
\usage{data(starcat)}
\format{
  A data frame with 9110 rows on the following 4 columns.
  \describe{
    \item{\code{resRA}}{Right Ascension of each star at epoch 2000.0}
    \item{\code{rrr}}{Declination of each star at epoch 2000.0}
    \item{\code{Vmag}}{Visual magnitude for each star.}
    \item{\code{SAO}}{SAO index for each star.}
  }
}
\source{
ftp://cdsarc.u-strasbg.fr/pub/cats/V/50/catalog.gz 
}
\references{
Hoffleit D., Warren Jr W.H. The Bright Star Catalogue, 5th Revised Ed. (Preliminary Version) 1991
}
\examples{
data(starcat)
}
\keyword{datasets}
