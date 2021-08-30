# 0. 환경설정 -----
library(tidyverse)
# fs::dir_create("inst/extdata")

# 1. 초중등 교과서 데이터셋 ------

temperature_floor_raw <- readr::read_csv("inst/extdata/초등수학4-2거실의온도(익힘책116쪽).csv")

temperature_floor_raw <- temperature_floor_raw %>%
    set_names(c("시각","온도"))

tall_flower_raw <- readr::read_csv("inst/extdata/초등수학4-2꽃나무의키(익힘책113쪽).csv")

tall_flower_raw <- tall_flower_raw %>%
    set_names(c("월","꽃나무의키(cm)"))

height_surface_of_the_water <- readr::read_csv("inst/extdata/초등수학4-2수면의높이(익힘책117쪽).csv")

height_surface_of_the_water <- height_surface_of_the_water %>%
    set_names(c("날짜","수면의높이"))

record_sit_up_num <- readr::read_csv("inst/extdata/초등수학4-2윗몸일으키기기록(익힘책115쪽).csv")

record_sit_up_num <- record_sit_up_num %>%
    set_names(c("요일","횟수"))

folk_play_prefernce <- readr::read_csv("inst/extdata/초등수학4-2좋아하는민속놀이(익힘책110쪽).csv")

folk_play_prefernce <- folk_play_prefernce %>%
    set_names(c("민속놀이종목","학생수"))

typing_practice_junsung <- readr::read_csv("inst/extdata/초등수학4-2준성이의타자연습(익힘책125쪽).csv")

typing_practice_junsung <- typing_practice_junsung %>%
    set_names(c("주","타수"))

temperature_floor_raw <- readr::read_csv("inst/extdata/")
temperature_floor_raw <- temperature_floor_raw %>%
    set_names(c("",""))

temperature_floor_raw <- readr::read_csv("inst/extdata/")
temperature_floor_raw <- temperature_floor_raw %>%
    set_names(c("",""))

temperature_floor_raw <- readr::read_csv("inst/extdata/")



# 2. 데이터셋 팩키지 추가 ------

usethis::use_data(shadow_length, overwrite = TRUE)


