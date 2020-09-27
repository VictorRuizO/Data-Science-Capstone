Text Prediction Model
========================================================
author: Victor Duvan Ruiz O.
date: September, 2020
Coursera Data Science Capstone Final Project

***Project Goal / Problem to solve:***
When using mobile devices, the capability of having a text prediction can help the user type words faster with greater accuracy. Two key metrics for this capability to be successful will involve accuracy and prediction speed.  With this challenge in mind, we have set out to build a fast and accurate prediction app that will predict the next word in a given sentence.

Product Introduction
========================================================

The "Next Word Prediction" app is our answer to the problem.

Features:

<font size = "5">

* ***Reactive*** The app processes the prediction reactively as the user types in words
* ***3 predictions*** Our app provides three predictions to increase coverage of the possible desired words
* ***Profanity filter*** To prevent any potential lawsuits, our product also censors profanity
* ***Accurate and fast*** Using 50% of the training set data, we were able to achieve 25.1% prediction accuracy with a prediction speed of 0.11 second.
  
</font>

Explanation of the internal algorithm
========================================================
<font size="5">

Initially, the first prototype of our product utilized a complex design that had logic based on the presence of stopwords.  That initial model started with a low prediction accuracy of 10.1%.  Through research, we found that the best improvements in accuracy came from:

1. selecting the right data (type of data, eliminating outliers)
2. cleaning the data source (punctuation, ordinal numbers)
3. the amount of data used in the training set

This release of the prediction model utilizes a simple backoff model.  Based on the number of words provided, we first try to match the last 3 words using a "4 ngram" data set.  If no matches are found, we repeat the process with 3 ngrams and 2 ngrams.  The ngram data sets were also trimmed to increase prediction speed by removing any prediction that had more than 3 possible results - since we only provide 3 predictions, any excess is unnecessary.

Our accuracy of 25.1% was achieved by using 50% of the training set but then cutting back dramatically on single occurence tokens.  This creates an accurate data set but at a small file size for fast load and prediction speeds.  The prediction accuracy will most likely go up if a larger training set is used, but we were constrained by time and resources.  All accuracy measurements are done using OOSE (Out Of Sample Error) validation data sets with 10k observations.

 </font> 

Investor Pitch
========================================================
<font size = "6">

* The results from this application was built in under one month's time out of a bedroom.  Considering the significant progress and the extensive potential for upgrades, a simple investment of $0.2M and a year's time will have the possible return of producing an prediction app with 40% accuracy.  This level of accuracy will rival the best prediction apps in the market.

* Wouldn't cell phone manufacturers pay $0.01 for the best prediction app?  With 7.2 billion mobile devices in the world, the ROI would be $72M.  That would be a whopping 360x return on the initial investment!



</font>

Link to the Shiny App and Instructions
========================================================
<font size = "5">
https://victorruizo.shinyapps.io/text_prediction_model/

### ***Instructions:*** <br>
After the app loads, simply enter the sentence of text into the input box.  The application will automatically react and process a prediction output.  If the word is mispelled or rare, you may receive an "null" response.  Enjoy!

### Shiny Application Developed by:

* Victor Duvan Ruiz with the support of Coursera


