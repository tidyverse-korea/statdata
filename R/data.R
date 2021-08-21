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

#' distance_time_graph : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 거리-시간 그래프 데이터
#'
#'
#' @format 변수 2개와 7행을 갖는 티블 데이터프레임:
#' @aliases 거리-시간 그래프
#' @docType data
#' @return \item{distance_time_graph}{데이터프레임}
#' \describe{
#'   \item{\code{거리}}{double 거리, 단위: cm}
#'   \item{\code{시간}}{double 거리에 따른 시간, 단위: 초}
#'}
#' @details  초등과학 5-2 교과서에 수록된 거리에 따른 시간을 나타낸 그래프 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"distance_time_graph"

#' transportation : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 교통수단 데이터
#'
#'
#' @format 변수 2개와 4행을 갖는 티블 데이터프레임:
#' @aliases 교통수단
#' @docType data
#' @return \item{transportation}{데이터프레임}
#' \describe{
#'   \item{\code{교통수단}}{character 자전거, 자동차, 배, 기차 중 하나의 교통수단}
#'   \item{\code{이동거리}}{double 교통수단에 따른 이동거리, 단위: km}
#'}
#' @details  초등과학 5-2 교과서에 수록된 교통수단별 이동거리 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"transportation"

#' running_record : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 달리기 기록 데이터
#'
#'
#' @format 변수 2개와 6행을 갖는 티블 데이터프레임:
#' @aliases 달리기 기록
#' @docType data
#' @return \item{running_record}{데이터프레임}
#' \describe{
#'   \item{\code{레인}}{double 1부터 6까지 레인의 번호}
#'   \item{\code{걸린시간}}{double 달리기에 걸린 시간, 단위: 초}
#'}
#' @details  초등과학 5-2 교과서에 수록된 레인별 달리기에 걸린시간 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"running_record"

#' water_temp_height : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 물의 온도와 물기둥 높이 데이터
#'
#'
#' @format 변수 4개와 4행을 갖는 티블 데이터프레임:
#' @aliases 물의 온도와 물기둥 높이
#' @docType data
#' @return \item{water_temp_height}{데이터프레임}
#' \describe{
#'   \item{\code{물의온도}}{double 물의 온도, 단위: 섭씨}
#'   \item{\code{물기둥높이1회}}{double 첫 번째로 측정한 물의 온도에 따른 물기둥 높이}
#'   \item{\code{물기둥높이2회}}{double 두 번째로 측정한 물의 온도에 따른 물기둥 높이}
#'   \item{\code{물기둥높이3회}}{double 세 번째로 측정한 물의 온도에 따른 물기둥 높이}
#'}
#' @details  초등과학 5-2 교과서에 수록된 3회 측정된 물의 온도에 따른 물기둥 높이 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"water_temp_height"

#' water_temp_boric_acid : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 물의 온도와 붕산 녹는양 데이터
#'
#'
#' @format 변수 2개와 4행을 갖는 티블 데이터프레임:
#' @aliases 물의 온도와 붕산 녹는양
#' @docType data
#' @return \item{water_temp_boric_acid}{데이터프레임}
#' \describe{
#'   \item{\code{물의온도}}{double 물의 온도, 단위: 섭씨}
#'   \item{\code{붕산녹는양}}{double 물의 온도에 따른 붕산이 녹는양, 단위: g}
#'}
#' @details  초등과학 5-2 교과서에 수록된 물의 온도에 따른 붕산 녹는양 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"water_temp_boric_acid"

#' water_temp_liquid_height : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 물의 온도와 액체기둥 높이 데이터
#'
#'
#' @format 변수 4개와 4행을 갖는 티블 데이터프레임:
#' @aliases 물의 온도와 액체기둥 높이
#' @docType data
#' @return \item{water_temp_liquid_height}{데이터프레임}
#' \describe{
#'   \item{\code{물온도}}{double 물의 온도, 단위: 섭씨}
#'   \item{\code{식초기둥높이}}{double 물의 온도에 따른 식초기둥 높이}
#'   \item{\code{우유기둥높이}}{double 물의 온도에 따른 우유기둥 높이}
#'   \item{\code{유리세정제기둥높이}}{double 물의 온도에 따른 유리세정제기둥 높이}
#'}
#' @details  초등과학 5-2 교과서에 수록된 물의 온도에 따른 식초기둥, 우유기둥, 유리세정제기둥 높이 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"water_temp_liquid_height"

