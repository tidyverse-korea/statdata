#'  초중등 통계 데이터셋 모음
#'
#' `statdata` 팩키지는 초중등 통계, 수학, 공학 교과서에 수록된
#' 다양한 데이터를 포함하고 있다.
#' `statdata` 팩키지에 수록된 데이터를 활용하여 통계 리터러시
#' 함양에 필요한 단순작업을 크게 줄여주고 다양한 분석기법 공유에
#' 기여할 것으로 기대된다.
#' @docType package
#' @name statdata
#' @aliases statdata datadata-package
NULL

#' shadow_length : 초등과학 3-2
#'
#' 초등과학 3-2에 수록된 태양 각도와 그림자 길이에 대한 데이터다.
#'
#'
#' @format 변수 2개와 7행을 갖는 티블 데이터프레임:
#' @aliases 그림자길이
#' @docType data
#' @return \item{shadow_length}{데이터프레임}
#' \describe{
#'   \item{\code{각도}}{double 지면에 세운 막대기와 태양과의 각도, 단위: 도}
#'   \item{\code{길이}}{double 막대기의 그림자 길이, 단위: cm}
#'}
#' @details  초등과학 3-2에 수록된 태양 각도와 그림자 길이에 대한 데이터다.
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"shadow_length"

#' sea_pollution : 초등과학 3-2
#'
#' 초등과학 3-2 교과서에 수록된 우리나라 해역 오염실태자료 데이터다.
#'
#'
#' @format 변수 3개와 16행을 갖는 티블 데이터프레임:
#' @aliases 해역오염실태자료
#' @docType data
#' @return \item{sea_pollution}{데이터프레임}
#' \describe{
#'   \item{\code{연도}}{double 1993년부터 2008년까지 해역 오염실태 조사 연도}
#'   \item{\code{건수}}{double 해역 오염 건수}
#'   \item{\code{유출량}}{double 해역 오염 유출량, 단위: kl}
#'}
#' @details  초등과학 3-2 교과서에 수록된 1993년부터 2008년까지 우리나라 해역 오염실태자료 데이터다.
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"sea_pollution"

#' planet_radius : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 지구를 1로 뒀을 때 행성의 반지름 데이터
#'
#'
#' @format 변수 2개와 9행을 갖는 티블 데이터프레임:
#' @aliases 행성반지름
#' @docType data
#' @return \item{planet_radius}{데이터프레임}
#' \describe{
#'   \item{\code{행성이름}}{character 태양계 존재하는 행성 이름}
#'   \item{\code{반지름}}{double 지구를 1로 뒀을 때 행성의 반지름}
#'}
#' @details  초등과학 5-2 교과서에 수록된 행성의 크기에 때한 실증 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"planet_radius"

#' gender : 원시
#'
#' 초등 남성과 여성 원시 데이터
#'
#'
#' @format 변수 1개와 10행을 갖는 티블 데이터프레임:
#' @aliases 성별
#' @docType data
#' @return \item{gender}{데이터프레임}
#' \describe{
#'   \item{\code{성별}}{character 남, 여 두 값중 하나를 갖는 성별}
#'}
#' @details  초등 원시 성별 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"gender"
