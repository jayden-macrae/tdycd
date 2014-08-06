css <- function(supress=c())
{
  create.dir('rscript',supress)
  create.dir('input',supress)
  create.dir('output',supress)
  create.dir('sql',supress)
  create.dir('cache',supress)
}

create.dir <- function(name,supress)
{
  if(!any(supress==name))
  {
    dir.create(name,showWarnings=FALSE)
  }
}

create.standard.structure <- function(supress=c())
{
  return(css(supress))
}