#' search_result : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 탐구결과 데이터
#'
#'
#' @format 변수 6개와 6행을 갖는 티블 데이터프레임:
#' @aliases 탐구결과
#' @docType data
#' @return \item{search_result}{데이터프레임}
#' \describe{
#'   \item{\code{구분}}{character 경과된 날짜, 단위: 일}
#'   \item{\code{소금0g}}{double 소금이 0g일 때 경과된 날짜에 따른 데이터}
#'   \item{\code{소금10g}}{double 소금이 10g일 때 경과된 날짜에 따른 데이터}
#'   \item{\code{소금20g}}{double 소금이 20g일 때 경과된 날짜에 따른 데이터}
#'   \item{\code{소금30g}}{double 소금이 30g일 때 경과된 날짜에 따른 데이터}
#'   \item{\code{소금40g}}{double 소금이 40g일 때 경과된 날짜에 따른 데이터}
#'}
#' @details  초등과학 5-2 교과서에 수록된 경과된 날짜와 소금의 양에 따른 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"search_result"

#' planet_distance : 초등과학 5-2
#'
#' 초등과학 5-2 교과서에 수록된 태양계에서 행성까지의 상대적 거리 데이터
#'
#'
#' @format 변수 2개와 8행을 갖는 티블 데이터프레임:
#' @aliases 행성의 상대적 거리
#' @docType data
#' @return \item{planet_distance}{데이터프레임}
#' \describe{
#'   \item{\code{명칭}}{character 태양계 존재하는 행성 이름}
#'   \item{\code{거리}}{double 지구를 1로 뒀을 때 행성까지의 거리}
#'}
#' @details  초등과학 5-2 교과서에 수록된 지구를 1로 뒀을 때 태양으로부터 떨어진 행성의 거리 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"planet_distance"

#' gas_in_air : 초등과학 6-2
#'
#' 초등과학 6-2 교과서에 수록된 공기 중에 포함된 여러가지 기체 데이터
#'
#'
#' @format 변수 2개와 5행을 갖는 티블 데이터프레임:
#' @aliases 공기 중에 포함된 여러가지 기체
#' @docType data
#' @return \item{gas_in_air}{데이터프레임}
#' \describe{
#'   \item{\code{구분}}{character 공기 중에 포함된 기체의 종류}
#'   \item{\code{함유량}}{double 공기 중에 포함된 양, 단위: %}
#'}
#' @details  초등과학 6-2 교과서에 수록된 공기 중에 포함된 기체의 함유량 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"gas_in_air"

#' CO2_emissions : 초등과학 6-2
#'
#' 2009개정 초등과학 6-2 교과서에 수록된 국가별 이산화탄소 배출량 데이터
#'
#'
#' @format 변수 4개와 10행을 갖는 티블 데이터프레임:
#' @aliases 국가별 이산화탄소 배출량
#' @docType data
#' @return \item{CO2_emissions}{데이터프레임}
#' \describe{
#'   \item{\code{국가}}{character 대한민국, 중국, 미국 등 10개 국가의 이름}
#'   \item{\code{이산화탄소배출량}}{double 국가별 이산화탄소 배출량}
#'   \item{\code{순위}}{double 국가별 순위}
#'   \item{\code{1인당배출량}}{double 국가별 1인당 이산화탄소 배출량}
#'}
#' @details  초등과학 6-2 교과서에 수록된 국가별 이산화탄소 배출량, 순위, 1인당 이산화탄소 배출량 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"CO2_emissions"

#' ice_melt_color : 초등과학 6-2
#'
#' 초등과학 6-2 교과서에 수록된 색소의 색깔에 따라 얼음이 녹은양 데이터
#'
#'
#' @format 변수 2개와 8행을 갖는 티블 데이터프레임:
#' @aliases 색소의 색깔에 따라 얼음이 녹은양
#' @docType data
#' @return \item{ice_melt_color}{데이터프레임}
#' \describe{
#'   \item{\code{얼음색깔}}{character 얼음의 색깔}
#'   \item{\code{녹은양}}{double 일정 시간 후 얼음이 녹은양}
#'}
#' @details  초등과학 6-2 교과서에 수록된 얼음에 포함된 색소의 색깔에 따른 얼음의 녹은양 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"ice_melt_color"

#' seoul_daegu_temp : 초등과학 6-2
#'
#' 초등과학 6-2 교과서에 수록된 서울과 대구의 기온변화 데이터
#'
#'
#' @format 변수 3개와 24행을 갖는 티블 데이터프레임:
#' @aliases 서울과 대구의 기온변화
#' @docType data
#' @return \item{seoul_daegu_temp}{데이터프레임}
#' \describe{
#'   \item{\code{시각}}{character 01시부터 24시까지 매시 정각}
#'   \item{\code{서울}}{double 매시 정각 서울의 기온, 단위: 섭씨}
#'   \item{\code{대구}}{double 매시 정각 대구의 기온, 단위: 섭씨}
#'}
#' @details  초등과학 6-2 교과서에 수록된 하루동안 매시 정각에 측정된 서울과 대구의 기온 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"seoul_daegu_temp"

