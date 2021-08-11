# 0. 환경설정 -----
library(tidyverse)
# fs::dir_create("inst/extdata")

# 1. 초중등 교과서 데이터셋 ------
## 초등과학3-2그림자길이(136쪽).csv

shadow_length_raw <- readr::read_csv("inst/extdata/초등과학3-2그림자길이(136쪽).csv")

shadow_length <- shadow_length_raw %>%
    set_names(c("각도", "길이"))

## 초등과학3-2그림자길이(136쪽).csv

sea_pollution_raw <- readr::read_csv("inst/extdata/초등과학3-2우리나라해역오염실태자료(104쪽).csv")

sea_pollution <- sea_pollution_raw %>%
    set_names(c("연도", "건수", "유출량"))

## 초등과학5-2각행성의반지름(141쪽).csv

planet_radius_raw <- readr::read_csv("inst/extdata/초등과학5-2각행성의반지름(141쪽).csv")

planet_radius <- sea_pollution_raw %>%
    set_names(c("행성이름", "반지름"))

# 2. 데이터셋 팩키지 추가 ------

usethis::use_data(shadow_length, overwrite = TRUE)
usethis::use_data(sea_pollution, overwrite = TRUE)
usethis::use_data(planet_radius, overwrite = TRUE)

