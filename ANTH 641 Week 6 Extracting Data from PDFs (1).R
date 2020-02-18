# We have to first install two packages. These make take a bit of time to install. 
install.packages("shiny")
install.packages("miniUI")

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

# Now we turn it into a dataframe, and tell it that h, the header, is our column headers.
datadf <- setNames(as.data.frame(do.call("rbind", data), stringsAsFactors = FALSE), h)
str(datadf)

# And we can view the new table in this window
View(datadf)

# Looks good. But let's make one more change to simplify the header titles.
names(datadf) <- c("Site","Type","Date","Smelting","Smithing")

# Now look at the table again
View(datadf)

# Cool. We'll export the new table as a csv. We can then download it from our Jupyter folder.
write.csv(datadf, 'irondata.csv')

# Now let's try to do something with the data. 
# We'll make a crosstabulation of the Types of Sites and the Chronological Dates 
crosstab <- xtabs(~Type+Date, datadf)

# Now look at the crosstab. What issues do you see with the table?
crosstab

# Let's get rid of the first column and row, since those are not accurate to the data from the PDF.
# And look at the crosstabulation again.
crosstab <-crosstab[-1,-1]

crosstab

# Now we'll create a bar plot of this crosstabulation to see if that helps with the visualization
barplot(crosstab, ylab="Frequency", main="Iron production through time", beside=TRUE,legend.text=TRUE, args.legend=list(title="Type"))

# Save the plot. Click on Export -> save as image

