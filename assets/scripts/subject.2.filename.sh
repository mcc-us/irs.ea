#!/bin/bash

# Replace "your_pdf_file.pdf" with the actual path to your PDF
pdf_file="pcir230.pdf"

# Use pdfinfo to extract the title
#title=$(pdfinfo "$pdf_file" | grep "Title:")

title=$(pdfinfo "$pdf_file" | grep "Title:")
# | awk '{print $(for (i=3; i<=NF; i++) printf " "$i})')


#subject=$(pdfinfo "$pdf_file" | grep "Subject:")

# Create a string with the title
#string=$title
#string2="Subject=$subject"

# Print the string
echo "$title"
#echo "$string2"


I want a bash script. 
The bash script will be placed in a directory containing many PDF files.  
I want the script to read the title from each PDF file from the document properties of the PDF. 
touch a file and name it "1.pdf.title.txt"
I want the title appended to a text file, "1.pdf.title.txt"


take the titles from all of the PDF file and return the Properties/documents/"Title:" and append the title to a pdf.txt file.


filename only without the extension in the directory.
I want the list of filenames ordered alphanumerically. 
Then, I want the filename placed into a line of text, 
"| filename | [title](/filename.ext) |" 
Where "/filename.ext" is the full name of the pdf file. 

Append the text to "pdf.txt"
