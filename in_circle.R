approx_pi <- function(n) {
  dx <- runif(n, min=0, max=2)
  dy <- runif(n, min=0, max=2)
  ix <- which(1 >= (dx-1)**2 + (dy-1)**2)

  area <- 4 * length(ix)/n
  return(area)
}