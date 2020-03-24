![](https://drive.google.com/uc?id=1DSCPs2Dd90E-4rwU7VH5AX9uC8kbjUCv)

# introduction

orange-cxr-classifier is a collection of supervised trained machine learning model, trained to classify images of Chest X-Ray (CXR).  All model is trained using posterior-anterior x-ray images from [open database of COVID-19 cases chest X-ray](https://github.com/ieee8023/covid-chestxray-dataset) published [here](https://github.com/ieee8023/covid-chestxray-dataset) by Joseph Paul Cohen. This trained model is to be use within **Orange Data Mining program**.

# requirements

1. Orange Data Mining
2. Image Analytics Addon for Orange Data Mining

# usage

## predicting

### You need:
1. Images of CXR you want to analyze
2. Orange Data Mining with **Image Analytics Add-on** installed
3. A trained model (you can get it from **trained-model** folder in this repository)
4. Orange Workflow file **predict-cxr.ows** (you can get this file from this repository)

### Steps:
1. Open Orange Workflow file **predict-cxr.ows** from within Orange Data Mining program.
2. Follow instruction from step 1 to 8.

![](https://drive.google.com/uc?id=1cuZW6kK2TyItq439YzyrCbwojDzjyCRc)

## training
### You need:
1. **awk** or any awk variation, eg, **gawk** (awk is a domain-specific language designed for text processing)
2. **COVID-19 image data collection repository** (can be downloaded [here](https://github.com/ieee8023/covid-chestxray-dataset))
3. **unix or unix-like terminal** (you might want to use cygwin or windows subsystem for linux)
4. Orange Data Mining with **Image Analytics Add-on** installed
5. Orange Workflow file **train-cxr.ows** (you can get this file from **training-tool** folder in this repository)
6. **parsemetadata.awk** (you can get this file from **training** folder in this repository)

### Steps:
1. Extract **COVID-19 image data collection repository**
2. Copy **parsemetadata.awk** into **COVID-19 image data collection repository** main directory
3. Launch your unix/unix-like terminal and execute **parsemetadata.awk** with **awk** using this command:
```bash
awk -f parsemetadata.awk metadata.csv
```
4. This command will sort all image file found in metadata.csv into appropriate folder for training

![](https://drive.google.com/uc?id=1GGC2t3r6x5SMll-ObIVqoelMPtRkWPMg)

5. If everything goes ok, then you are now ready to start the training from within orange data mining.
6. Launch **orange data mining** and open **train-cxr.ows** workflow file.
7. Continue following instruction from within the workflow file.

![](https://drive.google.com/uc?id=1c4qRHtpf8sFzxIEocENOZ-zNp2UF3jC4)

# license
Copyright (C) 2020 Mohd Kholid Yaacob (http://mrharmonies.blogspot.com)

This source is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This code is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

A copy of the GNU General Public License is available on the World Wide Web at http://www.gnu.org/copyleft/gpl.html. You can also obtain it by writing to the Free Software Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston, MA 02110-1335, USA.
