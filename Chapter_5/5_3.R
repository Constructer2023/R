mydate <- function(type = "long") {
  switch(type,
         long = format(Sys.time(), "%A %B %d %Y"),
         short = format(Sys.time(), "%m-%d-%y"),
         cat(type, "is not a recognized type\n")
         )
}
mydate("long")
mydate("short")
mydate()
mydate("medium")
