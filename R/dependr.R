
 
dependrenv <- new.env()          # create a new environment to store helper functions
dependrenv$dependr.vector <- c()
dependr.path <- 'rscript/'  # default path to look for scripts on

dependr <- function(targets)
{
  v <- get('dependr.vector',envir=dependrenv)
  
  if( !is.vector(targets)) stop('targets must be a vector')
  for(target in targets)
  {
    dependr.character(target)
  }
}

dependr.character <- function(target)
{
  v <- get('dependr.vector',envir=dependrenv) 
  
  if (! is.character(target)) stop('target must be a character')
 
  if (!any(v==target))
    {
      message(paste('Detected required dependency', target))  
      
      path <- paste(dependr.path,target,'.R',sep='')
      if (file.exists(path))
      {
        dependr.executed(target)
        source(path)
      }
      else
      {
        message(paste('Cannot locate file :',path))
      }
    }
}
 
dependr.executed <- function(target)
{
  v <- dependrenv$dependr.vector
  if ( !any(v==target))
  {
    assign('dependr.vector',c(v,target),envir=dependrenv)
  }
}
 
dependr.clear <- function()
{
  assign('dependr.vector',c(),envir=dependrenv)
}
 
 