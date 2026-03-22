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
  font:""
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
= Chapter One: Introduction

This chapter introduces the study project, presenting the background of Tuberculosis
and how Machine learning imaging models together with explainability take part in its management. The chapter focuses on the research problem, the aim of the
study and all objectives guiding the research.
The chapter also outline the research questions together with their supporting questions
. The main goal of this chapter is to provide a comprehensive overview of 
the project and why it is important to develop the Tuberculosis detection model with explainable visualizations.
== Background of the study
Tuberculosis , also known as white death, is a contagious disease caused by Mycobacterium tuberculosis bacteria @wikipedia. According to the World Health Organization, tuberculosis has caused over 2.5 million deaths in the African region. Narrowing into Malawi, the country has managed to combat Tuberculosis incidence with a 31% decline and  the TB/HIV coinfection rate has dropped by 43% @kuhes. In its goal to have 50% reduction in TB incidence by 2025, Malawi has been ultraPortable X-ray which can be used by different healthcare workers not only radiologists.

Machine learning models have become popular in Malawi and have been adopted in healthcare, where imaging models are used for tuberculosis detection @JobibaKuhes. In  the wake of combatting Tuberculosis, Malawi used Computer Aided Detection for Tuberculosis(CAD4TB) @kuhes. CAD4TB is a portable Artifical Intelligence(AI) tuberculosis detection device. This device has predictive analysis and can work locally without internet connection. 
As this adoption of the imaging models grows, trusting responses is crucial for both doctors and clinicians. Trusting the responses from models has been done in a "black box" form, where users do not know the internal working of the models to lead to the presented response @ribeiro2016whyitrustyou. 

The lack of an explanation for the responses presents a challenge as doctors are not able to validate the responses without using a secondary resource like another model or a human expert. It also forces the use of these models to radiologist and leaves other clinicians as radiologists are the only one who validate the responses from the models @Nicholas2023.

== Problem Statement
Many hospitals in Malawi do not use Tuberculosis imaging model for detection despite having chest X-ray machine. This is due to multiple reasons namely, technology devices like CAD4TB which has embeded models are expensive. Secondly,   lack them being lack of trust in model responses as they lack explainability @PhilLI. As a result, hospitals rely on radiologist and infectious disease experts to assist in the work. With the shortage of radiologists in Malawi @JobibaKuhes, delays in diagnosis are caused and usually in most hospitals, someone who is not skilled in the field is used to diagnose the disease. Henceforth, there is a need a comprehensive, tuberculosis model with explainable visualizations to aid both the skilled clinicians easily catch false positives in the model and the unskilled clinicians to easily understand the model's response.


== Aim and objectives
=== Aim
The aim of this project is to develop a tuberculosis detection model with explainable visualizations.
=== Objectives
The objectives of this project are:
- To collect tuberculosis data
- To develop a tuberculosis detection model.
- To develop an explainable visualization for the tuberculosis detection model.
- To develop an interface for interaction with models
== Research Questions
The research questions of this project are:
- How does tuberculosis detection model with explainable visualizations impact analysis?
- How efficient is a model that is running locally going to affect performance of clinicians?
- What do different explainable engines affect clinicians in their decision making?
== Significance of study
This study is significant as it directly combats tuberculosis as whilst reducing cost and increasing adoptability parameters.
As imaging models increase in adoption, catching errors in them has never become more important as these errors can lead to misdiagnosis and wrong treatment. 
The development of a tuberculosis model with explainability is of great importantance, as it allows catching errors during diagnosis. It also allows the clinicians to easily understand under the hood of the  model hence better guide people responsible for training models on how to patch the models.
Furthermore, this study fits in malawian context as portable CAD4TB are being pushed by the ministry of health @kuhes. However, these existing models are bound to CAD4TB devices and demands a technical person to understand them. The purchase of the CAD4TB can be slow as the country faces forex issue hence need for development of the models locally.  

== Summary
In conclusion, this study aims to develop a tuberculosis detection model with explainable visualizations. The development focuses on catching false positives and false negatives. By providing a providing a portable interface it will have a similar or larger impact as CAD4TB. The portability and low-cost of the model will also increase adoption in local hospitals and assist in the combating of TB in Malawi. 

#pagebreak()
= Chapter Two: Literature Review

*Chapter Introduction*

This chapter presents the literature review for the development of a tuberculosis detection model with explainable visualizations, structuring the  groundwork for the building the interface, imaging model and explainable visualizations engines.
The chapter begins with discussion of key concepts so that we unfold the meaning of terms used in the study then later evaluates current systems and their weaknesses. The chapter concludes by looking into the research gap and how this study will address the gap.