#' global_warming_gas : 초등과학 6-2
#'
#' 초등과학 6-2 교과서에 수록된 지구온난화의 원인 기체 데이터
#'
#'
#' @format 변수 2개와 6행을 갖는 티블 데이터프레임:
#' @aliases 지구온난화의 원인 기체
#' @docType data
#' @return \item{global_warming_gas}{데이터프레임}
#' \describe{
#'   \item{\code{구분}}{character 지구온난화의 원인이 되는 기체의 종류}
#'   \item{\code{함유량}}{double 지구온난화에 영향을 주는 정도, 단위: %}
#'}
#' @details  초등과학 6-2 교과서에 수록된 지구온난화의 원인 기체의 영향 정도 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"global_warming_gas"

#' ground_water_temp : 초등과학 6-2
#'
#' 초등과학 6-2 교과서에 수록된 지면과 수면의 온도 차이 데이터
#'
#'
#' @format 변수 2개와 6행을 갖는 티블 데이터프레임:
#' @aliases 지면과 수면의 온도 차이
#' @docType data
#' @return \item{ground_water_temp}{데이터프레임}
#' \describe{
#'   \item{\code{시각}}{double 08시부터 다음날 07시까지 매시 정각}
#'   \item{\code{지면온도}}{double 매시 정각 지면의 온도, 단위: 섭씨}
#'   \item{\code{수면온도}}{double 매시 정각 수면의 온도, 단위: 섭씨}
#'}
#' @details  초등과학 6-2 교과서에 수록된 하루동안 매시 정각에 측정된 지면과 수면의 온도 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"ground_water_temp"

#' population_age : 초등사회 4-2
#'
#' 초등사회 4-2 교과서에 수록된 연령별 인구 구성비 변화 데이터
#'
#'
#' @format 변수 4개와 9행을 갖는 티블 데이터프레임:
#' @aliases 연령별 인구 구성비
#' @docType data
#' @return \item{population_age}{데이터프레임}
#' \describe{
#'   \item{\code{연도}}{double 1970년부터 2050년까지 10년 주기, 단위: 년}
#'   \item{\code{0~14세}}{double 0~14세가 차지하는 인구 구성 비율, 단위: %}
#'   \item{\code{15~64세}}{double 15~64세가 차지하는 인구 구성 비율, 단위: %}
#'   \item{\code{65세이상}}{double 65세 이상이 차지하는 인구 구성 비율도, 단위: %}
#'}
#' @details  초등사회 4-2 교과서에 수록된 1970년부터 2050년까지 세 그룹으로 나눈 연령별 인구 구성비 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"population_age"

#' urbanization : 초등사회 5-2
#'
#' 초등사회 5-2 교과서에 수록된 국가별 도시화율 변화 데이터
#'
#'
#' @format 변수 5개와 8행을 갖는 티블 데이터프레임:
#' @aliases 국가별 도시화율
#' @docType data
#' @return \item{urbanization}{데이터프레임}
#' \describe{
#'   \item{\code{년도}}{double 1985년부터 2015년까지 5년 주기, 단위: 년}
#'   \item{\code{한국}}{double 한국의 도시화율, 단위: %}
#'   \item{\code{일본}}{double 일본의 도시화율, 단위: %}
#'   \item{\code{중국}}{double 중국의 도시화율, 단위: %}
#'   \item{\code{미국}}{double 미국의 도시화율, 단위: %}
#'}
#' @details  초등사회 5-2 교과서에 수록된 1985년부터 2015년까지 한국, 일본, 중국, 미국의 도시화율 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"urbanization"

#' export_amount : 초등사회 5-2
#'
#' 초등사회 5-2 교과서에 수록된 대한민국 수출액 데이터
#'
#'
#' @format 변수 2개와 11행을 갖는 티블 데이터프레임:
#' @aliases 대한민국 수출액
#' @docType data
#' @return \item{export_amount}{데이터프레임}
#' \describe{
#'   \item{\code{연도}}{double 1960년부터 2010년까지 5년 주기, 단위: 년}
#'   \item{\code{수출액}}{double 대한민국이 해외에 수출한 금액, 단위: 억 달러}
#'}
#' @details  초등사회 5-2 교과서에 수록된 1960년부터 2010년까지 대한민국의 해외 수출액 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"export_amount"

