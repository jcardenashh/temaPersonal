% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggpersonal_continuo.R
\name{ggpersonal_continuo}
\alias{ggpersonal_continuo}
\title{configurar gráficos continuos, coordenadas y colores}
\usage{
ggpersonal_continuo(grafico)
}
\arguments{
\item{grafico}{object " Grafico a personalizar"}
}
\value{
object "Grafico configurado
}
\description{
configurar gráficos continuos, coordenadas y colores
}
\examples{
grafico_lineas = ggplot(economics, aes(date, unemploy)) + geom_line()
ggpersonal_continuo(grafico_lineas)
}
