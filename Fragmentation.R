##load packages
setwd('C:/Users/PC/Downloads/RS MANUAL/Apamprama')

library(terra)
library(raster)
library(sp)
library(landscapemetrics)
library(ggplot2)
library(dplyr)
#load tiff data
image <- terra::rast('C:/Users/PC/Downloads/RS MANUAL/Apamprama/20241.tif')

#convert raster to data frame
image_df <- as.data.frame(image, xy = TRUE)


ggplot(data = image_df, aes(x=x, y=y, fill = Class))+
  geom_raster()
  
#landscape mapping

check_landscape(image)
crs(image)

show_patches(image, class = 1, labels = FALSE)

show_lsm(image, what = "lsm_p_area", class = 1, label_lsm = TRUE)