#' rice_consumption_person : 초등사회 5-2
#'
#' 초등사회 5-2 교과서에 수록된 일제시대 1인당 쌀 소비량 데이터
#'
#'
#' @format 변수 2개와 6행을 갖는 티블 데이터프레임:
#' @aliases 일제시대 1인당 쌀 소비량
#' @docType data
#' @return \item{rice_consumption_person}{데이터프레임}
#' \describe{
#'   \item{\code{연도}}{character 1920년부터 1930년까지 2년 주기}
#'   \item{\code{1인당소비량}}{double 1인당 소비한 쌀의 양}
#'}
#' @details  초등사회 5-2 교과서에 수록된 일제시대(1920~1930)에 1인당 소비한 쌀의 양 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"rice_consumption_person"

#' rice_produced_taken : 초등사회 5-2
#'
#' 초등사회 5-2 교과서에 수록된 일제시대 쌀 생산량과 수탈량 자료 데이터
#'
#'
#' @format 변수 3개와 6행을 갖는 티블 데이터프레임:
#' @aliases 일제시대 쌀 생산량과 수탈량
#' @docType data
#' @return \item{rice_produced_taken}{데이터프레임}
#' \describe{
#'   \item{\code{연도}}{character 1920년부터 1930년까지 2년 주기}
#'   \item{\code{쌀생산량}}{double 생산한 쌀의 양}
#'   \item{\code{쌀수탈량}}{double 일제가 수탈한 쌀의 양}
#'}
#' @details  초등사회 5-2 교과서에 수록된 일제시대(1920~1930)에 생산한 쌀의 양과 수탈당한 쌀의 양 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"rice_produced_taken"

#' high_speed_internet : 초등사회 5-2
#'
#' 초등사회 5-2 교과서에 수록된 초고속 인터넷 가입자수 데이터
#'
#'
#' @format 변수 2개와 10행을 갖는 티블 데이터프레임:
#' @aliases 초고속 인터넷 가입자수
#' @docType data
#' @return \item{high_speed_internet}{데이터프레임}
#' \describe{
#'   \item{\code{연도}}{character 1998년부터 2009년까지, 단위: 년}
#'   \item{\code{가입자수}}{double 초고속 인터넷에 가입한 사람의 수, 단위: 명}
#'}
#' @details  초등사회 5-2 교과서에 수록된 1998년부터 2009년까지 초고속 인터넷에 가입한 사람의 수 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"high_speed_internet"

#' privacy_infringement : 초등사회 6-2
#'
#' 초등사회 6-2 교과서에 수록된 개인정보침해 신고건수 데이터
#'
#'
#' @format 변수 2개와 5행을 갖는 티블 데이터프레임:
#' @aliases 개인정보침해 신고건수
#' @docType data
#' @return \item{privacy_infringement}{데이터프레임}
#' \describe{
#'   \item{\code{년도}}{character 2004년부터 2008년까지, 단위: 년}
#'   \item{\code{건수}}{double 개인정보침해 신고가 접수된 건수, 단위: 건}
#'}
#' @details  초등사회 6-2 교과서에 수록된 2004년부터 2008년까지 개인정보침해 신고가 접수된 건수 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"privacy_infringement"

#' rice_consumption_world : 초등사회 6-2
#'
#' 초등사회 6-2 교과서에 수록된 쌀 소비량 국제 비교 데이터
#'
#'
#' @format 변수 3개와 3행을 갖는 티블 데이터프레임:
#' @aliases 쌀 소비량 국제 비교
#' @docType data
#' @return \item{rice_consumption_world}{데이터프레임}
#' \describe{
#'   \item{\code{국가}}{character 국가의 이름: 대한민국, 일본, 타이완}
#'   \item{\code{1999}}{double 1999년의 쌀 소비량}
#'   \item{\code{2008}}{double 2008년의 쌀 소비량}
#'}
#' @details  초등사회 6-2 교과서에 수록된 1999년과 2008년 대한민국, 일본, 타이완의 쌀 소비량 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"rice_consumption_world"

#' agro_fishery_in_out : 초등사회 6-2
#'
#' 초등사회 6-2 교과서에 수록된 우리나라 농수산물의 수입과 수출 현황 데이터
#'
#'
#' @format 변수 3개와 5행을 갖는 티블 데이터프레임:
#' @aliases 우리나라 농수산물의 수입과 수출 현황
#' @docType data
#' @return \item{agro_fishery_in_out}{데이터프레임}
#' \describe{
#'   \item{\code{년도}}{character 2005년부터 2009년까지, 단위: 년}
#'   \item{\code{수입액}}{double 농수산물을 수입한 금액}
#'   \item{\code{수출액}}{double 농수산물을 수출한 금액}
#'}
#' @details  초등사회 6-2 교과서에 수록된 2005년부터 2009년까지 농수산물을 수입 및 수출한 금액 데이터
#' @source \url{http://estat.me/estat/eStat/}
#' @keywords datasets
"agro_fishery_in_out"
