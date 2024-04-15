

#' Tema para graficos ggplot2
#'
#'
#'
#' @export
#' @examples ggplot2::theme_set(tema_personal())

tema_personal <- function(){
  # element_text para la fuente
  # element_line() para las lineas
  # element_rect(fill="grey80",colour="red",size=2,linetype=5)  rectangulo como en los backgroup
  #element_black() no dibuja nada "panel.grid.minor = element_blank()"

  #  color= puntos y lineas
  #  fill areas
  # el tema ggThemeAssist es de ayuda para personalizar los graficos

  # colores -----------------------------------------------------------------
  {
    #rgb(22,54,92,maxColorValue = 255)
    color0 <-  rgb(22,54,92,maxColorValue = 255) # color base lineas
    color00 <- rgb(255,255,255,maxColorValue = 255)# color relleno base
    color01 <- rgb(255,255,255,maxColorValue = 255) # color borde background
    color02 <- rgb(255,255,255,maxColorValue = 255) # color relleno background
    color1 <-  rgb(22,54,92,maxColorValue = 255) #color.title
    color2 <-  rgb(22,54,92,maxColorValue = 255) #color.subtitle
    color3 <-  rgb(255,129,129,maxColorValue = 255) #caption
    color4 <-  rgb(22,54,92,maxColorValue = 255) # color.axis.line
    color5 <-  rgb(22,54,92,maxColorValue = 255) #axis.title
    color6 <-  rgb(22,54,92,maxColorValue = 255) #axis.text
    color7 <-  rgb(22,54,92,maxColorValue = 255) #axis.title.y
    color8 <-  rgb(22,54,92,maxColorValue = 255) #axis.title.x
    color9 <-  rgb(22,54,92,maxColorValue = 255) #axis.text.y
    color10 <-  rgb(22,54,92,maxColorValue = 255) #axis.text.x
    color11 <-  "#D9D9D9" # Chart Gridlines major
    color12 <-  "#D9D9D9" # Chart Gridlines menor
    color13 <-  rgb(22,54,92,maxColorValue = 255) # panel Background fill

    #color <-  '#9999CC' #strip.background.color

  }
  # fuentes ----
  #"serif" RobotoSlab # "Comic Sans MS" "CM Roman" "TT Times New Roman""Sans"
  showtext::showtext_auto()
  base_size = 14
  base_family = "sans"
  fuente_titulo = "sans"
  fuente_caption = "sans"
  fuente_etiqueta_eje = "sans"

  ggplot2::theme(

    # elements globales, configuración basica para todos los elementos
    # lineas, rectangulos y texto
    # tipos de lineas disponibles en R 0 = blank, 1 = solid, 2 = dashed, 3 = dotted, 4 = dotdash, 5 = longdash, 6 = twodash
    # las lineas se pueden especificar usando nombre o el número
    line = element_line(color = color0, size = 1, linetype = 1, lineend = "butt"),
    rect = element_rect(fill = color00, colour = color0, size = 1, linetype = 1),
    text = element_text(family = base_family, face = "plain", colour = color0, size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9),

    plot.margin = margin(t=0.5,r=0.5, b=0.5, l=0.5,"cm"),
    plot.background = element_rect(fill = color02,colour =color01 )


    # titulo grafico ----------------------------------------------------------
    ,plot.title =
      element_text(family = fuente_titulo
                   ,colour = color1 # elemento color
                   ,size = 24
                   ,face = "bold.italic" #plain italic bold bold.italic
                   ,hjust = 0 #valor entre 0 y 1
                   #,vjust = 0 #valor entre 0 y 1
                   #,angle =0
                   #,lineheight1=1 # valor entre 0 y1
                   ,margin=margin(t = 0, r = 0, b = 1, l = 0, unit = "cm") #cm pt
      )

    # ver fuentes disponibles con  windowsFonts()

    # subtitulo grafico ------------------------------------------------------------
    ,plot.subtitle =
      element_text(color = color2
                   ,face="italic"
                   ,size=16
                   ,margin=margin(t = -0.8, r = 0, b = 1, l = 0, unit = "cm") #cm pt
                   ,hjust = 0
                   #,vjust = 0 #valor entre 0 y 1
                   #,angle =0
                   #,lineheight1=1 # valor entre 0 y1
      )
    # caption grafico --------------------------------------------------------------
    ,plot.caption =
      element_text(family = fuente_caption,
                   color = color3,
                   face = "italic"
                   ,margin=margin(t = 0, r = 0, b = 0.5, l = 0, unit = "cm") #cm pt
                   ,hjust=0
                   #,vjust = 0 #valor entre 0 y 1
                   #,angle =0
                   #,lineheight1=1 # valor entre 0 y1
      )

    # ejes del grafico--------------------------------------------------------------
    # se pueden configurar global o de forma individual eje x y eje y

    ## lineas ----
    ,axis.line=element_line(colour = color4,size = 1,linetype = "solid")
    #,axis.line=element_blank()

    ## marcas de datos -----
    ,axis.ticks = element_line(colour = color4,size = 1,linetype = "solid")
    ,axis.ticks.length = unit(0.2, "cm") #largo de la linea

    ## titulos o etiquetas  ------
    ,axis.title = element_text(color = color5
                               ,face = "bold.italic",size = 16,hjust = 0.5,vjust = 0.5
                               #,angle=90 #angulo
                               #,margin(5,5,5,5)
                               #,debug=TRUE #fondo

    )
    ## valores datos ----
    ,axis.text = element_text(color = color6,
                              face = "bold.italic",size = 8
                              ,margin=margin(t = 0.1, r = 0.1, b = 0.2, l = 0, unit = "cm")) #cm pt)
    # eje x grafico-------------------------------------------------------------------
    # etiqueta
    ,axis.title.x = element_text(family = fuente_etiqueta_eje
                                 #,color = color8
                                 #,face = "bold.italic"
                                 #,size = 14
                                 #,hjust = 0.5
                                 #,vjust = 0.5
                                 #,angle=0 #angulo
                                 #,margin(5,5,5,5)
                                 #,debug=TRUE #fondo
    )
    # valores datos
    ,axis.text.x = element_text(color = color10,
                                face = "bold.italic",size = 11)


    # eje y grafico-----------------------------------------------------------------
    # etiqueta
    ,axis.title.y = element_text(color = color7
                                 #,face = "bold.italic"
                                 #,size = 14
                                 #,hjust = 0.5
                                 #,vjust = 0.5
                                 ,angle=90 #angulo
                                 ,margin=margin(t = 0, r = 0.2, b = 0, l = 0, unit = "cm")
                                 #,debug=TRUE #fondo
    )
    #valores datos
    ,axis.text.y = element_text(color = color9,
                                face = "bold.italic",size = 11)





    # leyenda grafico-----------------------------------------------------------------
    # elementos que no se define carga la configuración global
    ,legend.position="top" #none,left,right,botton
    #,legend.background = element_rect(colour = NA, fill=NA,linetype = "solid") # fondo de la legenda
    #,legend.margin = margin(t=0, r=0, b=0, l=0, unit="cm")

    ,legend.text = element_text(size = rel(0.8))
    #,legend.text.align = NULL

    ,legend.title = element_text(size = rel(0.8), face = "bold", hjust = 0)
    #,legend.title = element_blank()
    #,legend.title.align = NULL

    ,legend.key.size = unit(0.75, "cm")
    #,legend.key.height = unit(0.75, "cm") #alto
    #,legend.key.width = unit(0.75, "cm")  #ancho
    #,legend.key.height = NULL #alto
    #,legend.key.width = NULL  #ancho
    ,legend.key = element_rect(fill = "white",color = "white")

    #,legend.direction = NULL,#"horizontal","vertical"
    ,legend.justification = "left"
    #,legend.box = NULL 	#disposición de múltiples leyendas ("horizontal" o "vertical")



    # area interna grafico ----------------------------------------------------

    #,plot.background =  element_rect(fill = NA),

    #,panel.background = element_rect(fill = color13,color=rgb(22,54,92,maxColorValue=255),linetype = "solid")
    #,panel.background = element_rect(fill = NA,linetype = "solid"),
    ,panel.background=element_blank()


    #,panel.border = element_rect(color=rgb(22,54,92,maxColorValue=255))
    ,panel.border = element_blank()
    #,panel.margin = margin(t=0,r=0, b=0, l=0,"cm") en desuso

    #lineas verticales y horizontales
    ,panel.grid.major=element_line(color=color11,size=0.5, linetype="dotted")
    #,panel.grid.minor = element_line(colour = "white", size = 0.2,linetype = 5)
    ,panel.grid.major.x = element_blank()
    ,panel.grid.minor.x = element_blank()


    # facetas -----------------------------------------------------------------
    ,strip.background = element_rect(fill = "white", colour = NA)
    ,strip.text.x = element_text()
    ,strip.text.y = element_text(angle = -90)
    #,panel.spacing = unit ( 1 , "líneas" )


  )


}
