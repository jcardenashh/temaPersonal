

#' Tema oscuro para graficos ggplot2, crea gráficos ideales para presentaciones
#'
#
#
#' @export
#' @examples
#' library(ggplot2,temaPersonal)
#' data <- data.frame(x = 1:10,y = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29))
#'ggplot(data, aes(x = x, y = y)) +
#'  geom_line(color = "yellow", linewidth = 1) +
#'  geom_point(size = 3,color="yellow") +
#'  labs(title = "Gráfico de Ejemplo",
#'       subtitle = "Uso del tema_personal en ggplot2",
#'       caption = "Datos de ejemplo") +
#'  tema_personal_oscuro()


tema_personal_oscuro <- function(){
  # Colores -----------------------------------------------------------------
  color0 <-  rgb(234,204,22, maxColorValue = 255) # Color base líneas
  color00 <- rgb(30, 30, 30, maxColorValue = 255) # Color relleno base
  color01 <- rgb(30, 30, 30, maxColorValue = 255) # Color borde background
  color02 <- rgb(50, 50, 50, maxColorValue = 255) # Color relleno background
  color1 <-  rgb(234,204,22, maxColorValue = 255) # Color título
  color2 <-  rgb(234,204,22, maxColorValue = 255) # Color subtítulo
  color3 <-  rgb(234,204,22, maxColorValue = 255) # Caption
  color4 <-  rgb(234,204,22, maxColorValue = 255) # Color eje
  color5 <-  rgb(234,204,22, maxColorValue = 255) # Título eje
  color6 <-  rgb(234,204,22, maxColorValue = 255) # Texto eje
  color7 <-  rgb(234,204,22, maxColorValue = 255)# Título eje Y
  color8 <-  rgb(234,204,22, maxColorValue = 255) # Título eje X
  color9 <-  rgb(234,204,22, maxColorValue = 255) # Texto eje Y
  color10 <- rgb(234,204,22, maxColorValue = 255) # Texto eje X
  color11 <-  "#555555" # Líneas de cuadrícula mayor
  color12 <-  "#777777" # Líneas de cuadrícula menor
  color13 <- rgb(30, 30, 30, maxColorValue = 255) # Fondo panel

  # Fuentes ----
  showtext::showtext_auto()
  base_size = 14
  base_family = "sans"
  fuente_titulo = "sans"
  fuente_caption = "sans"
  fuente_etiqueta_eje = "sans"

  ggplot2::theme(

    # Elementos globales
    line = element_line(color = color0, linewidth = 1, linetype = 1, lineend = "butt"),
    rect = element_rect(fill = color00, color = color0, linewidth = 1, linetype = 1),
    text = element_text(family = base_family, face = "plain", colour = color0, size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9),

    plot.margin = margin(t=0.5,r=0.5, b=0.5, l=0.5,"cm"),
    plot.background = element_rect(fill = color02, colour = color01),

    # Título gráfico
    plot.title =
      element_text(family = fuente_titulo,
                   colour = color1,
                   size = 24,
                   face = "bold.italic",
                   hjust = 0,
                   margin = margin(t = 0, r = 0, b = 1, l = 0, unit = "cm")),

    # Subtítulo gráfico
    plot.subtitle =
      element_text(color = color2,
                   face = "italic",
                   size = 16,
                   margin = margin(t = -0.8, r = 0, b = 1, l = 0, unit = "cm"),
                   hjust = 0),

    # Caption gráfico
    plot.caption =
      element_text(family = fuente_caption,
                   color = color3,
                   face = "italic",
                   margin = margin(t = 0, r = 0, b = 0.5, l = 0, unit = "cm"),
                   hjust = 0),

    # Ejes del gráfico
    axis.line = element_line(colour = color4, linewidth = 1, linetype = "solid"),
    axis.ticks = element_line(colour = color4, linewidth = 1, linetype = "solid"),
    axis.ticks.length = unit(0.2, "cm"),

    axis.title = element_text(color = color5, face = "bold.italic", size = 16, hjust = 0.5, vjust = 0.5),
    axis.text = element_text(color = color6, face = "bold.italic", size = 8, margin = margin(t = 0.1, r = 0.1, b = 0.2, l = 0, unit = "cm")),

    # Eje X gráfico
    axis.title.x = element_text(family = fuente_etiqueta_eje),
    axis.text.x = element_text(color = color10, face = "bold.italic", size = 11),

    # Eje Y gráfico
    axis.title.y = element_text(color = color7, angle = 90, margin = margin(t = 0, r = 0.2, b = 0, l = 0, unit = "cm")),
    axis.text.y = element_text(color = color9, face = "bold.italic", size = 11),

    # Leyenda gráfico
    legend.position = "top",
    legend.text = element_text(size = rel(0.8)),
    legend.title = element_text(size = rel(0.8), face = "bold", hjust = 0),
    legend.key.size = unit(0.75, "cm"),
    legend.key = element_rect(fill = "white", color = "white"),

    # Área interna gráfico
    panel.background = element_rect(fill = color13, color = NA),
    panel.border = element_blank(),
    panel.grid.major = element_line(color = color11, linewidth = 0.5, linetype = "dotted"),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),

    # Facetas
    strip.background = element_rect(fill = "white", colour = NA),
    strip.text.x = element_text(),
    strip.text.y = element_text(angle = -90)
  )
}

