# 0. 환경설정 -----
library(tidyverse)
# fs::dir_create("inst/extdata")

# 0. 전체 데이터 -----

csv_filenames <- fs::dir_ls(path = "inst/extdata/", glob = "*.csv")

openstat_raw <- map(csv_filenames, read_csv)

openstat_tbl <- openstat_raw %>%
    enframe(name = "name", value = "content") %>%
    mutate(name = str_remove(name, pattern = "inst/extdata/"))

usethis::use_data(openstat_tbl, overwrite = TRUE)

# 1. 초중등 교과서 데이터셋 ------

## 025원시_성별.csv

gender_raw <- readr::read_csv("inst/extdata/025원시_성별.csv")

gender <- gender_raw %>%
    set_names("성별")

## 초등과학3-2그림자길이(136쪽).csv

shadow_length_raw <- readr::read_csv("inst/extdata/초등과학3-2그림자길이(136쪽).csv")

shadow_length <- shadow_length_raw %>%
    set_names(c("각도", "길이"))

## 초등과학3-2우리나라해역오염실태자료(104쪽).csv

sea_pollution_raw <- readr::read_csv("inst/extdata/초등과학3-2우리나라해역오염실태자료(104쪽).csv")

sea_pollution <- sea_pollution_raw %>%
    set_names(c("연도", "건수", "유출량"))

## 초등과학5-2각행성의반지름(141쪽).csv

planet_radius_raw <- readr::read_csv("inst/extdata/초등과학5-2각행성의반지름(141쪽).csv")

planet_radius <- planet_radius_raw %>%
    set_names(c("행성이름", "반지름"))

## 초등과학5-2거리-시간그래프(115쪽).csv

distance_time_graph_raw <- readr::read_csv("inst/extdata/초등과학5-2거리-시간그래프(115쪽).csv")

distance_time_graph <- distance_time_graph_raw %>%
    set_names(c("거리", "시간"))

## 초등과학5-2교통수단(107쪽).csv

transportation_raw <- readr::read_csv("inst/extdata/초등과학5-2교통수단(107쪽).csv")

transportation <- transportation_raw %>%
    set_names(c("교통수단", "이동거리"))

## 초등과학5-2달리기기록(105쪽).csv

running_record_raw <- readr::read_csv("inst/extdata/초등과학5-2달리기기록(105쪽).csv")

running_record <- running_record_raw %>%
    set_names(c("레인", "걸린시간"))

## 초등과학5-2물의온도와물기둥높이(19쪽).csv

water_temp_height_raw <- readr::read_csv("inst/extdata/초등과학5-2물의온도와물기둥높이(19쪽).csv")

water_temp_height <- water_temp_height_raw %>%
    set_names(c("물의온도", "물기둥높이1회", "물기둥높이2회", "물기둥높이3회"))

## 초등과학5-2물의온도와붕산녹는양(95쪽).csv

water_temp_boric_acid_raw <- readr::read_csv("inst/extdata/초등과학5-2물의온도와붕산녹는양(95쪽).csv")

water_temp_boric_acid <- water_temp_boric_acid_raw %>%
    set_names(c("물의온도", "붕산녹는양"))

## 초등과학5-2물의온도와액체기둥높이(21쪽).csv

water_temp_liquid_height_raw <- readr::read_csv("inst/extdata/초등과학5-2물의온도와액체기둥높이(21쪽).csv")

water_temp_liquid_height <- water_temp_liquid_height_raw %>%
    set_names(c("물온도", "식초기둥높이", "우유기둥높이", "유리세정제기둥높이"))

## 초등과학5-2탐구결과(173쪽).csv

search_result_raw <- readr::read_csv("inst/extdata/초등과학5-2탐구결과(173쪽).csv")

search_result <- search_result_raw %>%
    set_names(c("구분", "소금0g", "소금10g", "소금20g", "소금30g", "소금40g"))

## 초등과학5-2태양에서행성까지의상대적거리(143쪽).csv

