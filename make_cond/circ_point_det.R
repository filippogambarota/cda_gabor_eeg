# Get circ points

circ_point <- function(radius, n_points, x_origin = 0, y_origin = 0, tot_angle) {
    if(tot_angle == 180){
        n_points <- n_points - 1
    }
    seq_angle = seq(tot_angle, 0, -tot_angle/n_points) # sequence of angles
    seq_angle = seq_angle * (pi/180) # Deg to rad
    x = x_origin + radius * cos(seq_angle)
    y = y_origin + radius * sin(seq_angle)
    out <- round(data.frame(x,y))
    
    if(tot_angle == 360){
        out <- out[1:n_points, ]
    }
    return(out)
}

rotate_point <- function(circ, angle, x_origin = 0, y_origin= 0){
    circ$x_rot <- cos(angle) * (circ$x - x_origin) - sin(angle) * (circ$y - y_origin) + x_origin
    circ$y_rot <- sin(angle) * (circ$x - x_origin) + cos(angle) * (circ$y - y_origin) + y_origin
    return(circ)
}

circ <- circ_point(777, 35, 0, 0, 180)
circ$id <- 1:nrow(circ)

circ[, "x"] %>% 
    write.table(., file = "coord_x.txt",
                sep = ",", # separator
                eol = ",", # for having all in a single line sep
                col.names = FALSE, 
                row.names = FALSE, 
                fileEncoding = "UTF8", 
                quote = FALSE) # for presentation string

circ[, "y"] %>% 
    write.table(., file = "coord_y.txt",
                sep = ",", # separator
                eol = ",", # for having all in a single line sep
                col.names = FALSE, 
                row.names = FALSE, 
                fileEncoding = "UTF8", 
                quote = FALSE) # for presentation string