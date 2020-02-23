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

