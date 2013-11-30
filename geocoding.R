# First look

df <- read.csv("data/2014-LBT-Receipts.csv")
# names(df)[names(df) == "Receipt.."] <- "receipt_id"
# names(df)[names(df) == "Business.Address"] <- "business_address"
# write.csv(df[ , c("receipt_id", "business_address")], "tax_addresses.csv")
library(ggmap)
library(maptools)
shapefile <- readShapeSpatial('MunicipalBoundaries_polys.shp', proj4string = CRS("+proj=lcc +lat_1=34.33333333333334 +lat_2=36.16666666666666 +lat_0=33.75 +lon_0=-79 +x_0=609601.2199999997 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=us-ft +no_defs"))
shp <- spTransform(shapefile, CRS("+proj=longlat +datum=WGS84"))
data <- fortify(shp)

nc <- get_map("North Carolina", zoom = 6, maptype = 'terrain')
ncmap <- ggmap(nc,  extent = "device")
ncmap +
  geom_polygon(aes(x = long, y = lat, group = group), data = data,
               colour = 'grey', fill = 'black', alpha = .4, size = .1)