#' Création de la structure du projet
#'
#' @description Fonction qui créer l'arborescence des dossiers, ainsi que les dossiers de config
#'
#' @param path chemin d'accès du projet R
#'
#' @return les fichiers et dossiers
#' @export
#'
#' @examples
#' \dontrun{
#' create_arborea("my_project_path")
#' }
create_arborea <- function(path){
  dir.create(path, recursive = TRUE, showWarnings = FALSE) # Création du dossier

  # Création des dossier principaux
  dir.create(path = file.path(path, "data"))
  dir.create(path = file.path(path, "docs"))
  dir.create(path = file.path(path, "output"))
  dir.create(path = file.path(path, "R"))
  dir.create(path = file.path(path, "analyse"))
  dir.create(path = file.path(path, "code"))
  dir.create(path = file.path(path, "dev"))
  dir.create(path = file.path(path, "css"))

  # Création du .Rprofile
  file.create(".Rprofile")
  write(x = "## Permet de charger le pacakge arborea des que le projet est lance", file = nom_rmd, append = TRUE)
  write(x = "if (requireNamespace(\"arborea\", quietly = TRUE)) {", file = nom_rmd, append = TRUE)
  write(x = "  message(\"Chargement du .Rprofile pour le projet arborea\")", file = nom_rmd, append = TRUE)
  write(x = "  library(\"arborea\")", file = nom_rmd, append = TRUE)
  write(x = "} else {", file = nom_rmd, append = TRUE)
  write(x = "  message(\"Le package arborea n'est pas installé\")", file = nom_rmd, append = TRUE)
  write(x = "}", file = nom_rmd, append = TRUE)

  # Copier de tous les fichiers nécéssaires
  file_path <- system.file("template", package = "arborea")
  files <- list.files(path = file_path, full.names = TRUE, all.files = TRUE,no.. = TRUE)

  file.copy(from = files, to = path, overwrite = TRUE, recursive = TRUE)
}
