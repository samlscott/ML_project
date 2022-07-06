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
    fig_width: 3.5 # Adjust default figure sizes. This can also be done in the chunks of the text.
    fig_height: 3.5

#abstract: |
  #Abstract to be written here. The abstract should not be too long and should provide the reader with a good understanding what you are writing about. Academic papers are not like novels where you keep the reader in suspense. To be effective in getting others to read your paper, be as open and concise about your findings here as possible. Ideally, upon reading your abstract, the reader should feel he / she must read your paper in entirety.
editor_options: 
  markdown: 
    wrap: 72
---

<!-- First: Set your default preferences for chunk options: -->

<!-- If you want a chunk's code to be printed, set echo = TRUE. message = FALSE stops R printing ugly package loading details in your final paper too. I also suggest setting warning = FALSE and checking for warnings in R, else you might find ugly warnings in your paper. -->












# Introduction

The following paper is a comparison between two Machine Learning algorithms, namely Random Forests and Support Vector Machines, as prediction tools. Using a Linear Regression model as a baseline, the RMSE scores are compared.

# Research Question

Problem type: supervised binomial classification 

"Much like EDA, the ML process is very iterative and heurstic-based. With minimal knowledge of the problem or data at hand, it is difficult to know which ML method will perform best. This is known as the no free lunch theorem for ML (Wolpert 1996). Consequently, it is common for many ML approaches to be applied, evaluated, and modified before a final, optimal model can be determined. Performing this process correctly provides great confidence in our outcomes. If not, the results will be useless and, potentially, damaging.1"

"RMSE: Root mean squared error. This simply takes the square root of the MSE metric  so that your error is in the same units as your response variable. If your response variable units are dollars, the units of MSE are dollars-squared, but the RMSE will be in dollars. Objective: minimize"

# Data and Methodology 

The data used in this investigation is heart disease data from Kaggle. 

"Support vector machines (SVMs) offer a direct approach to binary classification: try to find a hyperplane in some feature space that “best” separates the two classes. In practice, however, it is difficult (if not impossible) to find a hyperplane to perfectly separate the classes using just the original features. SVMs overcome this by extending the idea of finding a separating hyperplane in two ways: (1) loosen what we mean by “perfectly separates”, and (2) use the so-called kernel trick to enlarge the feature space to the point that perfect separation of classes is (more) likely."

# Results and Discussion

## Random Forests 


```
## 
## Call:
##  randomForest(formula = heart_disease_present ~ ., data = train_1,      ntree = 500) 
##                Type of random forest: classification
##                      Number of trees: 500
## No. of variables tried at each split: 3
## 
##         OOB estimate of  error rate: 12.7%
## Confusion matrix:
##    0  1 class.error
## 0 70  6  0.07894737
## 1 10 40  0.20000000
```

![](ML_project_files/figure-latex/unnamed-chunk-5-1.pdf)<!-- --> 



```
## [1] 3
```


```
## mtry = 3  OOB error = 11.11% 
## Searching left ...
## mtry = 2 	OOB error = 9.52% 
## 0.1428571 0.01 
## Searching right ...
## mtry = 4 	OOB error = 13.49% 
## -0.4166667 0.01
```

![](ML_project_files/figure-latex/unnamed-chunk-7-1.pdf)<!-- --> 




```
##       mtry  OOBError
## 2.OOB    2 0.0952381
## 3.OOB    3 0.1111111
## 4.OOB    4 0.1349206
```

```
## [1] 2
```


```
## 
## Call:
##  randomForest(formula = heart_disease_present ~ ., data = train_1,      mtry = best.m, ntree = 601, importance = TRUE) 
##                Type of random forest: classification
##                      Number of trees: 601
## No. of variables tried at each split: 2
## 
##         OOB estimate of  error rate: 11.9%
## Confusion matrix:
##    0  1 class.error
## 0 71  5  0.06578947
## 1 10 40  0.20000000
```

![](ML_project_files/figure-latex/unnamed-chunk-10-1.pdf)<!-- --> 




![](ML_project_files/figure-latex/unnamed-chunk-12-1.pdf)<!-- --> 


```
## [1] 0.7407407
```
 



![](ML_project_files/figure-latex/unnamed-chunk-15-1.pdf)<!-- --> 


```
## [1] 0.7407407
```

![](ML_project_files/figure-latex/unnamed-chunk-17-1.pdf)<!-- --> 

## Support Vector Machine



![](ML_project_files/figure-latex/unnamed-chunk-19-1.pdf)<!-- --> 




![](ML_project_files/figure-latex/unnamed-chunk-21-1.pdf)<!-- --> 


```
## [1] 0.7777778
```






# Conclusion 

# Reference List 

# Appendix 


```
## 
##         0         1 
## 0.5555556 0.4444444
```
