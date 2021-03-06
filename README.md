
<!-- README.md is generated from README.Rmd. Please edit that file -->

# arborea

<!-- badges: start -->

<!-- badges: end -->

Arborea est un package R permettant de structurer les analyses de
données pour les projets d’anteagroup. Il permet une meilleure
reproductibilité des analyses, ainsi qu’un partage plus facile.

## Installation

Pour installer le pacakge :

``` r
#install.packages("remotes")
library(remotes)
install_github("AThibault92/arborea")
```

## Structure des dossiers

``` r
myproject/
├── analyse/                  # Dossier comportant les différentes analyses réalisées, au format Rmd
│   ├── analyse_1.Rmd
│   └── ... 
├── code/                     # Dossier comportant les scripts de calculs, au format .R
│   ├── script_1.R
│   └── ... 
├── css/                      # Dossier comportant les fichiers css nécéssaires
│   ├── app.css               # theme css des applications shiny
│   └── rmd.css               # theme css des fichier html markdown
├── data/                     # données brutes du projet, a ne pas éditer 
│   ├── fichier_excel.xlsx
│   ├── fichier_csv.csv
│   └── ... 
├── dev/                      # Dossier avec des scripts pour aider
├── docs/                     # Liste des documents en relations avec l'études (articles, rapport etc.)
│   ├── etude.pdf
│   ├── article.pdf
│   └── ... 
├── output/                   # Les différentes sorties du code (graphiques, tables, modèles etc.)
│   ├── graphique.png
│   ├── modele.rds
│   └── ... 
├── R/                        # Dossier comportant les fonctions qui sont utilisés dans les scripts et analyses
│   ├── fonction_1.R
│   ├── module_shiny.R
│   └── ... 
├── .Rprofile
├── app.R                     # Script pour lancer l'application shiny 
└── myproject.Rproj
```
