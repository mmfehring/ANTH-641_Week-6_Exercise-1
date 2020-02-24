# We'll need to first install metaDigitise
install.packages("devtools")
devtools::install_github("daniel1noble/metaDigitise")
library("metaDigitise")

# We'll use Figure 4.9 from
# Garstki, K. 2017. PRODUCTION AND TECHNOLOGICAL CHANGE:IRONWORKING IN PREHISTORIC IRELAND" Unpublished Dissertation. UWM


# MetaDigitise uses images, so I have already grabbed a screenshot of the figure
# and have uploaded it into the folder 'garstki_fig'. 

# When we run the line below, a 'wizard' takes over
# it will ask us to identify key points on the image
# and from these, it will build up the dataframe
# that could produce this image.

# You will interact with the plot in the window on the right, and input information
# in the console window below.

#... and go!
data <- metaDigitise(dir = "~/garstki_fig/")

# After it tells you "Congratulations" we now have a summary of the data you extracted from the plot
# Look at the summary
data

# But we probably want the raw data in a dataframe so that we can use it.
dat <- getExtracted("~/garstki_fig/", summary = FALSE)

dat

# Let's just make sure our scatter plot data makes sense and re-plot it. 
x <- dat$scatterplot$Garstki2017_Scatter.PNG$x
y <- dat$scatterplot$Garstki2017_Scatter.PNG$y
plot(x, y, main = "Furnace Size", xlab = "Length", ylab = "Width", pch = 19, frame = TRUE)

# Save that plot and put it into your GitHub repo for this week. 
# And export the scatter plot dataframe as a csv and put it into your GitHub repo. 
write.csv(dat, 'furnacesize.csv')

# Try this one more time with a slightly more complex plot. 
# We'll use Figure 2 from
# http://jaanet.info/journals/jaa/Vol_5_No_2_December_2017/3.pdf
# Trace Elements in Eneolithic and Late Medieval Human Bones from Two Archaeological Sites in Tuscany: Evaluation of Diagenetic Processes, Diet and Exposure to Heavy MetalsNicola Bianchi1, Adriana Moroni1, Simone Bonucci1, Giulia Capecchi1, Stefania Ancora1, Stefano Ricci1, Claudio Leonzio
# Journal of Anthropology and ArchaeologyDecember 2017, Vol. 5, No. 2, pp. 31-43
# The big difference here is that there are two groups of data (bone and soil), so account for those in your digitizing.

data <- metaDigitise(dir = "~/figs-to-extract/")
