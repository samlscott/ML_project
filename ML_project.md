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









```
## Recipe
## 
## Inputs:
## 
##       role #variables
##    outcome          1
##  predictor         13
## 
## Operations:
## 
## Dummy variables from all_nominal()
```



```
## 
##         0         1 
## 0.5555556 0.4444444
```




# Introduction

The following paper is a comparison between two Machine Learning algorithms, namely Random Forests and Support Vector Machines, as prediction tools. Using a Linear Regression model as a baseline, the RMSE scores are compared.

# Research Question

Problem type: supervised binomial classification 

"Much like EDA, the ML process is very iterative and heurstic-based. With minimal knowledge of the problem or data at hand, it is difficult to know which ML method will perform best. This is known as the no free lunch theorem for ML (Wolpert 1996). Consequently, it is common for many ML approaches to be applied, evaluated, and modified before a final, optimal model can be determined. Performing this process correctly provides great confidence in our outcomes. If not, the results will be useless and, potentially, damaging.1"

"RMSE: Root mean squared error. This simply takes the square root of the MSE metric  so that your error is in the same units as your response variable. If your response variable units are dollars, the units of MSE are dollars-squared, but the RMSE will be in dollars. Objective: minimize"

# Data and Methodology 

The data used in this investigation is heart disease data from Kaggle. 

# Results and Discussion

## Linear Regression


```
## 
## Call:
## lm(formula = heart_disease_present ~ ., data = heart_d)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.87287 -0.22568 -0.04891  0.20849  0.93636 
## 
## Coefficients:
##                                        Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                          -0.1608082  0.4533297  -0.355  0.72325    
## slope_of_peak_exercise_st_segment     0.0830549  0.0594343   1.397  0.16416    
## thalnormal                           -0.0801911  0.1419747  -0.565  0.57296    
## thalreversible_defect                 0.1745812  0.1394239   1.252  0.21228    
## resting_blood_pressure                0.0006047  0.0017496   0.346  0.73005    
## chest_pain_type                       0.0885153  0.0324033   2.732  0.00699 ** 
## num_major_vessels                     0.1346337  0.0318310   4.230 3.87e-05 ***
## fasting_blood_sugar_gt_120_mg_per_dl -0.0414389  0.0778126  -0.533  0.59506    
## resting_ekg_results                   0.0378482  0.0279049   1.356  0.17685    
## serum_cholesterol_mg_per_dl           0.0004803  0.0005405   0.889  0.37551    
## oldpeak_eq_st_depression              0.0421798  0.0327468   1.288  0.19953    
## sex                                   0.1591962  0.0667508   2.385  0.01822 *  
## age                                  -0.0024920  0.0035588  -0.700  0.48476    
## max_heart_rate_achieved              -0.0014613  0.0015861  -0.921  0.35825    
## exercise_induced_angina               0.1458715  0.0688974   2.117  0.03574 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.3559 on 165 degrees of freedom
## Multiple R-squared:  0.5298,	Adjusted R-squared:   0.49 
## F-statistic: 13.28 on 14 and 165 DF,  p-value: < 2.2e-16
```

```
## [1] 0.3558662
```

![](ML_project_files/figure-latex/unnamed-chunk-7-1.pdf)<!-- --> 
 
## Random Forests 


```
## [1] 0.3391407
```


## Support Vector Machine


# Conclusion 

# Reference List 
