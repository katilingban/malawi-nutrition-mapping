################################################################################
#
#'
#' Create leaflet map
#'
#
################################################################################

create_leaflet_map <- function(style_id = "satellite-streets-v10",
                               username = Sys.getenv("MAPBOX_USERNAME"),
                               country_centroid,
                               data = districts) {
  leaflet::leaflet(width = "100%", height = "100%") %>%
    mapboxapi::addMapboxTiles(
      style_id = style_id,
      username = username
    ) %>%
    #leaflet::addTiles(
    #  urlTemplate = ,
    #  attribution = "Map by <a href='http://www.mapbox.com/'>Mapbox</a>"
    #) %>%
    leaflet::setView(
      lng = country_centroid[1],
      lat = country_centroid[2],
      zoom = 7
    ) %>%
    leaflet::addPolygons(
      data = data, color = "yellow"
    )
}