#csv.data <- read.csv("./train.csv",header = TRUE, sep = ",")
#b.data = csv.data[0:62]
#b = b.data[24:62]
#cl = csv.data$y

n=nrow(b)
#���������� ���������� ��� ��������: 70%
n.train=floor(n*0.7)
#���������� ���������� ��� ������������: 30%
n.test=n-n.train
#������� ��������� ������� n.train ����������
idx.train=sample(1:n,n.train) #��������� ������ ��������
data.train=b[idx.train,]
#������� ���������� ���������� � �������� �������
idx.test=(1:n)[!(1:n %in% idx.train)]
data.test=b[idx.test,]
#�������� �������������
cl.train=cl[idx.train]

#mod=qda(data.train,cl.train)