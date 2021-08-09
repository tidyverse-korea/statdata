#' 소스 데이터 파일 가져오기
#'
#' 초중등 통계 데이터셋을 만든 데이터 파일을 가져온다.
#' 메뉴에서 해당 파일 이름을 선택하면, 지정한 경로에 파일이 복사된다.
#'
#' @param dest_dir character. 파일을 가져올 디렉토리 경로.
#' 기본값은 "."으로 현재 디렉토리
#' @export get_rawdata
#'
#' @aliases 데이터파일가져오기
#' @examples
#' \dontrun{
#' # 현재 작업 경로에 데이터 파일을 복사한다.
#' get_rawdata()
#'
#' # c:/temp에 선택한 데이터 파일을 복사한다.
#' get_rawdata("c:/temp")
#' }
#'
#' @importFrom utils menu unzip
get_rawdata <- function(dest_dir = ".") {
    pkg_resource = function(...) {
        system.file(..., package = "statdata")
    }

    zip_name <- pkg_resource("extdata/rawdata.zip")

    # fname <- c("초등과학3-2그림자길이(136쪽).csv",
    #            "초등과학3-2우리나라해역오염실태자료(104쪽).csv",
    #            "전체 파일",
    #            "취소하기")

    fname <- c("\ucd08\ub4f1\uacfc\ud5593-2\uadf8\ub9bc\uc790\uae38\uc774(136\ucabd).csv",
               "\ucd08\ub4f1\uacfc\ud5593-2\uc6b0\ub9ac\ub098\ub77c\ud574\uc5ed\uc624\uc5fc\uc2e4\ud0dc\uc790\ub8cc(104\ucabd).csv",
               "\uc804\uccb4 \ud30c\uc77c",
               "\ucde8\uc18c\ud558\uae30")

    # stringi::stri_escape_unicode("가져올 데이터 파일 선택하기")
    index_choiced <- utils::menu(fname, graphics = FALSE,
                                 title = "\uac00\uc838\uc62c \ub370\uc774\ud130 \ud30c\uc77c \uc120\ud0dd\ud558\uae30")

    if (index_choiced == 4)
        return()

    if (index_choiced == 3) {
        utils::unzip(zip_name, exdir = dest_dir)
    } else {
        utils::unzip(zip_name, files = fname[index_choiced], exdir = dest_dir)
    }
}

# macOS에서 사용하는 한글 인코딩은 Windows와 다르다. macOS에서 만든, 한글이 포함된 파일 이름은 맥에서는 정상적으로 보여도,
# 윈도우에서 자음과 모음이 분리되어 보인다. 이 경우에는 get_rawdata() 함수가 정상적으로 작동하지 않는다.
# 그래서 macOS에서 만든 파일 이름을 윈도우에서 사용할 수 있도록 인코딩해야 한다.
#
# convmv -f utf8 -t utf8 --nfc --notest 초등과학3-2그림자길이(136쪽).csv
# convmv -f utf8 -t utf8 --nfc --notest 초등과학3-2우리나라해역오염실태자료(104쪽).csv
#
# 인코딩한 후에는 rawdata.zip라는 이름으로 압축한다.