planet_distance_raw <- readr::read_csv("inst/extdata/초등과학5-2태양에서행성까지의상대적거리(143쪽).csv")

planet_distance <- planet_distance_raw %>%
    set_names(c("명칭", "거리"))

## 초등과학6-2공기중에포함된여러가지기체(79쪽).csv

gas_in_air_raw <- readr::read_csv("inst/extdata/초등과학6-2공기중에포함된여러가지기체(79쪽).csv")

gas_in_air <- gas_in_air_raw %>%
    set_names(c("구분", "함유량"))

## 초등과학6-2국가별이산화탄소배출량(2009)(105쪽).csv

CO2_emissions_raw <- readr::read_csv("inst/extdata/초등과학6-2국가별이산화탄소배출량(2009)(105쪽).csv")

CO2_emissions <- CO2_emissions_raw %>%
    set_names(c("국가", "이산화탄소배출량", "순위", "1인당배출량"))

## 초등과학6-2색소의색깔에따라얼음이녹은양(168쪽).csv

ice_melt_color_raw <- readr::read_csv("inst/extdata/초등과학6-2색소의색깔에따라얼음이녹은양(168쪽).csv")

ice_melt_color <- ice_melt_color_raw %>%
    set_names(c("얼음색깔", "녹은양"))

## 초등과학6-2서울과대구의기온변화(44쪽).csv

seoul_daegu_temp_raw <- readr::read_csv("inst/extdata/초등과학6-2서울과대구의기온변화(44쪽).csv")

seoul_daegu_temp <- seoul_daegu_temp_raw %>%
    set_names(c("시각", "서울", "대구"))

## 초등과학6-2지구온난화의원인기체(84쪽).csv

global_warming_gas_raw <- readr::read_csv("inst/extdata/초등과학6-2지구온난화의원인기체(84쪽).csv")

global_warming_gas <- global_warming_gas_raw %>%
    set_names(c("구분", "함유량"))

## 초등과학6-2지면과수면의온도차이(33쪽).csv

ground_water_temp_raw <- readr::read_csv("inst/extdata/초등과학6-2지면과수면의온도차이(33쪽).csv")

ground_water_temp <- ground_water_temp_raw %>%
    set_names(c("시각", "지면온도", "수면온도"))

## 초등수학4-2거실의온도(익힘책116쪽).csv
livingroom_temps_raw <- readr::read_csv("inst/extdata/초등수학4-2거실의온도(익힘책116쪽).csv")

livingroom_temps <- livingroom_temps_raw %>%
    set_names(c("시각", "온도"))


## 초등수학4-2꽃나무의키(익힘책113쪽).csv
flower_tree_height_raw <- readr::read_csv("inst/extdata/초등수학4-2꽃나무의키(익힘책113쪽).csv")

flower_tree_height <- flower_tree_height_raw %>%
    set_names(c("월", "꽃나무키"))


## 초등수학4-2민수의몸무게(익힘책112쪽).csv
minsu_height_raw <- readr::read_csv("inst/extdata/초등수학4-2민수의몸무게(익힘책112쪽).csv")

minsu_height <- minsu_height_raw %>%
    set_names(c("학년", "몸무게"))


## 초등수학4-2수면의높이(익힘책117쪽).csv
water_height_raw <- readr::read_csv("inst/extdata/초등수학4-2수면의높이(익힘책117쪽).csv")

water_height <- water_height_raw %>%
    set_names(c("날짜", "수면의높이"))


## 초등수학4-2윗몸일으키기기록(익힘책115쪽).csv
situp_record_raw <- readr::read_csv("inst/extdata/초등수학4-2윗몸일으키기기록(익힘책115쪽).csv")

situp_record <- situp_record_raw %>%
    set_names(c("요일", "횟수"))


## 초등수학4-2좋아하는민속놀이(익힘책110쪽).csv
favorite_folk_game_raw <- readr::read_csv("inst/extdata/초등수학4-2좋아하는민속놀이(익힘책110쪽).csv")

