```{r}
pacotes <- c("stargazer", "readxl", "tidyverse", "GGally", "ggplot2", "car")
for (pacote in pacotes) {
  if (!requireNamespace(pacote, quietly = TRUE)) {
    install.packages(pacote)
  }
  library(pacote, character.only = TRUE)
}
```
