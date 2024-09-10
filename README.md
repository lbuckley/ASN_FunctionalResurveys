# ASN Functional Resurveys
Analyses associated with an overview of functional resurvey introducing the ASN Vice Presidental Symposium.

# GENERAL INFORMATION

This README.md file was updated on September 10, 2024 by Lauren Buckley

## A. Paper associated with this archive 
Citation: Buckley LB et al. Quantifying organismal function through time to detect ecological and evolutionary responses to environmental change

Brief abstract: Heterogeneity and seeming unpredictability in phenology, abundance, and distribution responses to climate change is driving a push to understand the underlying organismal mechanisms. The 2024 Vice Presidential Symposium of the American Society of Naturalists aimed to catalyze a promising and underutilized approach to solving the problem of unpredictability in climate change biology: repeating experiments or otherwise quantifying organism function through time. Many “historical” physiological, behavioral, ecological, and evolutionary experiments or observations reported in journal articles and elsewhere offer the potential for repeating the data collection to detect ecological or evolutionary responses to environmental change. The approach extends beyond resurrection studies, which revive organisms to compare function and performance of modern organisms to their historic counterparts but are severely taxonomically and logistically restricted. In this article introducing the special section, we discuss the promise of functional resurveys and highlight exemplar research repeating physiological measurements, behavioral experiments or observations, selection and quantitative genetic experiments, and measurement of ecosystem function.  We also feature novel approaches to infer function from both modern and historic specimens, including temporal genomics, quantifying composition or energy stores, and genomic reconstruction. The research is revealing key organismal mechanisms that mediate responses to environmental changes and can be accounted for to improve ecological and evolutionary forecasts.

## B. Originators

Lauren B. Buckley, Department of Biology, University of Washington, Seattle, WA 98195-1800, USA

## C. Contact information
Lauren Buckley
Department of Biology, University of Washington, Seattle, WA 98195-1800, USA
lbuckley@uw.edu

## D. Dates of data collection
No new data are collected, but see references for past data utilized. 

## E. Geographic Location(s) of data collection
See source publications

## F. Funding Sources 
This research was supported by the US National Science Foundation (DEB-1120062 and IOS- 2222089 to L.B.B.).

# ACCESS INFORMATION

## 1. Licenses/restrictions placed on the data or code
CC0 1.0 Universal (CC0 1.0)
Public Domain Dedication

## 2. Data derived from other sources
data/dickman_et_al_2019_emergence.csv from Dickman et al. 2019
data/data_ClaytonSpicer2020.csv from Clayton and Spicer 2020 

## 3. Recommended citation for this data/code archive
Buckley LB et al. 2024. Quantifying organismal function through time to detect ecological and evolutionary responses to environmental change. https://github.com/lbuckley/ASN_FunctionalResurveys. 

Data and code will be archived in Zenodo upon acceptance.

# DATA & CODE FILE OVERVIEW

This data repository consist of 2 data files, 1 code script, and this README document, with the following data and code filenames and variables

## Data files and variables
1. data/dickman_et_al_2019_emergence.csv from Dickman et al. 2019

pop:	population, divided into three lowest elevation, three intermediate and three high. See Figure 1. 

year:	generation, 1= pre drought, 2= drought

cohort:	germination cohort (O=untreated; GA=gibberelic acid; V=vernalized), see Methods

elevation_m:	elevation of each population (site) in meters 

tray:	planting tray

timeemer: days to emergence 

emerged:	1= did not emerge (censored value is 220 for generation 1 and 22 for generation 2, the day the experiments ended), 2=emerged

2. data/data_ClaytonSpicer2020.csv. Extracted from Fig. 1 in Clayton and Spicer 2020

year: study year

salinity: salinity (arbitrary units)

wound_healing_time_d: wound healing time (day)

## Code scripts and workflow
1. ResurveyPlots.R: code for producing figure 2

# SOFTWARE VERSIONS
R version 4.1.0 (2021-05-18)

Packages:

library(ggplot2) #ggplot2_3.4.4

library(reshape2) #reshape2_1.4.4

library(patchwork) #patchwork_1.2.0

library(plyr) #plyr_1.8.8

library(dplyr) #dplyr_1.1.2

library(tidyr) #tidyr_1.3.0

# REFERENCES
Clayton, K. A., and J. I. Spicer. 2020. Evidence for physiological niche expansion of an intertidal flatworm: evolutionary rescue in the wild. Marine Ecology Progress Series 651:85–95.

Dickman, E. E., L. K. Pennington, S. J. Franks, and J. P. Sexton. 2019. Evidence for adaptive responses to historic drought across a native plant species range. Evolutionary Applications 12:1569–1582.

