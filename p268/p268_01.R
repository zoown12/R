#시험 문제1 한국말을 사용->(어떤 패키지를 설치 해야될까)
#library(KoNLp)
#시험문제2 세가지 단계
useNIADic() 
library(KoNLP) #패키지 가져오기
extractNoun("나는 지금 R을 공부하고 있다.")
#시험문제3
.libPaths() #위치찾기

extractNoun("대한민국의영토는 한반도와 그 부속도서로 한다")
extractNoun("2020년 9월 3일 현재방탄소년단(BTS)이 미국 빌보드 메인 싱글 차트1위에 오른 곡 '다이너마이트'(Dynamite)로 기네스 세계 기록 3건을 추가했다.")