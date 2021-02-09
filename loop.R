
for (i in 1:3){
  repo <- git2r::repository('/Users/josemiguelavendanoinfante/R/pruebas_github')
  git2r::config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')

  x <- rnorm(1:10)
  save(x, file = paste0("/Users/josemiguelavendanoinfante/R/pruebas_github/data/data_", make.names(Sys.time()), ".Rda"))
  setwd('/Users/josemiguelavendanoinfante/R/pruebas_github/data')
  git2r::add(repo,list.files()[length(list.files())])
  git2r::commit(repo,paste('Commit', Sys.time()))
  git2r::libgit2_features()
  git2r::config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')
  git2r::push()
  Sys.sleep(20)
  print(i)
}
