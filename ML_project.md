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

# Data and Methodology 

The data used in this investigation is heart disease data from Kaggle. 

# Results 

## Linear Regression


```
## 
## Call:
## lm(formula = heart_disease_present ~ ., data = heart_d)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.81385 -0.23535 -0.07213  0.25418  0.90884 
## 
## Coefficients:
##                                        Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                          -0.3435048  0.4431192  -0.775 0.439319    
## slope_of_peak_exercise_st_segment     0.0995764  0.0609650   1.633 0.104282    
## resting_blood_pressure                0.0008023  0.0017905   0.448 0.654683    
## chest_pain_type                       0.1120314  0.0329010   3.405 0.000828 ***
## num_major_vessels                     0.1438576  0.0328175   4.384 2.06e-05 ***
## fasting_blood_sugar_gt_120_mg_per_dl -0.0479164  0.0801823  -0.598 0.550921    
## resting_ekg_results                   0.0244777  0.0286543   0.854 0.394196    
## serum_cholesterol_mg_per_dl           0.0005870  0.0005571   1.054 0.293524    
## oldpeak_eq_st_depression              0.0616716  0.0334386   1.844 0.066907 .  
## sex                                   0.2413338  0.0638961   3.777 0.000220 ***
## age                                  -0.0028883  0.0036829  -0.784 0.434008    
## max_heart_rate_achieved              -0.0014835  0.0016266  -0.912 0.363063    
## exercise_induced_angina               0.1960958  0.0695805   2.818 0.005412 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.3685 on 167 degrees of freedom
## Multiple R-squared:  0.4899,	Adjusted R-squared:  0.4532 
## F-statistic: 13.36 on 12 and 167 DF,  p-value: < 2.2e-16
```

```
## [1] 0.3684575
```


## Random Forests 







```
## [1] 0.4178554
```











```
##    
##      0  1
##   0 16  8
##   1  7 23
```


```
## [1] 0.7222222
```

## Support Vector Machine




# Conclusion 

# Reference List 
