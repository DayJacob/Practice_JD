approx_pi <- function(n) {
  x <- seq(0, 2, length.out=1000)
  y <- 2
  theta <- seq(0, 2*pi, length.out=1000)
  plot(cos(theta) + 1, sin(theta) + 1, type='l', lwd=3)
  
  dx <- runif(n, min=0, max=2)
  dy <- runif(n, min=0, max=2)
  ix <- which(1 >= (dx-1)**2 + (dy-1)**2)
  
  points(dx[ix], dy[ix], col='red', pch=20, lwd=3)
  points(dx[-ix], dy[-ix], col='blue', pch=20, lwd=3)
  
  area <- 4 * length(ix)/n
  print(area)
}