#!/bin/bash

pdf_file="pcir230.pdf"
subject=$(pdfinfo "$pdf_file" | grep "Subject:         " | awk '{print}')

echo "$subject"
