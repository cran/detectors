% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detectors.R
\docType{data}
\name{detectors}
\alias{detectors}
\title{Predictions from GPT Detectors}
\format{
A data frame with 6,185 rows and 9 columns:
\describe{
\item{kind}{Whether the essay was written by a \code{"Human"} or \code{"AI"}.}
\item{.pred_AI}{The class probability from the GPT detector that the
inputted text was written by AI.}
\item{.pred_class}{The uncalibrated class prediction, encoded as
\code{if_else(.pred_AI > .5, "AI", "Human")}}
\item{detector}{The name of the detector used to generate the predictions.}
\item{native}{For essays written by humans, whether the essay was written
by a native English writer or not. These categorizations are coarse;
values of \code{"Yes"} may actually be written by people who do not write with
English natively. \code{NA} indicates that the text was not written by a human.}
\item{name}{A label for the experiment that the predictions were generated
from.}
\item{model}{For essays that were written by AI, the name of the model
that generated the essay.}
\item{document_id}{A unique identifier for the supplied essay. Some
essays were supplied to multiple detectors. Note that some essays
are AI-revised derivatives of others.}
\item{prompt}{For essays that were written by AI, a descriptor for the
form of "prompt engineering" passed to the model.}
}

For more information on these data, see the source paper.
}
\source{
\doi{10.1016/j.patter.2023.100779}
}
\usage{
detectors
}
\description{
Data derived from the paper \emph{GPT detectors are biased against
non-native English writers.} The study authors carried out a series of
experiments passing a number of essays to different GPT detection models.
Juxtaposing detector predictions for papers written by native and non-native
English writers, the authors argue that GPT detectors disproportionately
classify real writing from non-native English writers as AI-generated.
}
\examples{

detectors

}
\keyword{datasets}
