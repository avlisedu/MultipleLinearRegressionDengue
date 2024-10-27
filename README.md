<<<<<<< HEAD
```{r}
pacotes <- c("stargazer", "readxl", "tidyverse", "GGally", "ggplot2", "car")
for (pacote in pacotes) {
  if (!requireNamespace(pacote, quietly = TRUE)) {
    install.packages(pacote)
  }
  library(pacote, character.only = TRUE)
}
```
=======
<h1>Análise da Relação entre Resíduos Sólidos, Saneamento Básico, Renda e Casos de Dengue no Brasil</h1>

<p>No Brasil, a dengue, transmitida pelo vetor <em>Aedes aegypti</em>, é um grave problema de saúde pública. A urbanização desordenada, a gestão ineficiente de resíduos sólidos e a falta de saneamento básico agravam a situação, criando ambientes propícios para a reprodução do mosquito.</p>

<p>Esta pesquisa analisa a relação entre resíduos sólidos, saneamento básico, renda e casos de dengue, utilizando <strong>Regressão Linear Múltipla</strong> para identificar os principais fatores que influenciam a incidência da doença. No cenário atual, de acordo com o Ministério da Saúde, a situação epidemiológica do Brasil em 2024 é de:</p>

<ul>
    <li><strong>2,6 milhões de casos prováveis de dengue</strong>;</li>
    <li><strong>991 óbitos</strong> confirmados pela doença;</li>
    <li><strong>1,4 mil óbitos em investigação</strong>.</li>
</ul>

<p>Até o momento, <strong>11 estados</strong> e <strong>465 municípios</strong> decretaram emergência. Desta forma, a presente pesquisa pretende contribuir tanto no cenário acadêmico quanto para a sociedade, esclarecendo quais variáveis contribuem mais para o aumento dos casos de dengue, a partir de dados de resíduos sólidos, saneamento básico e renda.</p>

<h2>Metodologia</h2>

<p>Foi aplicada a <strong>Regressão Linear Múltipla</strong> como técnica para investigar as relações entre resíduos sólidos, saneamento e renda com os casos de dengue no contexto nacional. A regressão é uma ferramenta estatística poderosa para prever a variável dependente através de uma ou mais variáveis independentes. Além disso, essa técnica permite obter insights sobre o problema em estudo.</p>

<h2>Contribuições e Resultados</h2>

<p>O presente trabalho trouxe contribuições claras ao tratar dos casos de dengue e explorar como outros fatores podem contribuir para o aumento desses casos. A pesquisa evidenciou que:</p>

<ul>
    <li>Os casos de dengue são influenciados por <strong>resíduos sólidos</strong> e <strong>saneamento básico</strong>.</li>
    <li>A precariedade no acesso a esgoto sanitário afeta especialmente as <strong>populações mais carentes</strong>, gerando maiores transtornos.</li>
    <li>A falta de coleta e o acúmulo de lixo em locais inadequados aumentam os casos de dengue.</li>
</ul>

<h2>Considerações Finais</h2>

<p>Medidas são necessárias para atenuar os casos de dengue na população brasileira. Cabe aos gestores municipais investir em serviços básicos para os cidadãos, promovendo:</p>

<ul>
    <li>Acesso contínuo à <strong>coleta de lixo</strong> para reduzir o acúmulo;</li>
    <li>Investimentos em <strong>saneamento básico</strong>.</li>
</ul>

<p>Essas ações são essenciais para o combate à dengue e para a melhoria da saúde pública no Brasil.</p>


>>>>>>> 53c28625a7fd0409358d46cb7be3061a83bc32c7
