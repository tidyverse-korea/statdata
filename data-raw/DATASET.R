# 0. 환경설정 -----
library(tidyverse)
# fs::dir_create("inst/extdata")

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
    set_names(c("물의온도", "식초기둥높이", "우유기둥높이", "유리세정제기둥높이"))

## 초등과학5-2탐구결과(173쪽).csv

search_result_raw <- readr::read_csv("inst/extdata/초등과학5-2탐구결과(173쪽).csv")

search_result <- search_result_raw %>%
    set_names(c("소금0g", "소금10g", "소금20g", "소금30g", "소금40g"))

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

# 2. 데이터셋 팩키지 추가 ------

usethis::use_data(shadow_length, overwrite = TRUE)
usethis::use_data(sea_pollution, overwrite = TRUE)
usethis::use_data(planet_radius, overwrite = TRUE)
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
usethis::use_data(gender, overwrite = TRUE)


## 초등수학4-2거실의온도(익힘책116쪽).csv
temperature_floor_raw <- readr::read_csv("inst/extdata/초등수학4-2거실의온도(익힘책116쪽).csv")

temperature_floor_raw <- temperature_floor_raw %>%
    set_names(c("시각","온도"))

##초등수학4-2꽃나무의키(익힘책113쪽).csv
tall_flower_raw <- readr::read_csv("inst/extdata/초등수학4-2꽃나무의키(익힘책113쪽).csv")

tall_flower_raw <- tall_flower_raw %>%
    set_names(c("월","꽃나무의키(cm)"))

##초등수학4-2수면의높이(익힘책117쪽).csv
height_surface_of_the_water <- readr::read_csv("inst/extdata/초등수학4-2수면의높이(익힘책117쪽).csv")

height_surface_of_the_water <- height_surface_of_the_water %>%
    set_names(c("날짜","수면의높이"))

##초등수학4-2윗몸일으키기기록(익힘책115쪽).csv
record_sit_up_num <- readr::read_csv("inst/extdata/초등수학4-2윗몸일으키기기록(익힘책115쪽).csv")

record_sit_up_num <- record_sit_up_num %>%
    set_names(c("요일","횟수"))

##초등수학4-2좋아하는민속놀이(익힘책110쪽).csv
folk_play_prefernce <- readr::read_csv("inst/extdata/초등수학4-2좋아하는민속놀이(익힘책110쪽).csv")

folk_play_prefernce <- folk_play_prefernce %>%
    set_names(c("민속놀이종목","학생수"))

##초등수학4-2준성이의타자연습(익힘책125쪽).csv
typing_practice_junsung <- readr::read_csv("inst/extdata/초등수학4-2준성이의타자연습(익힘책125쪽).csv")

typing_practice_junsung <- typing_practice_junsung %>%
    set_names(c("주","타수"))

##초등수학4-2지역의월별강수량(익힘책114쪽).csv
monthly_precipitation <- readr::read_csv("inst/extdata/초등수학4-2지역의월별강수량(익힘책114쪽).csv")

monthly_precipitation <- monthly_precipitation %>%
    set_names(c("월","강수량"))

##초등수학4-2취미종목별참가학생수(익힘책111쪽).csv
hobby_joining_student <- readr::read_csv("inst/extdata/초등수학4-2취미종목별참가학생수(익힘책111쪽).csv")

hobby_joining_student <- hobby_joining_student %>%
    set_names(c("취미종목","학생수"))

##초등수학4-2코스모스키의변화(익힘책120쪽).csv
growth_tall_cosmos <- readr::read_csv("inst/extdata/초등수학4-2코스모스키의변화(익힘책120쪽).csv")

growth_tall_cosmos <- growth_tall_cosmos %>%
    set_names(c("요일","키"))

##초등수학4-2프로야구관중수(익힘책124쪽).csv
baseball_crowd_change <- readr::read_csv("inst/extdata/초등수학4-2프로야구관중수(익힘책124쪽).csv")

baseball_crowd_change <- baseball_crowd_change %>%
    set_names(c("월","관중수(만명)"))

##초등수학4-2하루중최고기온(익힘책116쪽).csv
daily_maximum_temp <- readr::read_csv("inst/extdata/초등수학4-2하루중최고기온(익힘책116쪽).csv")

daily_maximum_temp <- daily_maximum_temp %>%
    set_names(c("날짜","최고기온"))

##초등수학4-2하루중최저기온(익힘책118쪽).csv
daily_minimum_temp <- readr::read_csv("inst/extdata/초등수학4-2하루중최저기온(익힘책118쪽).csv")

daily_minimum_temp <- daily_minimum_temp %>%
    set_names(c("날짜","최고기온"))

##초등수학4-2학생들몸무게(익힘책94쪽).csv
student_weight <- readr::read_csv("inst/extdata/초등수학4-2학생들몸무게(익힘책94쪽).csv")

student_weight <- student_weight %>%
    set_names(c("이름","몸무게(kg)"))

##초등수학4-2학생들키(익힘책95쪽).csv
student_height <- readr::read_csv("inst/extdata/초등수학4-2학생들키(익힘책95쪽).csv")

student_height <- student_height %>%
    set_names(c("이름","키(cm)"))


# 2. 데이터셋 팩키지 추가 ------

usethis::use_data(temperature_floor_raw, overwrite = TRUE)
usethis::use_data(tall_flower_raw, overwrite = TRUE)
usethis::use_data(height_surface_of_the_water, overwrite = TRUE)
usethis::use_data(record_sit_up_num, overwrite = TRUE)
usethis::use_data(folk_play_prefernce, overwrite = TRUE)
usethis::use_data(typing_practice_junsung, overwrite = TRUE)
usethis::use_data(monthly_precipitation, overwrite = TRUE)
usethis::use_data(hobby_joining_student, overwrite = TRUE)
usethis::use_data(growth_tall_cosmos, overwrite = TRUE)
usethis::use_data(baseball_crowd_change, overwrite = TRUE)
usethis::use_data(daily_maximum_temp, overwrite = TRUE)
usethis::use_data(daily_minimum_temp, overwrite = TRUE)
usethis::use_data(student_weight, overwrite = TRUE)
usethis::use_data(student_height, overwrite = TRUE)
