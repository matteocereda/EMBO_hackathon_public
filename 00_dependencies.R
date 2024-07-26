# required packages

pkgs = c("devtools"
         ,"remotes"
         ,"ggplot2"
         ,"DT"
         ,"ggsci"
         ,"plyr"
         ,"dplyr"
         ,"patchwork"
         ,"Matrix"
         ,"Seurat"
         ,"msigdbr"
         ,"tidyverse"
         ,"clustermole"
         ,"alphahull"
         ,"magrittr"
         ,"arrow"
         ,"stringr"
         ,"tibble"
         ,"dbscan"
         ,"lsa"
         ,"SnowballC"
         ,"Cairo"
)

bioc_pkgs = c("glmGamPoi"
              ,"clusterProfiler"
              ,"GSEABase"
              ,"GSVA"
              ,"singscore"
              ,"SPIAT"
              ,"DESeq2"
              ,"scde"
)

# "DESeq2" and "scde" are dependencies that should be automatically installed


# For MAC users:
# The "iTALK" package requires also the installation of Cairo (R package) and xquartz library.
# to download xquartz: https://www.xquartz.org/

# The "InSituType" package requires also the installation of gfortran library.
# to download gfortran: https://cran.r-project.org/bin/macosx/tools/




# previously used:
# 'dorothea'
# 'progeny'
# 'sf'
# 'sfheaders'
# install.packages("estimate", repos = "http://r-forge.r-project.org", dependencies=TRUE)



if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")

if (BiocManager::version()!= "3.19") BiocManager::install(version = "3.19")


if(grepl("Ubuntu", Sys.info()['version'])){
  # installing devtools on ubuntu 24.04
  # sudo apt install libharfbuzz-dev libfribidi-dev
  install.packages("textshaping", dependencies = TRUE)
  install.packages("pak")
  pak::pak("r-lib/devtools")
}else{
  install.packages('devtools')
}


# To install clustermole
if(grepl("Ubuntu", Sys.info()['version'])){
  # GSVA (required for clustermole) on Ubuntu 24.04
  # sudo apt install r-cran-magick
  BiocManager::install("GSVA")
}
# install.packages("clustermole")


# CRAN
lib = installed.packages()
installed = pkgs %in% rownames(lib)
not_installed = which(!installed)
if(length(not_installed)>0){
  for(i in not_installed) install.packages(pkgs[i], dependencies = T)
}

# Bioconductor
lib = installed.packages()
installed = bioc_pkgs %in% rownames(lib)
not_installed = which(!installed)
if(length(not_installed)>0){
  for(i in not_installed) BiocManager::install(bioc_pkgs[i])
}


# GitHub
if(!require(devtools)) install.packages("devtools");

devtools::install_github("immunogenomics/presto")

options(timeout = 600000000)
devtools::install_github("dmcable/spacexr")

devtools::install_github("Coolgenome/iTALK", build_vignettes = TRUE)
devtools::install_github("jinworks/CellChat")
devtools::install_github("https://github.com/Nanostring-Biostats/InSituType")


if (!requireNamespace("remotes", quietly = TRUE))
  install.packages("remotes")

remotes::install_github('saezlab/liana')




# To install spacexr
# if(grepl("Ubuntu", Sys.info()['version'])){
#   # GSVA (required for clustermole) on Ubuntu 24.04
#   # sudo apt install r-cran-rccgsl
#   BiocManager::install("")
# }
# devtools::install_github("dmcable/spacexr", build_vignettes = FALSE)

# remotes::install_github('saezlab/liana')



# To install InSituType
if(grepl("Ubuntu", Sys.info()['version'])){
  #before installing InSituType, you first need to install two dependencies via CRAN (lsa) and BioConductor (sparseMatrixStats)
  BiocManager::install('sparseMatrixStats')
  install.packages('lsa')
  #If you are using a Mac with Apple Silicon, be sure you have installed the GNU Fortran compiler:
  # 1) Download and install https://mac.r-project.org/tools/gfortran-12.2-universal.pkg
  # 2) Then 'brew install gcc' (not sure if it's essential)
  devtools::install_github("https://github.com/Nanostring-Biostats/InSituType")
}


