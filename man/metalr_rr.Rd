\name{metalr_rr}
\alias{metalr_rr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
LR-based method for combining rate ratios in fixed
effect and random effects meta-analyses. Estimates 95\% CI and ICI for combined total effects.
%%  ~~function to do ... ~~
}
\description{
Based on the method proposed by colin R Dormuth et al, 2016, the function estimates traditional confidence intervals and intrinsic confidence intervals for combined effect estimates (Rate Ratio) in meta-analysis. It also returns an estimate of heterogeneity accross studies as well as Isq statistics in random meta-analysis.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
metalr_rr(idata, refval, num_iter, increm, method = "random")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{idata}{ A dataframe with columns 1 to 4 given as: numbers of cases for treatment/condition A, number of cases for treatment/condition B, Person years for A and person years for B.

%%     ~~Describe \code{idata} here~~
}
  \item{refval}{ A reference value for the alternate hypothesis in equation (4) of colin R Dormuth et al, 2016. The default value for log(OR_(HA)) is 0.
%%     ~~Describe \code{refval} here~~
}
  \item{num_iter}{ Denotes the number of iterations or steps from the specified reference value of the log odds ratio. Default is 3000.
%%     ~~Describe \code{num_iter} here~~
}
  \item{increm}{
  The amount of increments from the reference value with each increment.
%%     ~~Describe \code{increm} here~~
}
  \item{method}{ Specifies the method for combining the effect estimates in the meta-analysis. A fixed or random method is required.
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
Returns an estimate of the mle for the odds ratio as well as the corresponding confidence and intrinsic confidence limits. The list of output values include:
\item{Total_RE}{A dataframe of combined effect estimate, the 95\% CI and intrinsic CI}
\item{Tausq}{A measure of heterogeneity between the studies used in the meta-analysis in random effect meta-analysis.}
\item{Isq}{The I^2 statistics}
\item{meta_results}{A data effect estimates from all the studies, the 95\% confidence limits and the 95\% intrinsic confidence limits.}
}
\references{
Dormuth, Colin R., Kristian B. Filion, and Robert W. Platt. "Likelihood ratio meta-analysis: New motivation and approach for an old method." Contemporary clinical trials 47 (2016): 259-265.
%% ~put references to the literature/web site here ~
}
%\author{
%%  ~~who you are~~
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
# Random dataset
data("sample_metarr_data")

metalr_rr(idata=sample_metarr_data,refval=0,num_iter=3000,increm=0.001,method = "random")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Likelihood ratio }% use one of  RShowDoc("KEYWORDS")
\keyword{ Intrinsic confidence interval}% __ONLY ONE__ keyword per line
\keyword{ Meta-analysis }% __ONLY ONE__ keyword per line
\keyword{ Meta-analytic methods}
