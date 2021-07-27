circ_point <- function(radius, n_points, x_origin = 0, y_origin = 0) {
    seq_angle = seq(360, 0, -360/n_points) # sequence of angles
    seq_angle = seq_angle * (pi/180) # Deg to rad
    x = x_origin + radius * cos(seq_angle)
    y = y_origin + radius * sin(seq_angle)
    
    return(data.frame(x,y))
}

deg2rad <- function(angle){
    angle * pi/180
}

coord <- circ_point(777, 70, 0, 0)

coord$id <- 1:nrow(coord)

plot(coord$y, coord$x)

coord %>% 
    filter(id %in% c(1:18, 54:70)) %>% 
    round() %>% 
    mutate(id = 1:nrow(.)) -> x



x %>% 
    ggplot(aes(x = x, y = y, label = order)) +
    geom_text()

x$order <- as.numeric(clipboard())

colnames(x) <- c("y", "x", "id", "order")