== Key Concepts and Terms
=== Artificial Intelligence
Artificial intelligence (AI) is the capability of computational systems to perform tasks typically associated with human intelligence, such as learning, reasoning, problem-solving, perception, and decision-making @wikipediaAI.
Artificial intelligence has multiple fields such as machine learning, deep learning and computer vision. Machine learning is a subset of AI that focuses on the development of algorithms that can learn from data and make predictions or decisions without being explicitly programmed @wikipediaAI. Most imaging models are built with integration of deep learning and computer vision.

=== Tuberculosis Detection
Tuberculosis detection is the process of identifying the presence of tuberculosis in a patient. Tuberculosis detection can be done in numerous ways namely, skin test with tuberculin injection, blood tests, sputum tests where the patient mucus is tested for tuberculosis @mayoclinic. Malawi has adopted most of these techniques with an addition of CAD4TB, digital X-ray and GeneXpert @delft. Tuberculosis being the ninth leading cause of death it is important that early detection is achieved. 

=== Explainable AI
This is a field of research that explores methods that provide humans with the ability of intellectual oversight over AI algorithms @wikexai.
Explainable AI aims to make AI decisions transparent, understandable, and interpretable. The
lack of interpretability in AI systems has raised concerns about trust, accountability, and fairness. Without explainations user is left in the dark unable to understand why the decision was made or what could be done for improvement @hsieh2024comprehensiveguideexplainableai. Models might sometimes predict an outcome with high accuracy, but the reasoning behind it is unkown. The lack of explainability leads trust and accountability issues, it also leads to easir debugging of models hence finding points of improvements.

== Current Systems and Weaknesses
There are multiple AI integrated tuberculosis detection models already developed. The following are the most notable ones.
=== CAD4TB

Computer Aided Detection for Tuberculosis(CAD4TB) is an AI powered tuberculosis detection device. It is developed and owned Delft Imaging. It intergrates AI chest x-ray software with EPICON's epi control platform @DelftImaging.
The AI software part works by marking lung field with abnormalities  as TB, assigning a score in percentage and produces a heatmap of chest abnormality  . Ultra-portable X-ray systems (UPX) powered with CAD allowed also key populations living in remote areas without internet, to access high quality TB screening services @Checktb. 

The main downside to CAD4TB is that it does not have explainability. This is important as it assist the operator to understand the models response and be able to mark the it as a false positive or a false negative. It will also assists in debugging of models so that they  know areas of improvement.
Secondly, the device is expensive compared to having your own model.

=== Lunit insight CXR
The Lunit INSIGHT CXR is a deep learning software that assists radiologist in chest x-ray. The AI can detect multiple diseases namely;atelectasis, calcification, cardiomegaly, consolidation, fibrosis, mediastinal widening, nodule, pleural effusion, pneumoperitoneum, acute bone fracture, and tuberculosis. Like the CAD4TB, it also includes the heatmap analysis pane. It also has abnormality scores inidicating the probability of the judgement @Lunit.

Unlike the CAD4TB, This has a small component of explainability as it shows the patches that make it think it has a lung disease but the issue is that these marks are just general without any specifity to what disease.
Furthermore, another downside to this is that it lacks portability hence cannot be used in mobile for TB campaigns as it will need very strong devices which might be more expensive compared to CAD4TB. Lastly, the models cannot be trained and finetued with the new data being collected by the hospital @LunitGH.

=== CRISPR-based TB diagnosis
The  Clustered Regularly Interspersed Short Palindromic Repeats (CRISPR) system has been updated recentnly to start using Machine Learning techniques. With Machine Learning techniques, CRISPR works by taking samples of test i.e blood or sputum and the system adds a fluorenscent reporter with cleavable nucleic acid linker,
reporters produce fluorenscent signals which are made are taken and run into CNN models to mark whether person has TB or not @CRISPR. 

The main downside to this is that it is not portable and requires a lab to run the tests. It also requires a person with technical skills to run the tests. Lastly, it is expensive as it requires a lab to run the tests.

== Research gaps
Multiple contextual challenges exist which justify the need for building a local tuberculosis detection model with explainability visualizations. Most of the existing models are expensive to acquire as they come with their own hardware like the CAD4TB and cannot be used on other hardwares. Secondly the models lack the component of explainability which is crucial in detection. The reasearch addresses the gap by proposing a tuberculosis detection model with explainable visualizations. The model will be portable and can be used on different type of devices. 

