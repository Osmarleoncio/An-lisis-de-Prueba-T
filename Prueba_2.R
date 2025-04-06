

# Datos
antes <- c(7, 6, 5, 6, 7)
despues <- c(8, 7, 8, 8, 9)

# Boxplot
boxplot(antes, despues, names=c("Antes", "Después"))
medias <- c(mean(antes), mean(despues))
points(1:2, medias, pch=18, col="red")

# Q-Q plot
par(mfrow = c(1, 2))
qqnorm(antes, main = "QQ Antes")
qqline(antes)
qqnorm(despues, main = "QQ Después")
qqline(despues)

# Prueba t pareada
t.test(antes, despues, paired = TRUE)