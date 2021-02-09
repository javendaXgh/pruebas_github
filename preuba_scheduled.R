library(git2r)
setwd('/Users/josemiguelavendanoinfante/R/pruebas_github')
repo <- git2r::repository('/Users/josemiguelavendanoinfante/R/pruebas_github')
git2r::config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')
#git2r::cred_ssh_key()
cred <- git2r::cred_ssh_key(
  publickey = "/Users/josemiguelavendanoinfante/.ssh/id_rsa.pub",
  privatekey = "/Users/josemiguelavendanoinfante/.ssh/id_rsa")



x <- rnorm(1:10)
nombre <-paste0("data/data_1",as.integer(runif(1,1,100)),".rds")

saveRDS (x, paste0('/Users/josemiguelavendanoinfante/R/pruebas_github/',nombre))
#x <- rnorm(1:10)
#save(x, file = paste0("/Users/josemiguelavendanoinfante/R/pruebas_github/data/data_", make.names(Sys.time()), ".Rda"))
#setwd('/Users/josemiguelavendanoinfante/R/pruebas_github/data')
git2r::add(repo,nombre)
git2r::commit(repo,paste('Commit', Sys.time()))
#git2r::libgit2_features()
git2r::config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')

git2r::push(credentials = cred)
