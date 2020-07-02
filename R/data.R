#' Motoboys na PNAD contítnua
#'
#' @description
#' Esses dados perderam o vinculo com o desenho da amostra e
#' tem propósito puramente educacional.
#'
#' @description
#' Os dados de \code{moto1} se referem as estatísticas sobre vinculo principal
#' no mercado de trabalho enquanto \code{moto2} aos casos secundários.
#'
#' @name Dados
#' @rdname moto
#'
#' @format Uma tibble com 11.044 linhas e 8 variáveis (moto1)
#' ou uma tibble com 686 linhas e 8 variáveis (moto2):
#' \describe{
#' \item{ano}{Ano da PNAD. Todos os dados são da PNAD do primeiro trimestre.}
#' \item{uf}{Unidade da Federação. Para códigos ver \code{\link{uf}}.}
#' \item{sexo}{Sexo. 1 = homem, 2 = mulher.}
#' \item{idade}{Idade, em anos.}
#' \item{cor}{Cor. Para códigos ver \code{\link{cor}}.}
#' \item{vinculo}{Vínculo no mercado de trbaalho. Para códigos ver \code{\link{vinculo}}.}
#' \item{renda}{Renda, em reais correntes. Ver  \code{\link{ipca}} para deflacionar}
#' \item{jornada}{Jornada de trabalho semanal, em horas.}
#' \item{instrucao}{Instrução. Para códigos ver \code{\link{instrucao}}.}
#' }
#' @examples
#' head(moto1)
#' head(moto2)
"moto1"

#' @rdname moto
#' @format NULL
"moto2"

#' Dicionário de variáveis categóricas
#'
#' @description
#' Dicionários com par código/descrição.
#'
#' @name Dicionários
#' @rdname dicionarios
#' @format NULL
"vinculo"

#' @rdname dicionarios
#' @format NULL
"cor"

#' @rdname dicionarios
#' @format NULL
"instrucao"

#' @rdname dicionarios
#' @format NULL
"uf"

#' Deflator
#'
#' @description
#' Variação anual do IPCA e deflator para valores 2020
#'
#' @name Dicionários
#' @rdname dicionarios
#' @format NULL
#' \describe{
#' \item{ano}{Ano.}
#' \item{ipca}{Variação anual do IPCA, em percentual.}
#' \item{deflator}{Deflator usado para reais correntes em reais de 2020.}
#' }
"ipca"
