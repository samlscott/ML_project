---
# IMPORTANT: Change settings here, but DO NOT change the spacing.
title: "Data Science: Machine Learning"
subtitle: "Predicting Heart Disease"
documentclass: "elsarticle"
Thesis_FP: FALSE
# Entry1: "An unbelievable study with a title spanning multiple lines."
# Entry2: "\\textbf{Nico Katzke}" # textbf for bold
# Entry3: "A thesis submitted toward the degree of Doctor of Philosophy"
# Uni_Logo: Tex/Logo.png # Place a logo in the indicated location (from your root, e.g. defaults to ~/Tex/Logo.png) and uncomment this line. Leave uncommented for no image
# Logo_width: 0.3 # If using a logo - use this to set width (size) of image
# Entry4: "Under the supervision of: \\vfill Prof. Joe Smith and Dr. Frank Smith"
# Entry5: "Stellenbosch University"
# Entry6: April 2020
# Entry7:
# Entry8:
# Comment: ----- Follow this pattern for up to 5 authors
AddTitle: TRUE # Use FALSE when submitting to peer reviewed platform. This will remove author names.
Author1: "Samantha Scott"  # First Author - note the thanks message displayed as an italic footnote of first page.
Ref1: "Stellenbosch University, Cape Town, South Africa" # First Author's Affiliation
Email1: "20945043\\@sun.ac.za" # First Author's Email address
keywords: "Machine Learning \\sep Heart Disease Prediction \\sep Random Forests" # Use \\sep to separate
#JELCodes: "L250 \\sep L100"
# ----- Manage headers and footers:
#BottomLFooter: $Title$
#BottomCFooter:
#TopLHeader: \leftmark # Adds section name at topleft. Remove comment to add it.
BottomRFooter: "\\footnotesize Page \\thepage" # Add a '#' before this line to remove footer.
addtoprule: TRUE
addfootrule: TRUE               # Use if footers added. Add '#' to remove line.
# --------- page margins:
margin: 2.3 # Sides
bottom: 2 # bottom
top: 2.5 # Top
HardSet_layout: TRUE # Hard-set the spacing of words in your document. This will stop LaTeX squashing text to fit on pages, e.g.
linenumbers: FALSE # Used when submitting to journal
# ---------- References settings:
# You can download cls format here: https://www.zotero.org/ - simply search for your institution. You can also edit and save cls formats here: https://editor.citationstyles.org/about/
bibliography: Tex/ref.bib       # Do not edit: Keep this naming convention and location.
csl: Tex/harvard-stellenbosch-university.csl # referencing format used.
# By default, the bibliography only displays the cited references. If you want to change this, you can comment out one of the following:
#nocite: '@*' # Add all items in bibliography, whether cited or not
# nocite: |  # add specific references that aren't cited
# ---------- General:
RemovePreprintSubmittedTo: TRUE  # Removes the 'preprint submitted to...' at bottom of titlepage
Journal: "Journal of Finance"   # Journal that the paper will be submitting to, if RemovePreprintSubmittedTo is set to TRUE.
toc: TRUE                       # Add a table of contents
numbersections: TRUE             # Should sections (and thus figures and tables) be numbered?
fontsize: 11pt                  # Set fontsize
linestretch: 1.2                # Set distance between lines.
link-citations: TRUE            # This creates dynamic links to the papers in reference list.
### Adding additional latex packages:
# header-includes:
output:
  pdf_document:
    keep_tex: TRUE
    keep_md: TRUE
    template: Tex/TexDefault.txt
    fig_width: 2 # Adjust default figure sizes. This can also be done in the chunks of the text.
    fig_height: 2

#abstract: |
  #Abstract to be written here. The abstract should not be too long and should provide the reader with a good understanding what you are writing about. Academic papers are not like novels where you keep the reader in suspense. To be effective in getting others to read your paper, be as open and concise about your findings here as possible. Ideally, upon reading your abstract, the reader should feel he / she must read your paper in entirety.
editor_options: 
  markdown: 
    wrap: 72
---

<!-- First: Set your default preferences for chunk options: -->

<!-- If you want a chunk's code to be printed, set echo = TRUE. message = FALSE stops R printing ugly package loading details in your final paper too. I also suggest setting warning = FALSE and checking for warnings in R, else you might find ugly warnings in your paper. -->

















# Introduction

As Boehmke and  Greenwell (2020) state, the Machine Learning process is very iterative and heuristic-based. It is difficult to establish which Machine Learnign method with perform best as a predictive tool, with minimal knowledge of the problem or data at hand. This dilemma is known as the no free lunch theorem. The aim of this paper is to predict heart disease amongst patients, using be the performing predictive tool.

The investigation consists of a comparison between two Machine Learning algorithms, namely Random Forests and Support Vector Machines, as prediction tools. In order to assess the predictive powers of the aforementioned methods, data on possible heart disease patients is used. The process of using Machine Learning algorithms to predict heart disease amongst patients has been broadly explored. This investigation serves to contribute to this body of literature by comparing two predominant Machine Learning algorithms. Ultimately, the results of this paper indicate that both Random Forests as well as Support Vector Machines showcase strong predictive powers, with a classification accuracy of above 70%. Further, the models do not gain predictive power once being fine tuned, indicating that the basic model is sufficient enough, given the data and problem.
 
