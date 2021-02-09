#install.packages("git2r", type="source", configure.vars="autobrew=yes")

library(git2r)
libgit2_features()# verificar que est'en configuradas las librerias con true


#revisar este post con la necesidad de confiurar lectura de ssh
#apuntar al repo
repo <- repository('/Users/josemiguelavendanoinfante/R/pruebas_github')
#informativas
repo
commits(repo)
repository_head(repo)
is_head(repository_head(repo))
tags(repo)

#####
config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')
config(repo)

 #####
x <- rnorm(1:10)
save(x, file = paste0("/Users/josemiguelavendanoinfante/R/pruebas_github/data/data_", make.names(Sys.time()), ".Rda"))
list.files('data/')
add(repo,list.files('data/')[3])
commit(repo, "git2r commit de prueba")

path='/Users/josemiguelavendanoinfante/R/pruebas_github'
## Create a new file
writeLines("Hello world!", file.path(path, "test1.txt"))

## Add file and commit
add(repo, "test1.txt")
commit(repo, "Commit message2")
push()
#push(repo, "origin", "refs/heads/master")
#push(repo, "origin", "refs/heads/master")

repo=repository('/Users/josemiguelavendanoinfante/R/pruebas_github/data/')
add(repo,list.files()[3])
commit(repo, "Commit message3")
push()
