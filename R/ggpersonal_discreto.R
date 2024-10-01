# para graficos estandares
# post leyendas
#https://aosmith.rbind.io/2020/07/09/ggplot2-override-aes/


#' configurar graficos discretos,colores
#'
#' @param grafico object " Grafico a personalizar"
#'
#' @return object "Grafico configurado
#' @export
#'
#' @examples
#' library(ggplot2,temaPersonal)
#' theme_set(tema_personal())
#' data("mtcars")
#' grafico_barra = ggplot(mpg, aes(class)) + geom_bar(fill="tomato")
#' ggpersonal_discreto(grafico_barra)

ggpersonal_discreto <- function(grafico){
  # para graficos variables discretas
  grafico+
    ggthemes::scale_color_tableau()+
    ggthemes::scale_fill_tableau()+
    ggplot2::guides(colour = guide_legend(override.aes = list(size=3))) # tamaño simbolos leyendas
}
