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

Development of an Explainable AI model for AI assisted TB-detection from X-ray images


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

This chapter introduces the study project, presenting the background of tuberculosis
and how Machine learning imaging models together with explainability can  take part in its management. The chapter focuses on the research problem, the aim of the
study and all objectives guiding the research.
The chapter also outlines the research questions together with their supporting questions. The main goal of this chapter is to provide a comprehensive overview of 
the project and why it is important to develop the tuberculosis detection model with explainable visualizations.
== Background of the study
Tuberculosis, also known as white death, is a contagious disease caused by Mycobacterium tuberculosis bacteria @Hawn2014. According to the World Health Organization, tuberculosis has caused over 2.5 million deaths in the African region.In 2021, the incidence of tuberculosis in Malawi was 132 per 100,000 population @WHO2023. In the past few years, the country has managed to combat tuberculosis leading to 31% decline of TB incidence with the TB/HIV coinfection rate being dropping by 43% @KUHES2024. To achive the goal of 50% reduction in incidences by the ministry of health, the country imported devices like GeneXpert to aid in fighting against TB. The ministry of health to also release guides to train healthworkers on how to fight against the disease in a morden way with these devices.
 Apart from GeneXpert, the ministry of health also imported a collection of other devices like digital X-ray and CAD4TB. Computer Aided Detection for Tuberculosis commonly known as CAD4TB is a portable Artificial Intelligence(AI) tuberculosis detection device @KUHES2024. The CAD4TB uses chest X-ray images and an AI model to detect tuberculosis. This device has predictive analysis and can work locally without internet connection. Around seven mobile clinics with CAD4TB devices deployed is in malawi and they managed to screen around 395,279 people @Delft-Imaging2023.
As this adoption of the imaging models grows, trusting responses is crucial for both doctors and clinicians @Fehr2021. The models used commonly in blantyre are the CAD4TB and QureAI @Twabi2021. Trusting the responses from models has been done in a "black box" form, where users do not know the internal working of the models to lead to the presented response @Ribeiro2016. 

In a review, both CAD4TBv5 and Qure.ai qXR v2.0 lack the component of explainability. Explainability helps in fault detection by the clinicians, for example, in a TB image the models response will be returned with highlights of the patches as soon as the patches are in the wrong position clinician can mark that response as invalid @Mller2023. 
Secondly, Malawi as a country has a large shortage of radiologists, as these AI devices are coming in they are substituting radiologists in the hospitals that do not have radiologists @Chinkhumba2025. The intergration of explainability will be more critical in this period  as models are being used by partially skilled clinicians. Addition of explainability will assist the clinicians ease in understanding the models response and be able to validate the response without a secondary source @Alharthi2024.
The lack of an explanation in the responses from the adopted models by the ministry of health  presents a challenge as clinicians are not able to validate the responses without using a secondary resource like another model or a human expert @Delft-Imaging2023. In a field of high stakes like healthcare it is important one trusts the model response whilst understanding the inner working as errors can cost lives @Mller2023. The component of explainability in the current models like CAD4TB is by use of heatmaps which show where the model looked but not what the model concluded.

== Problem Statement
Malawi is in a transition period of moving away from sputum testing to using AI imaging models for tuberculosis detection. In a study by the malawi liverpool wellcome trust, it was found that radiologists made errors in TB detection in one out of five times of cases while qureai had a 92% accuracy @Twabi2021. This means that if radiologists together with AI models are being used, the errors will be reduced. QureAI is currently deployed at Queen elizabeth hospital amoung other hospitals and it demands that an operator with expertise to be available to validate the models response @Delft-Imaging2023. This is a challenge as the country has a shortage of radiologists. By adding explainability to the models, it will be easier for the partially skilled clinicians to validate the models response without a secondary source. This will increase trust, reduce errors and increase adoption of the models. It will also reduce overreliance and automation bias as errors are now visible to the clinicians.Henceforth, there is a need a comprehensive tuberculosis model with  explainable visualizations to aid the partially skilled clinicians easily catch false positives in the  model and the unskilled clinicians to easily understand the model’s response. 

