

read.from.file <- function (path) {
    if( ! is.character(path))
                {
                                message('read.from.file requires a path to the file')
                                return('')
                }
                if (! file.exists(path))
                {
                                message('File not found.')
                                return ('')
                }
               
                return (readChar(path,file.info(path)$size))
}

rff <- function(path)
{
  return (read.from.file(path))
}