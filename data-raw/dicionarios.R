ipca <- tibble::tribble(
  ~ano, ~ipca,
  2012, 5.84,
  2013, 5.91,
  2014, 6.41,
  2015, 10.67,
  2016, 6.29,
  2017, 2.95,
  2018, 3.75,
  2019, 4.31,
  2020, 0
) %>%
  dplyr::mutate(
    ano = as.integer(ano),
    indice = 1 + ipca/100,
    indice_acum = cumprod(indice),
    deflator = indice_acum / last(indice_acum)
  ) %>%
  dplyr::select(ano, ipca, deflator)

cor <- tibble::tribble(
  ~cor, ~cor_txt,
  "1", "Branca",
  "2", "Preta",
  "3", "Amarela",
  "4", "Parda",
  "5", "Indígena",
  "9", "Ignorado"
)

vinculo <- tibble::tribble(
  ~vinculo, ~vinculo_txt,
  "01",	"Empregado no setor privado com carteira de trabalho assinada",
  "02",	"Empregado no setor privado sem carteira de trabalho assinada",
  "03",	"Trabalhador doméstico com carteira de trabalho assinada",
  "04",	"Trabalhador doméstico sem carteira de trabalho assinada",
  "05",	"Empregado no setor público com carteira de trabalho assinada",
  "06",	"Empregado no setor público sem carteira de trabalho assinada",
  "07",	"Militar e servidor estatutário",
  "08",	"Empregador",
  "09",	"Conta-própria",
  "10",	"Trabalhador familiar auxiliar",
  "NA", "Não aplicável"
)

instrucao <- tibble::tribble(
  ~instrucao, ~instrucao_txt,
  1, "Sem instrução e menos de 1 ano de estudo",
  2, "Fundamental incompleto ou equivalente",
  3, "Fundamental completo ou equivalente",
  4, "Médio incompleto ou equivalente",
  5, "Médio completo ou equivalente",
  6, "Superior incompleto ou equivalente",
  7, "Superior completo ",
  NA, "Não aplicável"
)

uf <- tibble::tribble(
  ~uf, ~uf_txt,
  11L,	"Rondônia",
  12L,	"Acre",
  13L,	"Amazonas",
  14L,	"Roraima",
  15L,	"Pará",
  16L,	"Amapá",
  17L,	"Tocantins",
  21L,	"Maranhão",
  22L,	"Piauí",
  23L,	"Ceará",
  24L,	"Rio Grande do Norte",
  25L,	"Paraíba",
  26L,	"Pernambuco",
  27L,	"Alagoas",
  28L,	"Sergipe",
  29L,	"Bahia",
  31L,	"Minas Gerais",
  32L,	"Espírito Santo",
  33L,	"Rio de Janeiro",
  35L,	"São Paulo",
  41L,	"Paraná",
  42L,	"Santa Catarina",
  43L,	"Rio Grande do Sul",
  50L,	"Mato Grosso do Sul",
  51L,	"Mato Grosso",
  52L,	"Goiás",
  53L,	"Distrito Federal"
)

usethis::use_data(ipca, vinculo, cor, instrucao, uf, overwrite = TRUE)