favorite_folk_game <- favorite_folk_game_raw %>%
    set_names(c("민속놀이종목", "학생수"))


## 초등수학4-2준성이의타자연습(익힘책125쪽).csv
junseong_typing_practice_raw <- readr::read_csv("inst/extdata/초등수학4-2준성이의타자연습(익힘책125쪽).csv")

junseong_typing_practice <- junseong_typing_practice_raw %>%
    set_names(c("주", "타수"))


## 초등수학4-2지역의월별강수량(익힘책114쪽).csv
area_monthly_precipitation_raw <- readr::read_csv("inst/extdata/초등수학4-2지역의월별강수량(익힘책114쪽).csv")

area_monthly_precipitation <- area_monthly_precipitation_raw %>%
    set_names(c("월", "강수량"))


## 초등수학4-2취미종목별참가학생수(익힘책111쪽).csv
hobby_participating_num_raw <- readr::read_csv("inst/extdata/초등수학4-2취미종목별참가학생수(익힘책111쪽).csv")

hobby_participating_num <- hobby_participating_num_raw %>%
    set_names(c("취미종목", "학생수"))


## 초등수학4-2코스모스키의변화(익힘책120쪽).csv
cosmos_height_change_raw <- readr::read_csv("inst/extdata/초등수학4-2코스모스키의변화(익힘책120쪽).csv")

cosmos_height_change <- cosmos_height_change_raw %>%
    set_names(c("요일", "키"))


## 초등수학4-2프로야구관중수(익힘책124쪽).csv
baseball_spectators_num_raw <- readr::read_csv("inst/extdata/초등수학4-2프로야구관중수(익힘책124쪽).csv")

baseball_spectators_num <- baseball_spectators_num_raw %>%
    set_names(c("년", "관중수"))


## 초등수학4-2하루중최고기온(익힘책116쪽).csv
day_highest_temp_raw <- readr::read_csv("inst/extdata/초등수학4-2하루중최고기온(익힘책116쪽).csv")

day_highest_temp <- day_highest_temp_raw %>%
    set_names(c("날짜", "최고기온"))


## 초등수학4-2하루중최저기온(익힘책118쪽).csv
day_lowest_temp_raw <- readr::read_csv("inst/extdata/초등수학4-2하루중최저기온(익힘책118쪽).csv")

day_lowest_temp <- day_lowest_temp_raw %>%
    set_names(c("날짜", "최저기온"))


## 초등수학4-2학생들몸무게(익힘책94쪽).csv
students_weight_raw <- readr::read_csv("inst/extdata/초등수학4-2학생들몸무게(익힘책94쪽).csv")

students_weight <- students_weight_raw %>%
    set_names(c("이름", "몸무게"))


## 초등수학4-2학생들키(익힘책95쪽).csv
students_height_raw <- readr::read_csv("inst/extdata/초등수학4-2학생들키(익힘책95쪽).csv")

students_height <- students_height_raw %>%
    set_names(c("이름", "키"))


## 초등수학5-2국가별도시화율변화(익힘책120쪽).csv
country_urbanization_rate_raw <- readr::read_csv("inst/extdata/초등수학5-2국가별도시화율변화(익힘책120쪽).csv")

country_urbanization_rate <- country_urbanization_rate_raw %>%
    set_names(c("년도", "한국", "일본", "중국", "미국"))


## 초등수학5-2농사짓는가구수(익힘책102쪽).csv
farming_num_raw <- readr::read_csv("inst/extdata/초등수학5-2농사짓는가구수(익힘책102쪽).csv")

farming_num <- farming_num_raw %>%
    set_names(c("연도", "가구수"))


## 초등수학5-2시간별소금양에따른실험자료(익힘책173쪽).csv
expt_data_salt_hour_raw <- readr::read_csv("inst/extdata/초등수학5-2시간별소금양에따른실험자료(익힘책173쪽).csv")

expt_data_salt_hour <- expt_data_salt_hour_raw %>%
    set_names(c("구분", "소금0g", "소금10g", "소금20g", "소금30g", "소금40g"))