== Aim and objectives
=== Aim
The aim of this project is to develop a tuberculosis detection model with explainable visualizations.
=== Objectives
The objectives of this project are:
- developing a dataset from available datasets (NIH) and locally sourced 
- To finetune a tuberculosis detection model.
- To develop an explainable visualization for the tuberculosis detection model.
- To develop an multiplatform application for interaction with models and visualization engine.
== Research Questions
The research questions of this project are:
- How does explainable AI impact clinicians in their decision making for AI tuberculosis detection?
== Significance of study
The development of a tuberculosis model with explainability is of great importantance, as it allows catching errors made by model during diagnosis. It also allows the clinicians to easily understand under the hood workings of the  model hence better guide people responsible for training models on how to patch up models.
This study is also significant as it directly combats tuberculosis whilst reducing cost and increasing adoptability parameters by partially skilled clinicians.
As imaging models increase in adoption, catching errors in them has never become more important as these errors can lead to misdiagnosis and negatively affect the on patient health. 
== Summary
In conclusion, this study aims to develop a tuberculosis detection model with explainable visualizations. The development focuses on catching false positives and false negatives by using explainability engines. By providing a providing a portable multiplatform interface it will have a similar or larger impact as CAD4TB. The portability and low-cost of the model will also increase adoption in local hospitals and assist in the combating of TB in Malawi. 

#pagebreak()
= Chapter Two: Literature Review

*Chapter Introduction*

This chapter presents the literature review for the development of a tuberculosis detection model with explainable visualizations, structuring the  groundwork for the building the interface, imaging model and intergrating of explainable visualizations engines.
The chapter begins with discussion of key concepts so to unfold the meaning of terms used in the study then later evaluates current systems and their weaknesses. The chapter concludes by looking into the research gap and how this study will address the gap.

== Key Concepts and Terms
=== Artificial Intelligence
Artificial intelligence (AI) is the capability of computational systems to perform tasks typically associated with human intelligence, such as learning, reasoning, problem-solving, perception, and decision-making @Mazeika2025.
Artificial intelligence has multiple fields such as machine learning, deep learning and computer vision. Machine learning is a subset of AI that focuses on the development of algorithms that can learn from data and make predictions or decisions without being explicitly programmed @Ciresan2012. Most imaging models are built with integration of deep learning and computer vision.

=== Tuberculosis Detection
Tuberculosis detection is the process of identifying the presence of tuberculosis in a patient. Tuberculosis detection can be done in numerous ways namely, skin test with tuberculin injection, blood tests, sputum tests where the patient mucus is tested for tuberculosis @Mayo-clinic. Malawi has adopted most of these techniques with an addition of CAD4TB, digital X-ray and GeneXpert @KUHES2024. Tuberculosis being the ninth leading cause of death it is important that early detection is achieved. 

=== Explainable AI
This is a field of research that explores methods that provide humans with the ability of intellectual oversight over AI algorithms @Ribeiro2016.
Explainable AI aims to make AI decisions transparent, understandable, and interpretable. The
lack of interpretability in AI systems has raised concerns about trust, accountability, and fairness. Without explainations user is left in the dark unable to understand why the decision was made or what could be done for improvement @Alharthi2024. Models might sometimes predict an outcome with high accuracy, but the reasoning behind it is unkown. The lack of explainability leads to trust and accountability issues, it also leads to easir debugging of models hence finding points of improvements.

== Current Systems and Weaknesses
There are multiple AI integrated tuberculosis detection models already developed. The following are the most notable ones.
=== CAD4TB

Computer Aided Detection for Tuberculosis(CAD4TB) is an AI powered tuberculosis detection device. It is developed and owned Delft Imaging. It intergrates AI chest x-ray software with EPICON's epi control platform @Delft-Imaging2025.
The AI software works by marking lung field with abnormalities  as TB, assigning a score in percentage and producing a heatmap of chest abnormality. The Ultra-portable X-ray powered with CAD allows populations living in remote areas without internet, to access high quality TB screening services @CheckTB2025. 

The main downside to CAD4TB is that it does not have explainability. This is important as it assist the operator to understand the models response and be able to mark it as a false positive or a false negative. It will also assists in debugging of models so that they know areas of improvement when reports are being made.
Secondly, the device is expensive compared to having your own model that is crossplatform.

=== Lunit insight CXR
The Lunit INSIGHT CXR is a deep learning software that assists radiologist in chest x-ray. The AI can detect multiple diseases namely; atelectasis, calcification, cardiomegaly, consolidation, fibrosis, mediastinal widening, nodule, pleural effusion, pneumoperitoneum, acute bone fracture, and tuberculosis. Like the CAD4TB, it also includes the heatmap analysis pane. It also has abnormality scores inidicating the probability of the judgement @Lunit-insight-cxr42025.

Unlike the CAD4TB, this has a small component of explainability as it shows the patches that make it think it has a lung disease but the issue is that these marks are general without any specifity to what disease each patch suspects and a score for each patch. Some disease share similar patch shapes hence the model might be confused.
Furthermore, another downside to this is that it lacks portability hence cannot be used in mobile for TB campaigns as it will need very strong devices which might be more expensive compared to CAD4TB. Lastly, the models cannot be trained and finetued with the new data being collected by the hospital @Lunit-insight-cxr42025.

