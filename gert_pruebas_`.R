install.packages('gert')
library(gert)
libgit2_config()
git_config_global()
user_is_configured(repo = ".")
git_info(repo='.')
git_log(max = 10)


git_status(staged = NULL, repo = "/Users/josemiguelavendanoinfante/R/pruebas_github")

setwd('/Users/josemiguelavendanoinfante/R/pruebas_github/data')
x <- rnorm(1:10)
save(x, file = paste0("/Users/josemiguelavendanoinfante/R/pruebas_github/data/data_", make.names(Sys.time()), ".Rda"))
git_add('data/data_X2021.02.09.05.09.30.Rda')
#git_add(files, force = FALSE, repo = "/Users/josemiguelavendanoinfante/R/pruebas_github")
git_commit(paste('Commit', Sys.time()))
git_push()