## 초등수학5-2신생아수(익힘책111쪽).csv
newborn_num_raw <- readr::read_csv("inst/extdata/초등수학5-2신생아수(익힘책111쪽).csv")

newborn_num <- newborn_num_raw %>%
    set_names(c("연도", "신생아수"))


## 초등수학5-2월별상담실이용자수(익힘책109쪽).csv
counseling_user_num_raw <- readr::read_csv("inst/extdata/초등수학5-2월별상담실이용자수(익힘책109쪽).csv")

counseling_user_num <- counseling_user_num_raw %>%
    set_names(c("월", "이용자"))


## 초등수학5-2제기차기횟수(익힘책105쪽).csv
kicks_num_raw <- readr::read_csv("inst/extdata/초등수학5-2제기차기횟수(익힘책105쪽).csv")

kicks_num <- kicks_num_raw %>%
    set_names("횟수")


## 초등수학5-2진욱이의단원평가점수(익힘책108쪽).csv
jinwook_unit_score_raw <- readr::read_csv("inst/extdata/초등수학5-2진욱이의단원평가점수(익힘책108쪽).csv")

jinwook_unit_score <- jinwook_unit_score_raw %>%
    set_names(c("단원", "점수"))


## 초등수학5-2학생들의수학점수(익힘책104쪽).csv
students_math_score_raw <- readr::read_csv("inst/extdata/초등수학5-2학생들의수학점수(익힘책104쪽).csv")

students_math_score <- students_math_score_raw %>%
    set_names(c("점수"))

## 초등사회4-2연령별인구구성비변화(116쪽).csv

population_age_raw <- readr::read_csv("inst/extdata/초등사회4-2연령별인구구성비변화(116쪽).csv")

population_age <- population_age_raw %>%
    set_names(c("연도", "0~14세", "15~64세", "65세이상"))

## 초등사회5-2국가별도시화율변화(120쪽).csv

urbanization_raw <- readr::read_csv("inst/extdata/초등사회5-2국가별도시화율변화(120쪽).csv")

urbanization <- urbanization_raw %>%
    set_names(c("년도", "한국", "일본", "중국", "미국"))

## 초등사회5-2대한민국수출액(119쪽).csv

export_amount_raw <- readr::read_csv("inst/extdata/초등사회5-2대한민국수출액(119쪽).csv")

export_amount <- export_amount_raw %>%
    set_names(c("연도", "수출액"))

## 초등사회5-2일제시대1인당쌀소비량(78쪽).csv

rice_consumption_person_raw <- readr::read_csv("inst/extdata/초등사회5-2일제시대1인당쌀소비량(78쪽).csv")

rice_consumption_person <- rice_consumption_person_raw %>%
    set_names(c("연도", "1인당소비량"))

## 초등사회5-2일제시대쌀생산량과수탈량자료(78쪽).csv

rice_produced_taken_raw <- readr::read_csv("inst/extdata/초등사회5-2일제시대쌀생산량과수탈량자료(78쪽).csv")

rice_produced_taken <- rice_produced_taken_raw %>%
    set_names(c("연도", "쌀생산량", "수탈량"))

## 초등사회5-2초고속인터넷가입자수(120쪽).csv

high_speed_internet_raw <- readr::read_csv("inst/extdata/초등사회5-2초고속인터넷가입자수(120쪽).csv")

high_speed_internet <- high_speed_internet_raw %>%
    set_names(c("연도", "가입자수"))

## 초등사회6-2개인정보침해신고건수(97쪽).csv

privacy_infringement_raw <- readr::read_csv("inst/extdata/초등사회6-2개인정보침해신고건수(97쪽).csv")

privacy_infringement <- privacy_infringement_raw %>%
    set_names(c("년도", "건수"))

## 초등사회6-2쌀소비량국제비교(83쪽).csv

rice_consumption_world_raw <- readr::read_csv("inst/extdata/초등사회6-2쌀소비량국제비교(83쪽).csv")

