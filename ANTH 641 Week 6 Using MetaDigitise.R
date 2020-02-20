# We'll need to first install metaDigitise
install.packages("devtools")
devtools::install_github("daniel1noble/metaDigitise")
library("metaDigitise")

# We'll use Figure 2 from
# http://jaanet.info/journals/jaa/Vol_5_No_2_December_2017/3.pdf
# Trace Elements in Eneolithic and Late Medieval Human Bones from Two Archaeological Sites in Tuscany: Evaluation of Diagenetic Processes, Diet and Exposure to Heavy MetalsNicola Bianchi1, Adriana Moroni1, Simone Bonucci1, Giulia Capecchi1, Stefania Ancora1, Stefano Ricci1, Claudio Leonzio
# Journal of Anthropology and ArchaeologyDecember 2017, Vol. 5, No. 2, pp. 31-43


# MetaDigitise uses images, so we have already grabbed a screenshot of Figure 2
# and have uploaded it into the folder 'figs-to-extract'. 

# When we run the line below, a 'wizard' takes over
# it will ask us to identify key points on the image
# and from these, it will build up the dataframe
# that could produce this image.

# You will interact with the plot in the window on the right, and input information
# in the console window below.

#... and go!
data <- metaDigitise(dir = "~/test_figs/")
data <- metaDigitise(dir = "~/figs-to-extract/")


