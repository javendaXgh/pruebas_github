library(gert)
#libgit2_config()
setwd('/Users/josemiguelavendanoinfante/R/pruebas_github/data')
x <- rnorm(1:10)
nombre <-paste0("data/data_1",as.integer(runif(1,1,100)),".rds")

saveRDS (x, paste0('/Users/josemiguelavendanoinfante/R/pruebas_github/',nombre))
#/Users/josemiguelavendanoinfante/R/pruebas_github/
git_add(nombre)
#git_add(files, force = FALSE, repo = "/Users/josemiguelavendanoinfante/R/pruebas_github")

#git_add('data/data_X2021.02.09.09.23.00.Rda')
git_commit(paste('Commit', Sys.time()))
credenciales=credentials::ssh_key_info()
gert::git_push(ssh_key = credenciales[2])
