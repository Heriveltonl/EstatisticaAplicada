load("salarios.RData")
library(ggplot2)

# Gráfico boxplot
ggplot(data=salarios, aes(x="", y=age)) + 
  geom_boxplot() + 
  labs(title="Boxplot - Idade da Esposa")

ggplot(data=salarios, aes(x="", y=husage)) + 
  geom_boxplot() + 
  labs(title="Boxplot - Idade do Marido")

# Gráfico histograma
ggplot(data=salarios, aes(x=age)) + 
  geom_histogram(binwidth=5, fill="blue", color="black") + 
  labs(title="Histograma - Idade da Esposa")

ggplot(data=salarios, aes(x=husage)) + 
  geom_histogram(binwidth=5, fill="blue", color="black") + 
  labs(title="Histograma - Idade do Marido")
tabela_idade_esposa <- table(salarios$age)
tabela_idade_marido <- table(salarios$husage)

tabela_idade_esposa
tabela_idade_marido
# Medidas de posição
media_idade_esposa <- mean(salarios$age)
mediana_idade_esposa <- median(salarios$age)
moda_idade_esposa <- names(sort(-table(salarios$age)))[1]

media_idade_marido <- mean(salarios$husage)
mediana_idade_marido <- median(salarios$husage)
moda_idade_marido <- names(sort(-table(salarios$husage)))[1]

# Medidas de dispersão
var_idade_esposa <- var(salarios$age)
desvio_padrao_idade_esposa <- sd(salarios$age)
coeficiente_variacao_idade_esposa <- desvio_padrao_idade_esposa / media_idade_esposa * 100

var_idade_marido <- var(salarios$husage)
desvio_padrao_idade_marido <- sd(salarios$husage)
coeficiente_variacao_idade_marido <- desvio_padrao_idade_marido / media_idade_marido * 100

media_idade_esposa
mediana_idade_esposa
moda_idade_esposa
var_idade_esposa
desvio_padrao_idade_esposa
coeficiente_variacao_idade_esposa

media_idade_marido
mediana_idade_marido
moda_idade_marido
var_idade_marido
desvio_padrao_idade_marido
coeficiente_variacao_idade_marido

t.test(salarios$age, salarios$husage)
wilcox.test(salarios$age, salarios$husage)


