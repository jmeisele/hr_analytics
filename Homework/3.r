dummyDF <- data.frame(state.name, stringsAsFactors = FALSE)
dummyDF$state <- tolower(dummyDF$state.name)
library(maps)
us <- map_data("state")
library(ggplot2)
library(ggmap)
map.simple <- ggplot(dummyDF, aes(map_id = state))
map.simple <- map.simple + geom_map(map = us, fill = "white", color = "black")
map.simple <- map.simple + expand_limits(x = us$long, y = us$lat)
map.simple <- map.simple + coord_map() + ggtitle("basic map of USA")
install.packages("mapproj")
library(mapproj)
map.simple + geom_point(aes(x = -100, y = 30))

map.popColor <- ggplot(dummyDF, aes(map_id = state))
latlon <- geocode("Miami, FL")
Cities <- c("Syracuse NY", "Newark, DE")
Rating <- c( 0.8, 0.3)
df <- data.frame(Cities, Rating)
library(ggplot2)
ggplot(df, aes(x = Cities, y = Rating))