The model to be built will also be leaner compared to the Lunit INSIGHT cxr as it is built specifically for TB and not other lung diseases. The explainability allows depiction of improvement points hence making it easir for people to debug and refine the next training cycle. 

== Summary
This chapter has looked at the artificial intelligence, tuberculosis detection and explainability. The chapter also evaluated current models and their shortfalls. After evaluating these models, a gap was found that the proposed system will fill. The upcoming chapter will discuss the methodology of the study, pinpointing ways on how best the model will be developed.
#pagebreak()

= Chapter Three: Methodology
*Chapter Introduction*

This chapter outlines the research methodology to be utilized in the development of the suggested tuberculosis model with explainability inclusivity. The sections looks into the research approach which emphasizes practical field observation with development techniques. The research strategy is also discussed in the chapter where a system design approach is chosen. The chapter also discusses the data collection and analysis techniques to be used in the study.  

== Research Approach
This study can be done in multiple was to achieve the same goal of development but the one that fits it perfectly will be a mixture of both qualitative and quantitative approach. The quantitative approach will be used to help in the collection of data and images to be used in the training of the model. The qualitative approach will be applied when testing and refining of the model after development.

The quantitative core of the approach tries to source as much images of tuberculosis as possible. Having a collection of these images will increase the range of the data will make the model sharper and not easily malfunction when it receives anomolies. As much as this is a double edged sword in the sense that it might lead to overfitting of the model @overfitting. This will then make the model to also not perform accordingly.

The qualitative segment of the approach encompasses reviewing the thoughts of the radiologists on using AI-imaging models without explainability and with explainability. This will help understand how much of an impact explainability has on the radiologists. It will also help understand where it is best to swam in the explainability and what type of visualizations work best.  

Using mixed approach is best as it will allow to tick all the checkboxes and achieve the perfect model that meets the users need. It allows meeting both the social and the technical part of the project.

== Research Strategy
Multiple strategies would have fit this study like agile or design science reasearch but the best one that fits the agile approach. Based on the needs for the adoptability and flexibility, agile approach is the right technique as rigid strategy will struggle to keep pace. The core of agile is to be iterative as much as possible with the model being refined in managable stages. This will allow better development as new opportunities arise.

Another good reason for picking agile over other strategies is how it manages risk. Agile development detects earlier the risk and helps in mitigating them as soon as possible. This is important in model development as a minor error in one phase might lead to faulty and biased model @agileai. The agile will also help development of the model as soon as possible and test it with various explainability engines like LIME. 

Scrum is the leading choice when it comes to agile development. The Scrum framework works by segmenting of the project into a timeboxed period @scrum. Scrum is built on continous feedback and flexibility. Model development is not linear and simple change in parameters can affect the output both negatively and positively. Scrum iterative nature allows easy adoption of feedback as the changes come in. 

== Sampling
This is the act of choosing only a subset of data to represent a whole population. The technique used for sampling should make sure both operational and strategic viewpoints are represented for good model development.  
=== Sampling techniques
The research will employ purposive sampling where participants are chosen from based on their  involvement in tuberculosis. This will allow participants to be knowledgable and have a good overall impact to the project. The participant to be sampled will be clinicians and radiologists. Clinicians are chosen because they have a general feel of the whole process that goes through during patients journey when dealing with tuberculosis. Radiologists are chosen because they are the ones who use x-ray machines and have a feel on how different x-ray images and results mean.

For sampling of data and images the research will use convenience sampling. This means data will be collected to sources which have open source datasets like kaggle, National Institute of Health and National Institute of Allergy and infectious disease. This broad casting of the net will allow the model to be trained adequetly and not be biased towards a specific type of image. It will also allow having enough data for testing without using in-sample evaluation which causes false positives.

== Data collection
Data collection will aid in the proper development of the model and proper intergration with the interface. This will be both primary and secondary data. 

=== Document analysis 
This is a method of data acquisition where one looks at already existing information. This collection method is chosen because currently alot of models already exist and have data which is already available and opensource for instance the National Institute of Health. This method is also prime as it allows one to  see common shortfalls in the models and also in the data. Considering how prevelant tuberculosis data is, this  method has the least amount of friction compared to other methods as medical data is protected by law to not be released easily unless permissions are given by the state @documentanalysis. 

=== Interviews
Minor interviews are to be conducted to with clinicians to get a perspective on how explainability aftects the course of action in terms of treatment and diagnosis. This will help solidifying a framework that is perfect enough to be used in the development of the model. Based on the open ended response, it will help choose the best visualizations to be used in the application. Good visualizations will affect also affect the engine to be used for explainability.

