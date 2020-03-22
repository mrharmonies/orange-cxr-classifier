![](https://drive.google.com/uc?id=1DSCPs2Dd90E-4rwU7VH5AX9uC8kbjUCv)

# introduction

orange-cxr-classifier is a collection of supervised trained machine learning model, trained to classify images of Chest X-Ray (CXR).  All model is trained using posterior-anterior x-ray images from [open database of COVID-19 cases chest X-ray](https://github.com/ieee8023/covid-chestxray-dataset) published [here](https://github.com/ieee8023/covid-chestxray-dataset). This trained model is to be use within **Orange Data Mining program**.

# requirements

1. Orange Data Mining
2. Image Analytics Addon for Orange Data Mining

# usage

## predicting

### You need:
1. Images of CXR you want to analyze
2. Orange Data Mining with **Image Analytics Add-on** installed
3. A trained model (you can get it from **trained-model** in this repository)
4. Orange Workflow file **predict-cxr.ows** (you can get this file from this repository)

### Steps:
1. Open Orange Workflow file **predict-cxr.ows** from within Orange Data Mining program.
2. Follow instruction from step 1 to 8.

![](https://drive.google.com/uc?id=1cuZW6kK2TyItq439YzyrCbwojDzjyCRc)

## training
.. to be continued ..
