
<!-- README.md is generated from README.Rmd. Please edit that file -->

# moto

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![Travis build
status](https://travis-ci.org/tomasbarcellos/moto.svg?branch=master)](https://travis-ci.org/tomasbarcellos/moto)
<!-- badges: end -->

The goal of moto is to …

## Installation

``` r
# install.packages("devtools")
devtools::install_github("tomasbarcellos/moto")
```

## Exemplo

Ao carregar o pacote as tabelas principais ficam disponíveis.

``` r
library(moto)
library(tibble) # só para imprimir bonito aqui
#> Warning: package 'tibble' was built under R version 3.5.2
moto1
#> # A tibble: 11,044 x 9
#>      ano    uf sexo  idade cor   vinculo renda jornada instrucao           
#>    <int> <int> <chr> <dbl> <chr> <chr>   <dbl>   <dbl> <chr>               
#>  1  2012    11 1        18 1     02        350      30 Médio incompleto ou…
#>  2  2012    11 1        34 4     09       1500      44 Fundamental complet…
#>  3  2012    11 1        39 4     01        750      48 Fundamental incompl…
#>  4  2012    11 1        19 1     01        650      46 Médio completo ou e…
#>  5  2012    11 1        42 4     09       1200      48 Fundamental complet…
#>  6  2012    11 1        19 1     02        765      44 Fundamental incompl…
#>  7  2012    11 1        49 1     09        900      48 Fundamental complet…
#>  8  2012    11 1        45 1     09        800      56 Fundamental complet…
#>  9  2012    11 1        38 4     09       1500      50 Fundamental complet…
#> 10  2012    11 1        23 4     09        800      72 Médio incompleto ou…
#> # … with 11,034 more rows
```

Também estão disponíveis tabelas auxiliares com os códigos: `vinculo`,
`uf`, `cor` e `instrucao`.

``` r
vinculo
#> # A tibble: 11 x 2
#>    vinculo vinculo_txt                                                 
#>    <chr>   <chr>                                                       
#>  1 01      Empregado no setor privado com carteira de trabalho assinada
#>  2 02      Empregado no setor privado sem carteira de trabalho assinada
#>  3 03      Trabalhador doméstico com carteira de trabalho assinada     
#>  4 04      Trabalhador doméstico sem carteira de trabalho assinada     
#>  5 05      Empregado no setor público com carteira de trabalho assinada
#>  6 06      Empregado no setor público sem carteira de trabalho assinada
#>  7 07      Militar e servidor estatutário                              
#>  8 08      Empregador                                                  
#>  9 09      Conta-própria                                               
#> 10 10      Trabalhador familiar auxiliar                               
#> 11 NA      Não aplicável
```