== Data analysis
Since the system has more than one segment, data will be reviewed differently. Some data is of images and some is of interviews. 

=== Use case diagrams
As much as use case diagrams are used in system design, they  can also be used in the data analysis. The use cause diagrams will help analyse the information be the clinicians collected in interviews, evaluating their workflow and how they expect the workflow to be like with the model. It will help make the choice of whether to make the interface from scratch or use an existing one which the health experts are familiar with. 

=== Image Classification and charts
Most of the data to be worked on is already labeled hence charts will be plotted to analyse the qualities and representaion of images. This will help prevent over-representation of one group which might lead to biasing in the model. The charts will also help to choose a good base imaging models. Some models are like YOLOv6 are popular but are very large. The only advantage of the YOLOv6 is that it works with multiple types of images. 

== Ethical considaration
With artitifical intelligence, ethics have to be considered because if one overlooks them social problems arise. The study will consider multiple of these ethical issues.
=== Participation
For the study to be successful, the participation of the radiologists and clinicians is important. The study will be conducted in a way that the participants are not forced to participate. The participants will be given a choice to participate or not. Participants can withdraw from the study at any time. Participants will be given a choice to participate in the study anonymously. The participants will be given a choice to participate in the study with their names and images.

=== Privacy
Some of the imaging data is private like the NIAID data hence these will not be released after use and will be deleted after the study is complete. The data will be stored in a secure location and will be accessed only by the researchers. The data will be stored in a secure location and will be accessed only by the researchers. The data will be stored in a secure location and will be accessed only by the researchers.

== Summary
This chapter has looked at the research approach, strategy, sampling, data collection, data analysis and ethical considerations. The chapter has also looked at the research approach, strategy, sampling, data collection, data analysis and ethical considerations. The next chapter will discuss the system design and the development of the model.
#pagebreak()

= Chapter Four: Limitation of Study
*Chapter Introduction*

This chapter discusses the limitations of the study. The limitations are discussed in terms of the scope of the study, the resources available, the time frame and the expertise of the researchers. The limitations are discussed in the context of the study and the research questions. The limitations are discussed in the context of the study and the research questions.

=== Training Hardware
The training of model is being conducted on a very low end device and this will affect the outcome of the model in terms of quality. This can be mitigated by training for longer periods but that can cause overfitting. Alternatively, the model can be trained on google collab which has better specs but due to free tier pricing limitations, the models can only be trained while connected and the resource sharing might lead to slow training time. 

=== Explainable engine choice 
The choice of explainable engine will heavily depend on how resource intensive each of them are and how much complexity they add to the output. Local Interpretable Modal-agnostic Explanations (LIME) is a good choice but it is not perfect as it is not being actively maintained and has not been updated to the latest builds of models.
SHAP on the other hand is being currently explored and is usesboth local and global agnonitic approaches but this might make the application large hence losing on portability.

== Summary
This chapter has looked at the limitations of the study. The next chapter will discuss the reasearch plan.
#pagebreak()
= Chapter Five: Research Plan
*Chapter Introduction*

This chapter outlines the research plan for the study. The research plan is divided into two main sections: the time frame and the budget. The time frame section outlines the activities to be undertaken and the duration of each activity. The budget section outlines the estimated cost of each activity.
#set table(
  stroke: none,
  gutter: 0.2em,
  fill: (x, y) => if y == 0 { gray.lighten(50%) }
)

== 5.1 Time Frame

#table(
  columns: (auto, 1fr),
  inset: 10pt,
  align: (left, left),
  table.header([*ACTIVITY*], [*DURATION*]),
  table.hline(),
  [Proposal development], [Month 1],
  [Literature review], [Month 1-2],
  [Data collection], [Month 2-3],
  [System design and development], [Month 3-4],
  [Model training and testing], [Month 4-5],
  [System evaluation], [Month 5],
  [Report writing and submission], [Month 6],
)

#v(2em)

== 5.2 Budget

#table(
  columns: (1fr, auto),
  inset: 10pt,
  align: (left, right),
  table.header([*ITEM*], [*ESTIMATED COST (MWK)*]),
  table.hline(),
  [Data collection and transport], [80,000],
  [Internet and data access], [50,000],
  [Software tools and computing resources], [60,000],
  [Printing and documentation], [40,000],
  [Miscellaneous expenses], [30,000],
  table.hline(),
  [*Total Estimated Cost*], [*260,000*],
)
#pagebreak()
#bibliography("ref.bib",style: "./apa.csi",title: "References" )
