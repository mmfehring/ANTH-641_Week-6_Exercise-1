# Start with bring tabulizer into the R environment

library("tabulizer")

# The file could be local, or it could be on the web.
# We're going to use 
# Garstki, K. 2019. "The Social Production of Iron in First Millennium BC Ireland" Oxford Journal of Archaeology 38(4) 443 463" 

location <- 'Garstki 2019_Social Production of Iron.pdf'

# Next, let's grab the data in Table 2. This is on pg 7 of the pdf.
# The line below will open a window in the viewer on the right side
# of RStudio, and open pg 7 there. Drag and click a box over the 
# table to extract. Be careful to grab the table, and only the table.

data <- extract_areas(location, 7) 

# We can examine the first bit of data that we've extracted with the 'head' command.
head(data)

# We can save our data to another variable just in case we mess something up.

orig_data <- data # in case of trouble

# Now let's clean this up; right now it's a list with text, not a dataframe with numbers.
# save header
h <- data[[1]][1,]
# remove header in the table
data[[1]] <- data[[1]][-c(1,2),]

# let's examine the data again. 
head(data)