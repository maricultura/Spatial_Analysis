# Simple function to calculate suitable area of a raster
suitable_area <- function (raster) {
  a <- area(raster) # computes area of all cells in the raster
  b <- (raster * a) # keeps area of cells that are suitable
  
  area_value <- sum(values(b), na.rm = T)/(10^6) # total area value in km^2
  print(area_value)
}

# Use function on suitable raster
suitable_area(suitable)
