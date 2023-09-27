
#' Tema para gráficos de tipo pastel y donas

#' @description Función para aplicar tema a graficos de pastel, elimina los ejes de un gráfico convencional

#' @return
#' @export

#' @examples
#' df = data.frame( categorias = c("cat1","cat2","cat3","cat4"), porcentaje = c(25,20,15,40))
#' ggplot(df,aes(x = "",y = porcentaje, fill = categorias))+
#'   geom_bar(stat = "identity",color="white")+
#'   coord_polar(theta="y") +
#'   tema_personal_pastel()

#' @importFrom ggplot2 theme
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

