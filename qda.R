#csv.data <- read.csv("./train.csv",header = TRUE, sep = ",")
#b.data = csv.data[0:62]
#b = b.data[24:62]
#cl = csv.data$y

n=nrow(b)
#количество наблюдений для обучения: 70%
n.train=floor(n*0.7)
#количество наблюдений для тестирования: 30%
n.test=n-n.train
#выбрать случайным образом n.train наблюдений
idx.train=sample(1:n,n.train) #случайный выборк индексов
data.train=b[idx.train,]
#выбрать оставшиеся наблюдения в тестовую выборку
idx.test=(1:n)[!(1:n %in% idx.train)]
data.test=b[idx.test,]
#истинные классификации
cl.train=cl[idx.train]

#mod=qda(data.train,cl.train)