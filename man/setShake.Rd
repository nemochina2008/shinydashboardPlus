% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setShake.R
\name{setShake}
\alias{setShake}
\title{Custom shake animation}
\usage{
setShake(class, duration = 0.82)
}
\arguments{
\item{class}{The element to which the shake should be applied.
For example, class is set to box.}

\item{duration}{Shake total duration. 0.82s by default.}
}
\description{
Allow to apply a shake animation on a given element.
}
\examples{
 if (interactive()) {

  library(shiny)
  library(shinyWidgets)
  library(shinydashboard)
  library(shinydashboardPlus)
  
  shinyApp(
   ui = dashboardPagePlus(
     header = dashboardHeaderPlus(
       enable_rightsidebar = TRUE,
       rightSidebarIcon = "gears"
     ),
     sidebar = dashboardSidebar(),
     body = dashboardBody(
      tags$h2("Add pulse animation to any element"),

      setShake("box"),
      setShake("info-box"),
      setShake("progress"),
 
      fluidRow(
       boxPlus(
         title = "Closable Box with dropdown",
         closable = TRUE,
         status = "warning",
         solidHeader = FALSE,
         collapsible = TRUE,
         enable_dropdown = TRUE,
         dropdown_icon = "wrench",
         dropdown_menu = dropdownItemList(
           dropdownItem(url = "http://www.google.com", name = "Link to google"),
           dropdownItem(url = "#", name = "item 2"),
           dropdownDivider(),
           dropdownItem(url = "#", name = "item 3")
         ),
         p("Box Content")
       ),
       boxPlus(
         title = "Closable box, with label",
         closable = TRUE,
         enable_label = TRUE,
         label_text = 1,
         label_status = "danger",
         status = "warning",
         solidHeader = FALSE,
         collapsible = TRUE,
         p("Box Content")
       )
      ),
      fluidRow(
       infoBox(
       "Orders",
       "50",
       "Subtitle", icon = icon("credit-card")
       )
      ),
      fluidRow(
       verticalProgress(
        value = 10,
        striped = TRUE,
        active = TRUE
       ),
       verticalProgress(
         value = 50,
         active = TRUE,
         status = "warning",
         size = "xs"
       ),
       verticalProgress(
         value = 20,
         status = "danger",
         size = "sm",
         height = "60\%"
       )
      )
     ),
     rightsidebar = rightSidebar(),
     title = "DashboardPage"
   ),
   server = function(input, output) { }
  )
}
}
