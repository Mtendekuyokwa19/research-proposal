// APA 7th Edition Setup

#import "@preview/cetz:0.2.2": canvas, draw
#import "@preview/tablex:0.0.8": tablex, hlinex, vlinex, colspanx, rowspanx

// Document setup
#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.0cm, right: 2.0cm),
  number-align: bottom,
  numbering:"1"
)

#set text(
  size: 12pt,
  font: "Arial"
)
#show heading: it => [
  #v(6pt)  // Space before heading
  #it
  #v(6pt)  // Space after heading
]
#set par(
  leading: 0.65em, // 1.5 line spacing
)

#show cite: set text(weight: "regular")

// APA 7th Edition formatting for references

#set heading(numbering: "1.1")

// APA 7th Edition in-text citation format
#let cite-apa(author, year) = {
  "(" + author + ", " + year + ")"
}

#let cite-apa-page(author, year, page) = {
  "(" + author + ", " + year + ", p. " + page + ")"
}

// Title page
#set align(center)
#image("./assets/mubas-logo.png",width: 40%)
*MALAWI UNIVERSITY OF BUSINESS AND APPLIED SCIENCES*

#v(1em)
*SCHOOL OF SCIENCE AND TECHNOLOGY*

#v(1em)
*DEPARTMENT OF COMPUTER SCIENCE AND INFORMATION SYSTEMS*

#v(2em)

*PROGRAMME* 

Bachelor of Science in Information Technology

*MODULE* 

Project

*MODULE CODE* 

CIT-PRJ-411


*RESEARCH TITLE* 

 Development Of Tuberclosis Detection Model With Explainable Visualizations.


*SUBMITTED BY:* 

Mtende Kuyokwa

*REGISTRATION NUMBER:* 

BIT/22/SS/016

#v(2em)

*SUPERVISOR *

Dr Amelia Taylor

*DUE DATE:*

30 March 2026
#pagebreak()

// Table of Contents
#outline(
  title: "TABLE OF CONTENTS",
)


#pagebreak()

#set align(start)
= Chapter 1: Introduction

== Chapter Introduction
This chapter introduces the study project, presenting the background of Tuberculosis
and how Machine learning imaging models together with explainability take part in its management. The chapter focuses on the research problem, the aim of the
study and all objectives guiding the research.
The chapter also outline the research questions together with their supporting questions
. The main goal of this chapter is to provide a comprehensive overview of 
the project and why it is important to develop the Tuberculosis detection model with explainable visualizations.
== Background of the study
Tuberculosis , also known as white death, is a contagious disease caused by Mycobacterium tuberculosis bacteria @wikipedia. According to the World Health Organization, tuberculosis has caused over 2.5 million deaths in the African region. Narrowing into Malawi, the country has managed to combat Tuberculosis incidence with a 31% decline and  the TB/HIV coinfection rate has dropped by 43% @kuhes. In its goal to have 50% reduction in TB incidence by 2025, Malawi has been ultraPortable X-ray which can be used by different healthcare workers not only radiologists.

Machine learning models have become popular in Malawi and have been adopted in healthcare, where imaging models are used for tuberculosis detection @JobibaKuhes. In  the wake of combatting Tuberculosis, Malawi used CAD4TB @kuhes. CAD4TB is a portable Artifical Intelligence(AI) tuberculosis detection device. This device has predictive analysis and can work locally without internet connection. 
As this adoption of the imaging models grows, trusting responses is crucial for both doctors and clinicians. Trusting the responses from models has been done in a "black box" form, where users do not know the internal working of the models to lead to the presented response @ribeiro2016whyitrustyou. 

The lack of an explanation for the responses presents a challenge as doctors are not able to validate the responses without using a secondary resource like another model or a human expert. It also forces the use of these models to radiologist and leaves other clinicians as radiologists are the only one who validate the responses from the models @Nicholas2023.

== Problem Statement
Many hospitals in Malawi do not use Tuberculosis imaging model for detection despite having chest X-ray machine. This is due to multiple reasons one of them being lack of trust in it and responses @PhilLI. As a result, hospitals rely on radiologist and infectious disease experts to assist in the work. With the shortage of radiologists in Malawi @JobibaKuhes, delays in diagnosis are caused and usually in most hospitals, someone who is not skilled in the field is used to diagnose the disease. Henceforth, there is a need a comprehensive, tuberculosis model with explainable visualizations to aid both the skilled clinicians easily catch false positives in the model and the unskilled clinicians to easily understand the model's response.


== Aim and objectives
=== Aim

=== Objectives
== Significance of study
== Conclusion

#bibliography("ref.bib",style: "./apa.csi",title: "References" )
