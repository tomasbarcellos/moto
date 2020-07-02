moto1 <- readRDS("inst/ext/moto1.rds") %>%
  dplyr::select(ano, uf, sexo, idade, cor, vinculo = vinculo_primario,
         renda = rendimento_primario, jornada = jornada_principal,
         instrucao)

moto2 <- readRDS("inst/ext/moto2.rds") %>%
  dplyr::select(ano, uf, sexo, idade, cor, vinculo = vinculo_secundario,
         renda = rendimento_secundario, jornada = jornada_secundario,
         instrucao)

usethis::use_data(moto1, moto2, overwrite = TRUE)