The paper is structured as follows: section 2 provides an overview of the research question as well the data used to solve the problem at hand, section 3 provides information on the the methodology followed when generating the Random Forest and Support Vector Machine models, section 4 presents and discusses the results of the models, section 5 highlights the robustness checks implemented to verify the outcomes of the models, and lastly, section 6 contains the concluding remarks of the paper. 

# Research Question and Data

The main goal of the Machine Learning process is to find an algoritmn that most accurately predicts future values based on a set of features.
This paper aims to establish which Machine Leaning algorithm performs best when predicting whether a patient has heart disease, or not. The problem at hand is expressed as a supervised binomial classification problem. The data used in this investigation is heart disease data from Kaggle and contains 180 observations. Kaggle is an online platform where data scientists and machine learning practitioners can access datasets as well as build portfolios. The benefit of obtaining data from this source, is the usability score assigned to the dataset. This particular dataset is assinged a higher usability score.

The data used contains a number of health related indicators. For this investigation, the dependent variable is the presence of heart disease in a patient. This variable is a binomial, yes or no, variable. Using other indicators, such as age, whether a patient has a blood disorder called thalassemia as well as the type of chest pain a patient is experiencing, models are generated to predict if the patient has heart disease. 

# Methodology 

For this investigation, code written in R is used. From this code, two Machine Learning algorithms are applied to the data. The first, a Random Forest (RF) and the second, a Support Vector Machine (SVM). To conduct these methods, the data is split into training and testing data. The ratio used is 70:30, respectively. This means that 70% of the data is used for training and the remaining 30% is for testing the model. The data is split using base R and the simple random sample method. This method is used as the responses do not vary much, with a ratio of 5.6 to 4.4. The training data is used to develop feature sets, train our algorithmns, tune hyperparameters, compare models etc. The test data is used to estimate an unbiased assessment of the model's performance. For this paper, the classification accuracy between the models is compared. The classification accuracy measures the number of correct predictions made, divided by the total number of predictions made. This evaluation method is the most popular one for classification problems. 

## Random Forests

The Random Forest algorithmn is a modification of the bagged decision trees, which express better predictive performance. Using the randomForest package, a Random Forest model (RFM 1) is generated using the training data. Using the testing data, a condusion matirx is presented. Although a Random Forest performs well, there are tunable hyper parameters that may be implemented when tuning the model. To do this, the number of trees are adjusted, and the best $m_{try}$ value is applied to the model. The number of trees needs to be large to stabilise the error rate. According to Boehmke and Greenwell (2020), it is suggested that the model starts with 10 times the number of features, in this case, there are 13 features. However, once other hyper parameters are adjusted, more or less trees may be required. For the second Random Forest model, the number of trees is set to the default, and performs slightly better. The next hyper parameter considered is $m_{try}$. Once the best $m_{try}$ is computed, the value is inserted into the model. By doing this, the classification accuracy of the model is slightly improved, which is presented by the confusion matrix. Alternative methods of evaluating the models performance to the classification accuracy is also consulted, namely ROC curves as well as variable's importance. 

\newpage
## Support Vector Machine 

Using the Caret package, a Support Vector Machine model (SVM 1) is generated. Support Vector Machines provide a direct approach to binary classification. A Support Vector Machine is a supervised Machine Learning algorithm which is used to classify data into different classes. This approach makes use of a hyperplane - which is a decision boundary between the classes. Before training the data, the traincontrol() is implemented. This allows the train() function to be used under the caret package. The list returned by the traincontrol() method is placed into the train() method. A confusion matrix is presented, depiced the accuracy of this base model. Once this is done, the model is hyper parametised by assigning values to the penalty parameter of the error term (C). This is the degree of correct classification that the algorithmn has to meet. Once again, the results are presented in the form of a confusion matrix

\newpage
# Results and Discussion

The next section of the paper presents the results of the data manipulation and methods used. The results are presented as plots and diagrams, to better illustrate the outcomes. 

## Random Forests

The figure below is an illustration of the first Random Forest Model (RFM 1). The number of trees selected for the first model is 130. As the graph depicts, starting with 10 times the number of features typically ensures the error estimate converges.

![](ML_project_files/figure-latex/unnamed-chunk-7-1.pdf)<!-- --> 
\newpage
The figure below is a diagram of the confusion matrix for RFM 1. The graph depicts that a notable percentage of the "yes" and "no" (1 and 0, respectively) values are correctly predicted. 

![](ML_project_files/figure-latex/unnamed-chunk-8-1.pdf)<!-- --> 
\newpage
Below is a graphical representation of the optimal number assigned to $m_{try}$. As this is a Machine Learning algorithm, each time the code is run, a different optimal $m_{try}$ may be revealed.  


