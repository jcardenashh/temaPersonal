

#' Tema para graficos  de pastel y donas
#' elimina los ejes de un grafico convencional
#' @return
#' @export
#'
#' @examples tema_personal_pastel(grafico_donus)
tema_personal_pastel <- function(){

  tema_personal() +
  ggplot2::theme(legend.position = "right",
          line = element_blank(),
          rect = element_blank(),
          axis.line=element_blank(),
          axis.ticks = element_blank(),
          axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          axis.title = element_blank(),
          panel.grid.major  = element_blank()
    )
}
