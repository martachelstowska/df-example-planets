#CREATE DF:
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df  <- data.frame(planets, type, diameter, rotation, rings)



# Check Data Frame content (nº variables y type).
str(planets_df)

# Select the column and diameter of the last six planets. 
furthest_planets_diameter <- planets_df[3:8, "diameter"]

# Select only the planets that have the ring.
planets_with_rings_df <- planets_df[planets_df$rings==TRUE, ]

# Select the planets that have the diameter smaller than the Earth´s one
# (diameter < 1)
small_planets_df  <- subset(planets_df, diameter < 1)

#Sorts the Data Frame according to the diameter of the planets, ascending,
# using the order function. (2 ways to do it)
positions <- order(planets_df$diameter, decreasing = FALSE)
largest_first_df <- planets_df[positions, ]

largest_first_df <- planets_df[order(planets_df$diameter, decreasing = FALSE), ]