=== QureAI
This is an AI model that is currently deployed here in Malawi at the queen elizabeth amongst other hospitals. It is developed 

== Research gaps

Multiple contextual challenges exist which justify the need for building a local tuberculosis detection model with explainability visualizations. Most of the models like the QureAI has a component of explainability by use of heatmaps where after the models marks a chest X-ray image as having tuberculosis, it highlights the patches that it thinks are tuberculosis. This is just half of the equation as it does not exactly severely test the model by image segmentation and  making pertuated dataset. It simply adds overlays to the images @Suthers2025. Secondly these models lacking explainability component of explainability which risks clinicians in OneStopTB clinics from making errors in diagnosis. The reasearch addresses the gap by proposing a tuberculosis detection model with explainable visualizations. The model will be portable and can be used on different type of devices. 
The models used in malawi using AI to detect presence of tuberculosis and then use heatmaps to show where the model looked. The heatmaps are not explainable as they do not show exactly what the model concluded if it was actually using those. This is a gap that the proposed system will fill.


== Summary
This chapter has looked at the artificial intelligence, tuberculosis detection and explainability. The chapter also evaluated current models and their shortfalls. After evaluating these models, a gap was found that the proposed system will fill. The upcoming chapter will discuss the methodology of the study, pinpointing ways on how best the model will be developed.
#pagebreak()

= Chapter Three: Methodology
*Chapter Introduction*

This chapter outlines the research methodology to be utilized in the development of the suggested tuberculosis model with explainability inclusivity. The sections looks into the research approach which emphasizes practical field observation with development techniques. The research strategy is also discussed in the chapter where a system design approach is chosen. The chapter also discusses the data collection and analysis techniques to be used in the study.  

== Research Approach
This study can be done in multiple ways to achieve the same goal of development but the one that fits it perfectly will be a mixture of both qualitative and quantitative approach. The quantitative approach will be used to help in the collection of data and images to be used in the training of the model. The qualitative approach will be applied when testing and refining of the model after development.

The quantitative core of the approach tries to source as much images of tuberculosis as possible. Having a collection of these images will increase the range of the data will make the model sharper and not easily malfunction when it receives anomalies. As much as this is a double-edged sword in the sense that it might lead to overfitting of the model , This will then make the model to also not perform accordingly @overfitting.

The qualitative segment of the approach encompasses reviewing the thoughts of the radiologists and clinicians on using AI-imaging models without explainability and with explainability. This will help understand how much of an impact explainability has on the radiologists. It will also help understand where it is best to swam in the explainability engines and what type of visualizations work best for doctors. It will also help in getting opinions on how the flutter application should be designed to best fit the doctors needs.  

Using mixed approach is best as it will allow to tick all the checkboxes and achieve the perfect model that meets the users need. It allows meeting both the social and the technical part of the project.

== Research Strategy
Multiple strategies would have fit this study like design science reasearch but the best one that fits the agile approach. Based on the needs for the adoptability and flexibility, agile approach is the right technique as rigid strategy will struggle to keep pace. The core of agile is to be iterative as much as possible with the model being refined in managable stages. This will allow better development as new challenges arise.It will also allow better testing of the interface as it is being developed as different user interfaces affect how visualizations are perceived.

Another good reason for picking agile over other strategies is how it manages risk. Agile development detects the risk earlier and helps in mitigating them as soon as possible. This is important in model development as a minor error in one phase might lead to faulty and biased model @agileai. The agile will also help development of the model as soon as possible and test it with various explainability engines like Local Interpretable Model-agnostic Explanations (LIME) and SHapley Additive exPlanations (SHAP). 

Scrum is the leading choice when it comes to agile development. The Scrum framework works by segmenting of the project into a timeboxed period @scrum. Scrum is built on continous feedback and flexibility. Model development is not linear and simple change in parameters can affect the output both negatively and positively. Scrum iterative nature allows easy adoption of feedback as the changes come in. 

== Sampling
This is the act of choosing only a subset of data to represent a whole population. The technique used for sampling should make sure both operational as strategic viewpoints are required for good model development.  
=== Sampling techniques
The research will employ purposive sampling where participants are chosen from based on their  involvement in tuberculosis. This will allow participants pool to be knowledgeable and have a positive overall impact to the project. The participant to be sampled will be clinicians and radiologists. Clinicians are chosen because they have a general feel of the whole process that goes through during patients journey when dealing with tuberculosis. Radiologists are chosen because they are the ones who use x-ray machines and have a feel on how different x-ray images and results mean.

