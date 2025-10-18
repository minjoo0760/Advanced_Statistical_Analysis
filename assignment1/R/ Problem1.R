# 예제 데이터 생성
set.seed(1)
n = 200
x = seq(0, 1, length.out = n)
y = sin(2*pi*x) + rnorm(n, sd = 0.15)

# (a) data/ 경로에 csv로 저장
data1 <- data.frame(
  x = x,
  y = y)

getwd()
write.csv(data1, "./assignment1/data/problem1_data.csv")

# (b) 저장한 데이터 불러오고, ggplot2를 바탕으로 산점도와 회귀곡선 적합을시각화
#     (ggplot2의goem_smooth()에서 적절한 method 선택)
read.csv("./assignment1/data/problem1_data.csv")
