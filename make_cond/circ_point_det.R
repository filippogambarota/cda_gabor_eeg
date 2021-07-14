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

coord <- circ_point(777, 22, 0, 0)

rotate <- deg2rad(90)


coord$xrot <- cos(rotate)*(coord$x-0) - sin(rotate)*(coord$y-0)+0
coord$yrot <- cos(rotate)*(coord$y-0) - sin(rotate)*(coord$y-0)+0
coord <- round(coord)

ggplot(coord, aes(x = y, y = x))+
    geom_text(aes(label = id))
