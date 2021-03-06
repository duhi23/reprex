% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/reprex.R
\name{reprex}
\alias{reprex}
\title{Render a reprex}
\usage{
reprex(x = NULL, slug = "REPREX", venue = c("gh", "so"),
  outfiles = NULL)
}
\arguments{
\item{x}{Path to \code{.R} file containing reprex code or \code{NULL}, if the
code is on the clipboard}

\item{slug}{Evocative words that are used to create a slug for the resulting,
possibly temporary, \code{.R} file. Sorry, file stuff implemented in a
half-baked way at this point.}

\item{venue}{"gh" for GitHub or "so" for stackoverflow}

\item{outfiles}{Logical indicating if the \code{.R} and \code{.md} files
should be left behind. Default to \code{FALSE} if code provided via
clipboard and \code{TRUE} if code read from file. At this point, outfiles
are deposited in current working directory, but the goal is to consult
options for a place where you keep all such snippets.}
}
\description{
Given some R code on the clipboard or in a file, this function runs it via
\code{\link[rmarkdown]{render}}. The resulting bit of Markdown is the primary
output. It will be ready and waiting on the clipboard, for pasting into a
GitHub issue or to stackoverflow. Optionally, the R code and Markdown will be
left behind in files. An HTML preview will display in RStudio's Viewer pane,
if available, or in the default browser otherwise.
}
\examples{
\dontrun{
# put some code like this on the clipboard
# (y <- 1:4)
# mean(y)
reprex()
}
}

