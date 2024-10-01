
#' configurar graficos continuos, coordenadas y colores
#'
#' @param grafico object " Grafico a personalizar"
#'
#' @return object "Grafico configurado
#' @export
#'
#' @examples
#' library(ggplot2,temaPersonal)
#' theme_set(tema_personal())
#' grafico_lineas = ggplot(economics, aes(date, unemploy)) + geom_line(color="tomato")
#' ggpersonal_continuo(grafico_lineas)

ggpersonal_continuo <- function(grafico){
  # para graficos variables continuas
  grafico+
    ggplot2::scale_y_continuous(expand  =  expansion ( mult  =  c(0,0.1)),labels = scales::label_comma())+
    ggplot2::scale_x_continuous(expand  =  expansion ( mult  =  c(0,0.1)),labels = scales::label_comma()) +
    ggthemes::scale_color_tableau()+
    ggthemes::scale_fill_tableau()+
    ggplot2::guides(colour = guide_legend(override.aes = list(size=3))) # tamaño simbolos leyendas
}

# post leyendas
#https://aosmith.rbind.io/2020/07/09/ggplot2-override-aes/