rice_consumption_world <- rice_consumption_world_raw %>%
    set_names(c("국가", "1999", "2008"))

## 초등사회6-2우리나라농수산물의수입과수출현황(105쪽).csv

agro_fishery_in_out_raw <- readr::read_csv("inst/extdata/초등사회6-2우리나라농수산물의수입과수출현황(105쪽).csv")

agro_fishery_in_out <- agro_fishery_in_out_raw %>%
    set_names(c("년도", "수입액", "수출액"))

# 2. 데이터셋 팩키지 추가 ------

usethis::use_data(population_age, overwrite = TRUE)
usethis::use_data(urbanization, overwrite = TRUE)
usethis::use_data(export_amount, overwrite = TRUE)
usethis::use_data(rice_consumption_person, overwrite = TRUE)
usethis::use_data(rice_produced_taken, overwrite = TRUE)
usethis::use_data(high_speed_internet, overwrite = TRUE)
usethis::use_data(privacy_infringement, overwrite = TRUE)
usethis::use_data(rice_consumption_world, overwrite = TRUE)
usethis::use_data(agro_fishery_in_out, overwrite = TRUE)

usethis::use_data(shadow_length, overwrite = TRUE)
usethis::use_data(sea_pollution, overwrite = TRUE)
usethis::use_data(planet_radius, overwrite = TRUE)
usethis::use_data(gender, overwrite = TRUE)
usethis::use_data(distance_time_graph, overwrite = TRUE)
usethis::use_data(transportation, overwrite = TRUE)
usethis::use_data(running_record, overwrite = TRUE)
usethis::use_data(water_temp_height, overwrite = TRUE)
usethis::use_data(water_temp_boric_acid, overwrite = TRUE)
usethis::use_data(water_temp_liquid_height, overwrite = TRUE)
usethis::use_data(search_result, overwrite = TRUE)
usethis::use_data(planet_distance, overwrite = TRUE)
usethis::use_data(gas_in_air, overwrite = TRUE)
usethis::use_data(CO2_emissions, overwrite = TRUE)
usethis::use_data(ice_melt_color, overwrite = TRUE)
usethis::use_data(seoul_daegu_temp, overwrite = TRUE)
usethis::use_data(global_warming_gas, overwrite = TRUE)
usethis::use_data(ground_water_temp, overwrite = TRUE)

usethis::use_data(livingroom_temps, overwrite = TRUE)
usethis::use_data(flower_tree_height, overwrite = TRUE)
usethis::use_data(minsu_height, overwrite = TRUE)
usethis::use_data(water_height, overwrite = TRUE)
usethis::use_data(situp_record, overwrite = TRUE)
usethis::use_data(favorite_folk_game, overwrite = TRUE)
usethis::use_data(junseong_typing_practice, overwrite = TRUE)
usethis::use_data(area_monthly_precipitation, overwrite = TRUE)
usethis::use_data(hobby_participating_num, overwrite = TRUE)
usethis::use_data(cosmos_height_change, overwrite = TRUE)
usethis::use_data(baseball_spectators_num, overwrite = TRUE)
usethis::use_data(day_highest_temp, overwrite = TRUE)
usethis::use_data(day_lowest_temp, overwrite = TRUE)
usethis::use_data(students_weight, overwrite = TRUE)
usethis::use_data(students_height, overwrite = TRUE)
usethis::use_data(country_urbanization_rate, overwrite = TRUE)
usethis::use_data(farming_num, overwrite = TRUE)
usethis::use_data(expt_data_salt_hour, overwrite = TRUE)
usethis::use_data(newborn_num, overwrite = TRUE)
usethis::use_data(counseling_user_num, overwrite = TRUE)
usethis::use_data(kicks_num, overwrite = TRUE)
usethis::use_data(jinwook_unit_score, overwrite = TRUE)
usethis::use_data(students_math_score, overwrite = TRUE)

usethis::use_data(gender, overwrite = TRUE)