```
## mtry = 3  OOB error = 12.7% 
## Searching left ...
## mtry = 2 	OOB error = 11.11% 
## 0.125 0.01 
## Searching right ...
## mtry = 4 	OOB error = 11.9% 
## -0.07142857 0.01
```

![](ML_project_files/figure-latex/unnamed-chunk-9-1.pdf)<!-- --> 
\newpage
The graph below depicts the second Random Forest model, RFM 2. In this model, the number of trees in increased to the default 500 and the best $m_{try}$ value is inserted into the function. 

![](ML_project_files/figure-latex/unnamed-chunk-10-1.pdf)<!-- --> 
\newpage
The confusion matrix of RFM 2 is depicted below. As shown in the diagram, RFM 2 performs equally as well as RFM 1. The hyper parameters did not impact the predictive power of the model. 

![](ML_project_files/figure-latex/unnamed-chunk-11-1.pdf)<!-- --> 
\newpage
The ROC curves for the two Random Forest models are presented below. Another way to assess the strength of the Random Forest models is to compare the area under the ROC curves for each model. As the graphs depict, the area is similar, indicating similar predictive power between RFM 1 and RFM 2. The red and blue curves indicate the ROC RFM 1 and 2 respectively.

![](ML_project_files/figure-latex/unnamed-chunk-12-1.pdf)<!-- --> 

\newpage
The variable importance of the two Random Forest models are presented below. The mean decrease accuracy provides an estimate of the loss in prediction performance when that variable is omitted from the training dataset. For RFM 1, the variable that idicates if a patient has thalassemia is seen as the most important variable. In the variable importance graph for RFM 2, the variable indicating the chest pain type is the most important variable.

![](ML_project_files/figure-latex/unnamed-chunk-13-1.pdf)<!-- --> 


![](ML_project_files/figure-latex/unnamed-chunk-14-1.pdf)<!-- --> 
\newpage
Below are the graphs for a third Random Forest model (RFM 3). In this model, the bottom three variables of the variable importance plots above are omitted. As shown in the confusion matrix below, this does slightly impact the predictive power of the model. RFM 3 has the highest classification accuracy, however, the model also has the highest rmse score. The rmse score is below 0.5, showcasing that the model is still a somewhat accurate predictor. 



![](ML_project_files/figure-latex/unnamed-chunk-16-1.pdf)<!-- --> 

\newpage
## Support Vector Machine

Below is the confusion matrix for the first Support Vector Machine model, SVM 1. As the figure depicts, the majority of the responses are correctly predicted. 





![](ML_project_files/figure-latex/unnamed-chunk-19-1.pdf)<!-- --> 

\newpage
The graph below depicts the values assigned to the C parameter of the Support Vector Machine model, the values range from 0 to 2.5. Once this is applied to the model, there is no significant change in the classification accuracy of the model.

![](ML_project_files/figure-latex/unnamed-chunk-20-1.pdf)<!-- --> 

\newpage
The figure below is the confusion matrix for the second Support Vector Machine model, SVM 2. As the graph depicts, the model has predicted a majority of the responses correctly.



![](ML_project_files/figure-latex/unnamed-chunk-22-1.pdf)<!-- --> 

As the results of the investigation establish, the two Machine Learning algorithms (Random Forests and Support Vector Machines) are both adequate predictive tools when attempting to depict heart disease in patients in their base form as well as after fine tuning. The classification accuracies of the algorithms remain similar to one another before and after hyper parametising. 

\newpage
# Robustness Checks

Due to the similar results (namely the classification accuracy) presented by the models, an attempt to assess the validity of the models is implemented. To do this, a robustness check in which the dataset is altered, is conducted. The binomial dependent variable in the data is manually altered. Roughly, 50 values is changed. Once the changes are made, the code is run. The outcomes show a classification accuracy of around 50% for both the Random Forest and Support Vector Machine models. This indicates that with a dataset that is more difficult to predict outcomes with, the models perform on a similar level. As another robustness check, an alternative package for Random Forests is used. In line with Boehmke & Greenwell (2020), the ranger package is applied. The results indicate that the Random Forest models have rmse scores of between 3 and 4, with that of the second being the lowest.

# Conclusion 

In conclusion, this paper reveals that Support Vector Machine model slightly outperforms the Random Forest model when predicting the presence of heart disease amongst patients. It is important to note that both models, base as well as fine-tuned of each algorithmn, provides an acceptable classification accuracy of above 70%. After conducting robustness checks, it is established that the outcomes of the models are reliable. 

\newpage
# Reference List 

Boehmke, B. & Greenwell, B. 2020. *Hands-On Machine Learning with R*. CRC Press

\newpage
# Appendix 

## Classification Accuracies

### RFM 1:

```
## [1] 0.7222222
```

### RFM 2:

```
## [1] 0.7222222
```

### RFM 3


```
## [1] 0.7592593
```

### SVM 1:

```
## [1] 0.7592593
```

### SVM 2:

```
## [1] 0.7407407
```

## RFM 1, 2 & 3: Ranger Results

```
## [1] 0.3563483
```


```
## [1] 0.3779645
```


```
## [1] 0.4454354
```
