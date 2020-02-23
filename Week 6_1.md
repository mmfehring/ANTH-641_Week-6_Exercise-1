# Week 6 – Exercise 1 Extracting Data from PDFs

_There are often data presented in peer-reviewed articles, monographs, and excavation reports in the form of data tables or graphical visualizations. A time-consuming way to extract that data is to copy the data table by hand. But there are also ways to extract that data using some open source software. __Important note: data that you retrieve from published sources are still under the same license as the text. Meaning, you need to cite this data just as you would the text and it is always appropriate when re-using data to make sure there are no ethical or legal restrictions.___

_There are two way to use Tabula to extract data tables from a pdf, one is to download the software onto your local machine and the other is to use it through R. We’ll try using both in this exercise._

_We’ll also use a tool to extract data from published plots or graphs called Metadigitise._

## Using tabula to extract data from PDFs

1.	Open the tabula on your computer. Ask your instructor if it isn’t available on your computer. If it is not available, you can download it from [here](tabula.technology).
2.  You will have the downloaded PDF posted in this repo titled Garstki_2019_Social Production of Iron. In the tabula browser, browse to where you’ve download the PDF and import it into the software. You will see the PDF displayed in the software. 
![alt text](/Images/Picture1.png)

3.  Scroll down to __page 449__ and you’ll see __Table 2__ beginning at the top of the page. We want to retrieve this information, but don’t want to copy it into a different data table (there’s always a possibility of error creeping in during transcription). 
4.  With your cursor, draw a box around the entire table. 
![alt text](/Images/Picture2.png)

5.  A minor problem here, the table continues onto the next page, but that’s okay. Tabula allows you to combine selections. Use the cursor and also highlight the two lines on the next page (no need to include the column titles). 
![alt text](/Images/Picture3.png)

6.  Then click on the green button on the top right of the screen titled __Preview & Export Extracted Data.__
![alt text](/Images/Picture4.png)

7.  You will see a preview of the data table that was extracted from the PDF. How does it look to you – do you see any differences or errors from the original table? One minor thing to note is that the sites with names on two lines (e.g. Cherryville Site 12, Co. Kildare (01E0955)) are separated into two rows – this isn’t ideal but it won’t affect our data, we can adjust that later. 
![alt test](/Images/Picture5.png)

8.  We can now export the data as a .csv file. Title it Tabula_export_Garstki_Tab1. Open it on your computer and investigate it – does everything seem in order? Compare it to the original table in the PDF. 
9.	Upload the csv file into your ANTH 641 Week 6 GitHub repo. 
10.	Let’s try one more. Go back to the main tabula page and upload the file _Frie-2018-Oxford_Journal_of_Archaeology._ Scroll down to page 33 and highlight Table 2. 
![alt text](/Images/Pictures6.png)

11.	 Click on the __Preview & Export Extracted Data__ green button. Look over the previewed data table and compare it to the original in the pdf – do you see any issues? What types of data tables might this software have a problem with? Export this table as Tabula_export_Frie_Tab2.csv and upload it to the GitHub repo. 
12.	 Now try extracting a table from __one of your own__ PDFs. Go through the process you’ve just learned, export it as tabula_AUTHORSNAME_TAB#.csv, and upload it to your repo. 

## Using tabulizer.r to extract data from a PDF

_We’re going to now learn how to use essentially the same tool but in within an R environment, so that we can bring the data directly into R and begin using it. This is called tabulizer.r (learn about the package [here](https://cran.r-project.org/web/packages/tabulizer/vignettes/tabulizer.html)). This exercise was modeled off of the binder created for [ODAT 2.7](https://o-date.github.io/draft/book/scraping-data.html)._

1.  Fork this GitHub repo. Copy the URL of your new repo and go to mybinder.org. Paste the url into the space for 'github repository.' Make a note of the link for your binder.
