veri <- read.table(file="C:/Users/sudes/Desktop/data.txt", header = T)
split.screen(c(2,2))

a <- veri[,1]
b <- veri[,2]

screen(1)
par(mar=c(4,4,2,1))

plot(a,b,xlab="Years",ylab="Temperature",main="Data-Time Series and Moving Average
     Graph",
     type="l",lwd="1", col="red",ylim=c(min(b),max(b)),xlim=c(min(a),max(a)))

moving_average <- function(x, n = 5) {             
  stats::filter(x, rep(1 / n, n), sides = 2)
}

my_moving_average <- moving_average(b)  

lines(min(a):max(a),my_moving_average, type="l",col="black",lwd="2")

screen(2)
par(mar=c(4,4,2,1))

anomali <- b-mean(b)

plot(a,anomali,ylab="Anomaly",xlab="Years",main="Anomaly Graph",lwd=2,type="l", 
     col="red",ylim=c(min(b),max(b)),xlim=c(min(a),max(a)) )

abline(h=0, col="black",lwd=1.5)
abline(h=-sd(b), col="orange", lwd=1.5)
abline(h=sd(b), col="blue", lwd =1.5)

screen(3)
par(mar=c(4,4,2,1))

k <- rev(sort(a))
l <- rev(sort(b))

plot(k,l,xlab="Years",ylab="Temperature",main="Ranking Graph",
     type="l",lwd="2", col="red",ylim=c(min(b),max(b)),xlim=c(min(a),max(a)))

abline(v=quantile(a, c(0.9), type=1), col="black", lwd=2.5)

screen(4)
par(mar=c(4,4,2,1))

hist(b, las=1, prob=T,main="Histogram-Scatter Graph", xlab="Values",ylab="Density",
     col=heat.colors(10))

lines(density(b),lwd=3, col="black")

