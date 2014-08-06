\name{tdycd-package}
\alias{tdycd-package}
\alias{tdycd}
\docType{package}
\title{
Tools for keeping R code tidy
}
\description{
Provides tools for keeping R code tidy.
}
\details{
\tabular{ll}{
Package: \tab tdycd\cr
Type: \tab Package\cr
Version: \tab 0.94\cr
Date: \tab 2014-07-26\cr
License: \tab GPL\cr
}

Dependency chaining can be used by calling the functions dependr, dependr.executed, and dependr.clear.

Input helper function read.from.file provides easy access to file information.

}
\author{
Jayden MacRae

Maintainer: Jayden MacRae <dependr@macrae.net.nz>
}
\references{

}

\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
dependr('file-name')
dependr.executed('file-name')
dependr.clear()
read.from.file('path/to/file')
rff('path/to/file')
css(supress=c('input'))
create.standard.structure(supress=c('input'))
}
