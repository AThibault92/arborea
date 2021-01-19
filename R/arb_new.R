#' Créer une nouvelle analyse
#'
#' @param name nom de l'analyse
#'
#' @return
#' @export
#'
#' @examples
arb_new <- function(name = NULL){

  if (is.null(name)){
    message("Merci de donner un nom")
  } else {

    nom_rmd <- paste0("./analyse/", name, ".Rmd")

    if (file.exists(nom_rmd)){
      message("Cette analyse existe deja")
    } else {
      date_creation <- format(Sys.Date(),  format = '%d/%m/%Y')
      text_date <- paste0("date: \"Cree le ", date_creation, ", mise a jour le `r format(Sys.Date(), format = '%d/%m/%Y')`\"")

      file.create(nom_rmd)
      write(x = "---", file = nom_rmd, append = TRUE)
      write(x = paste0('title: "',name,'"'), file = nom_rmd, append = TRUE)
      write(x = 'author: "Anteagroup"', file = nom_rmd, append = TRUE)
      write(x = text_date, file = nom_rmd, append = TRUE)
      write(x = "output:", file = nom_rmd, append = TRUE)
      write(x = "  html_document:", file = nom_rmd, append = TRUE)
      write(x = "    toc: true", file = nom_rmd, append = TRUE)
      write(x = "    toc_depth: 2", file = nom_rmd, append = TRUE)
      write(x = "    toc_float: true", file = nom_rmd, append = TRUE)
      write(x = "    self_contained: yes", file = nom_rmd, append = TRUE)
      write(x = "    css: ../css/rmd.css", file = nom_rmd, append = TRUE)
      write(x = "    highlight: pygments", file = nom_rmd, append = TRUE)
      write(x = "    number_sections: true", file = nom_rmd, append = TRUE)
      write(x = "---", file = nom_rmd, append = TRUE)
      write(x = "", file = nom_rmd, append = TRUE)
      write(x = "```{r setup, include=FALSE}", file = nom_rmd, append = TRUE)
      write(x = "knitr::opts_chunk$set(echo = TRUE)", file = nom_rmd, append = TRUE)
      write(x = "```", file = nom_rmd, append = TRUE)
      write(x = "", file = nom_rmd, append = TRUE)
      write(x = "# Introduction", file = nom_rmd, append = TRUE)
      write(x = "<!-- Details du but de l'analyse -->", file = nom_rmd, append = TRUE)

      file.edit(nom_rmd)
    }

  }

}
