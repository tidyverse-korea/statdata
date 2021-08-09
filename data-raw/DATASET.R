
# 1. 초중등 교과서 데이터셋 ------
library(tidyverse)

shadow_length <- read_csv("data-raw/초등과학3-2그림자길이(136쪽).csv")

shadow_length <- shadow_length %>%
    set_names(c("각도", "길이"))

# 2. 데이터셋 팩키지 추가 ------

usethis::use_data(shadow_length, overwrite = TRUE)