For sampling of data and images the research will use convenience sampling. This means data will be collected to sources which have open source datasets like kaggle, National Institute of Health and National Institute of Allergy and infectious disease. This broad casting of the net will allow the model to be trained adequetly and not be biased towards a specific type of image. It will also allow having enough data for testing without using in-sample evaluation which causes false positives.

== Data collection
Data collection will aid in the proper development of the model and proper intergration with the flutter application. This will be both primary and secondary data. 

=== Document analysis 
This is a method of data acquisition where one looks at already existing information. This collection method is chosen because currently alot of models already exist and have data which is opensource for instance the National Institute of Health. This method is also prime as it allows one to  see common shortfalls in the models and also in the data. Considering how prevelant tuberculosis data is, this  method has the least amount of friction compared to other methods as medical data is protected by law to not be released easily unless permissions are given by the state @documentanalysis. 

=== Interviews
Interviews are to be conducted to with clinicians to get a perspective on how explainability affects the course of action in terms of treatment and diagnosis. This will help solidifying a framework that is perfect enough to be used in the development of the model and Flutter application. Based on the open ended response, it will help choose the best visualizations to be used in the application. Good visualizations will affect also affect the engine to be used for explainability.

== Data analysis
Since the system has more than one segment, data will be reviewed differently. Some data is of images and some is of interviews. 

=== Use case diagrams
As much as use case diagrams are used in system design, they  can also be used in the data analysis. The use cause diagrams will help analyse the information be the clinicians collected in interviews, evaluating their workflow and how they expect the workflow to be like with the model. It will help make the choice of whether to make the flutter application from scratch in terms of user experience or use an existing one which the health experts are familiar with. 

=== Image classification charts
Most of the data to be worked on is already labeled hence charts will be plotted to analyse the qualities and representaion of images. This will help prevent over-representation of one group which might lead to biases in the model. The charts will also help to choose a good base imaging models. Some models are like YOLOv6 are popular but are very large. The only advantage of the YOLOv6 is that it works with multiple types of images. 

== Ethical considaration
With artitifical intelligence, ethics have to be considered because if one overlooks them social problems arise. The study will consider multiple of these ethical issues.
=== Participation
For the study to be successful, the participation of the radiologists and clinicians is important. The study will be conducted in a way that the participants are not forced to participate. Participants can withdraw from the study at any time. Participants will also be given a choice to participate in the study anonymously.

=== Privacy
Some of the imaging data is private like the NIAID data hence these will not be released after use and will be deleted after the study is complete. The data will be stored in a secure location and will be accessed only by the researchers. This will prevent malicious use of the data by third parties. The data will also be anonymized using UUIDS to prevent identification of the patients.

== Summary
This chapter has looked at the research approach, strategy, sampling, data collection, data analysis and ethical considerations. The chapter has also looked at the research approach, strategy, sampling, data collection, data analysis and ethical considerations. The next chapter will discuss the system design and the development of the model.
#pagebreak()

= Chapter Four: Limitation of Study
*Chapter Introduction*

This chapter discusses the limitations of the study. The limitations are discussed in terms of the scope of the study, the resources available, the time frame and the expertise of the researchers. The limitations are discussed in the context of the study and the research questions. The limitations are discussed in the context of the study and the research questions.

=== Training Hardware
The training of model is being conducted on a very low end device and this will affect the outcome of the model in terms of quality. This can be mitigated by training for longer periods but that can cause overfitting. Alternatively, the model can be trained on google collab which has better specs but due to free tier pricing limitations, the models can only be trained while connected to the internet and the resource sharing might lead to slow training time.
//malawi liverpool trust

=== Explainable engine choice 
The choice of explainable engine will heavily depend on how resource intensive each of them are and how much complexity they add to the output. Local Interpretable Modal-agnostic Explanations (LIME) is a good choice but it is not perfect as it is not being actively maintained and has not been updated to the latest builds of models.
SHapley Additive exPlanations  on the other hand is being currently explored and is uses both local and global agnonitic approaches but this might make the application large hence losing on portability.

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
  [Data collection and transport], [30,000],
  [Internet and data access], [50,000],
  [Software tools and computing resources], [60,000],
  [Printing and documentation], [40,000],
  [Miscellaneous expenses], [30,000],
  table.hline(),
  [*Total Estimated Cost*], [*210,000*],
)
#pagebreak()
#bibliography("ref.bib",style: "./apa.csi",title: "References" )
