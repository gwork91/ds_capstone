---
title       : Data Science Capstone Project
subtitle    : John Hopkins University
author      : Palash Goyal
job         : Coursera
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Problem Statement

Prediction of the best possible word(s) which will be suggested to the user after he writes either a single word or a combination of words.

This is done on the basis of the historical data provided by the SwiftKey application.

The data is taken from a Corpus called <a href="http://www.corpora.heliohost.org/">HC Corpora</a>.

The project involved knowledge on Natural Language Processing and Text Mining, which has been gained by various resources, mainly <a href="https://class.coursera.org/nlp/lecture"> Coursera NLP </a>, and <a href="http://www.rdatamining.com/"> RDataMining </a>

Earlier a report on RPubs has also been published which gave a basic overview of the project work and the tasks accomplished and further strategy.
Link to the same is : <a href="http://rpubs.com/palashgoyal1/datasci_capstone"> RPubs_Report </a>.

--- .class #id 

## Dataset

The dataset for the prediction application has been built using the 3 types of available user written data. The 3 categories include data from News, Blogs and Twitter.

A Corpus has been created by merging all the three and then it was sampled to select around 300,000 lines from the merged combination.

The sample has been cleaned by putting on various constraints: converting to lower case, removing numbers, removing punctuations, removing abusive language,
 stripping off whitespaces, etc. Later, the sample has been segmented into various N-Grams. We have made use of 2-Grams, 3-Grams, and 4-Grams.
 
N-Grams are combination of words totalling to 'N'. So, any 2-Gram can be a combination of any 2 words : "i am", "he is", "how are".
It is featured with the frequency of each such type of possible combination throughout the dataset.

Similarly holds for other higher degree N-Grams as well.

--- .class #id

## Algorithm

For the entered text, the last Trigram(3-Gram) is considered and is then searched in the table of the Quadgram(4-Gram). 

- The entered Trigram is matched with the all the Quadgrams and the one which matches all the first 3 words and has the highest frequency is selected.
If there is any other possible case, then all are listed on the basis of their frequency. 

- In case there is no match in the Quadgram, then the last BiGram(2-Gram) is selected from the entered text and similar search on the basis of matching and frequency is performed in the TriGram series, and all the possible most frequent cases are suggested.

- In further case, if there is no match in TriGram as well, then the very last word of the entered text is taken and matching is done with all the BiGrams, and the best possible case is suggested.

--- .class #id

## Shiny App

A Shiny App has been created for the Data Science Capstone Project, 
please click here : <a href="https://palashgoyal1.shinyapps.io/project/"> Shiny App </a>.

The user will be required to enter some text (no as such constraint on the text length), then on the basis of the dataset we have a best possible suggestion will be given for the next word.
