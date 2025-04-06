# Datos
equipo_a <- c(2, 3, 1, 4, 2, 3, 2, 1, 3, 2)
equipo_b <- c(3, 2, 1, 3, 2, 2, 4, 2, 3, 1)

# Boxplot
boxplot(equipo_a, equipo_b, names=c("Equipo A", "Equipo B"))
medias <- c(mean(equipo_a), mean(equipo_b))
points(1:2, medias, pch=18, col="red")


# Q-Q plot
par(mfrow = c(1, 2))
qqnorm(equipo_a, main = "QQ Equipo A")
qqline(equipo_a)
qqnorm(equipo_b, main = "QQ Equipo B")
qqline(equipo_b)

# Prueba t para muestras independientes
t.test(equipo_a, equipo_b, var.equal = TRUE)
