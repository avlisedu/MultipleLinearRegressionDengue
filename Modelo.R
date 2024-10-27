########## INFO. DA PESQUISA ########## 
# UNIVERSIDADE FEDERAL DE PERNAMBUCO
# DEPARTAMENTO DE ENGENHARIA DE PRODUÇÃO - DEP
# PROGRAMA DE PÓS-GRADUAÇÃO EM ENGENHARIA DE PRODUÇÃO - PPGEP
# Discente: Eduardo da Silva
# Orientadora: Profa. Maísa Mendonça Silva


# Carregar os pacotes necessários
pacotes <- c("stargazer", "readxl", "tidyverse", "GGally", "ggplot2", "car")
for (pacote in pacotes) {
  if (!requireNamespace(pacote, quietly = TRUE)) {
    install.packages(pacote)
  }
  library(pacote, character.only = TRUE)
}

# Carregamento dos dados
setwd("diretorio")
dados <- read_excel("Dados.xlsx", sheet = "bd")
dados$Dengue <- log(dados$Dengue + 1)
summary(dados)

# Modelo
modelo <- lm(Dengue ~ AcessoEsgoto + AcessoAgua + AcessoColeta + Renda, data = dados)
summary(modelo)
vif(modelo) #Não há multicolinearidade

# Verificação da normalidade com o teste de Shapiro-Wilk e QQ plot
shapiro_result <- shapiro.test(residuals(modelo))
p_value <- shapiro_result$p.value

ggplot(data = data.frame(residuals = residuals(modelo)), aes(sample = residuals)) +
  stat_qq(color = "gray30", size = 1.5) +  # Pontos discretos em cinza
  stat_qq_line(color = "gray50", size = 0.8) +  # Linha de referência mais sutil
  labs(title = "QQ Plot dos Resíduos do Modelo", x = "Quantis Teóricos", y = "Quantis dos Resíduos") +
  annotate("text", x = -Inf, y = Inf, hjust = -0.1, vjust = 1.5,
           label = paste("Shapiro-Wilk p-value:", round(p_value, 4)),
           size = 4, color = "black", fontface = "italic") +  # Valor p discreto no canto superior
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(hjust = 0.5),  # Título centralizado
    panel.grid = element_blank()  # Sem grades para um visual mais limpo
  )

# Matriz de correlação
dados_numericos <- dados %>% 
  select(Dengue, AcessoEsgoto, AcessoAgua, AcessoColeta, Renda)
ggpairs(dados_numericos)

# Exportar os resultados
#stargazer(modelo, type = "html", title = "Tabela 4 - Resultados",
#          out = "modelo.html")

#Metricas de Avaliacao
residuos <- residuals(modelo)
# Calcular o RSE
RSE <- sqrt(sum(residuos^2) / (length(residuos) - length(coef(modelo))))
cat("Erro Padrão Residual (RSE):", RSE, "\n")
# Calcular o MAE
MAE <- mean(abs(residuos))
cat("Erro Médio Absoluto (MAE):", MAE, "\n")
# Calcular o MSE
MSE <- mean(residuos^2)
cat("Erro Quadrático Médio (MSE):", MSE, "\n")
# Calcular o RMSE
RMSE <- sqrt(MSE)
cat("Raiz do Erro Quadrático Médio (RMSE):", RMSE, "\n")