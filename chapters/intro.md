
# Introduction

This dissertation centers around the formulation, use, and validation of a user-centered framework
for capturing and describing the interplay between the visualization design process, design decisions, and design artifacts.
Design can mean many things,
but visualization design is about the planning and creation of a particular chart or complex visualization system.
The design process consists of the steps taken to achieve a given outcome, such as a visualization system.
Design decisions are the reasons and justification behind a choice made for a visualization, such as choosing a pie or bar chart.
The ultimate outcomes of any step of the design process and from design decisions are design artifacts, such as a system prototype.
No such work previously exists which connects all three of these aspects for visualization design.


Many visualization designers reflect on the role of the design process for creating and building novel and useful visualizations.
...
Focusing on the design process can enable visualization designers to apply what they have learned to other problems, saving time and making more effective visualizations.


Visualization designers constantly make decisions throughout the process in order to focus their work.
These design decisions play a crucial role in stating assumptions, identifying design opportunities, and formalizing requirements of a system.
...
Design decisions are often rooted in various research and design methods that can enable both the generation and creation of artifacts.


Visualization design artifacts are often crucial to the success of a project, especially for the final desired outcome which is sought to be usable, useful, and effective.
...
Artifacts for visualization design can serve many purposes, from measuring success to reuse in future projects;
thus, it is often both beneficial and can save time by capturing many artifacts and connecting them to design decisions in a design process.






## Contributions

This dissertation's primary contribution is a user-centered framework for visualization design: the design activity framework [@McKenna2014].
We present this framework as a validated methodology for visualization designers pursuing problem-driven work, such as design studies.
The key novelty to this framework is its specificity for visualization design by connecting steps of the design process to the design decisions made and outcomes or artifacts achieved during this process.
Other novel aspects of this framework includes its flexibility for iteration, actionability to guide visualization designers, and connections to existing models across fields.
We have utilized this framework to formulate, guide, and reflect on the design process of several case studies in the fields of cyber security [@McKenna2014; @Staheli2014; @McKenna2015; @mckenna2016], biology [@mckenna2015s], and data storytelling [@mckenna2017].
For each of these projects, we have employed a variety of qualitative design methods in order to validate the utility of these methods in real-world projects and reflect on using them in future projects.
Furthermore, we illustrate the importance of design artifacts or outcomes and how they can play a useful and continued role in a project.
We conclude by reflecting on what we have learned about the visualization design process from our case studies to inform future problem-driven visualization research, design, and development.





## Overview of Work

The design activity framework was initially formulated from a collaborative effort between designers, a psychologist, and visualization experts [@McKenna2014].
As a multidisciplinary team, we struggled to utilize existing design process models to capture the complex methods we utilized in a project and how they connected to each other.
As a result, we identified the core concept of a design activity: a group of actions a visualization designer takes to work towards a specific outcome or set of outcomes [@McKenna2014].
There are different kinds of design activities: e.g. understand, ideate, make, or deploy.
Each activity has a basic structure composed of: a motivation, methods, and outcomes.
The motivation is the specific purpose behind the methods and actions; this is intricately connected to the outcomes: the specific, unique results of a design activity such as a prototype, sketch, domain characterization, or data abstraction.
We achieve design artifacts or outcomes through the use of design methods, which can be either generative or evaluative (or both) in nature.
The design activity framework supports many flexible and iterative combinations of design activities to support the full range of possible design processes, including those from all of our case studies.
Through these case studies, we extended our framework by reflecting on how to evaluate the effectiveness of design methods, clarified the role of design outcomes as research contributions, and identified additional related activities for research, design, and development that connect to existing models across a variety of fields.
We found the design activity framework as a useful methodology for conducting user-centered problem-driven visualization design,
and we validate its usefulness and utility by discussing and reflecting on this framework through a series of case studies for cyber security and biology.


Our first collection of case studies was in the field of cyber security [@McKenna2014; @Staheli2014; @McKenna2015; @mckenna2016].
With the same team that formulated the design activity framework, we analyzed and redesigned a large software tool for a cyber security firm, focusing on key improvements of usability, aesthetic, timeline visualization, and collaborative features [@McKenna2014].
For our design process, we produced a series of design artifacts, such as a qualitative coding method that produced a spreadsheet of key design opportunities and sketches, wireframes, and mockups to visually communicate our ideas to the company’s development team.
Their development team used these artifacts to redesign aspects of their tool and successfully evaluated it with end users before deploying it as the next version of their tool.
Upon reflecting, we found our design process to be very nonlinear and iterative, a complex combination of activities that our framework was able to support;
additionally, we found that collaborators from multiple fields were able to understand and agree on the terms presented within the design activity framework.
Finally, this agreement enabled us to succinctly describe our design process to others.


One of the challenges in the domain of cyber security is limited access to end users.
In our second cyber security case study, we repurposed the design opportunities we had identified with existing users from our redesign project into a new investigation:
building a cyber security dashboard to support visual communication across multiple types of cyber users [@Staheli2014; @McKenna2015; @mckenna2016].
Through a collaboration with cyber security researchers and users, we were able to perform a design study between network analysts and network managers in order to study how cyber information is communicated and created a tool to aid that communication flow [@mckenna2016].
With the design activity framework as the backbone for this project, we had to delicately balance user-centered design methods when we had very limited access to end users.
We found certain methods to be effective with this limited access, such as personas and data sketches [@McKenna2015].
Furthermore, we performed a formal usability study with a standardized quantitative questionnaire in order to validate the usability of our final dashboard tool.
By reflecting on our design process, we are currently writing up a paper of this project to show the connection between the design activity framework and that of a design study [@mckenna2016].


Additionally, we have conducted a case study in the field of biology which explored a different set of project constraints, data, and users in order to further extend and validate the design activity framework [@mckenna2015s].
This study was with a biology researcher studying mouse genetics through exploring multidimensional correlation.
With a statistics researcher, we created a new technique, the s-CorrPlot, to encode and project correlation to two-dimensions that have more meaningful dimensions in terms of reading correlation coefficient values from the plot, coupled with interactive techniques and animations to facilitate exploration of the large datasets [@mckenna2015s].
However, we were unable to achieve a successful design study from this project since our collaborators were not able to go beyond simple exploration and very basic hypothesis generation using the tool.
Upon reflecting on this process using the design activity framework, we discovered that us designers were driven to build and justify the technique over the problems and needs of the users; this project was a technique-driven project in problem-driven clothing.
We were easily able to identify this mismatch by pinpointing our motivations at different stages of the design process.
This highlights that technique-driven work can be unique and require extensions or a different methodology to more adequately capture the nuances of this kind of work.


We are currently pursuing a case study in the field of data storytelling.
For this investigation, we have begun to analyze various techniques used by authors on the web to convey data in a storytelling fashion.
Then, we will design a novel data storytelling authoring tool according to these techniques and strategies.
For example, one such technique is varying use of either scrolling or stepping for navigating a story with animated transitions.
We will employ several quantitative studies to evaluate the effectiveness of the storytelling techniques and the feasibility of this authoring tool to support them.
Finally, we plan to release the contents of this authoring tool for others to utilize these data storytelling techniques in their own work.
By reflecting on our design process of this authoring tool, this project will highlight the flexibility of the design activity framework by capturing and describing a project with quantitative user evaluation of various visualization and interaction techniques.





## Timeline

Most of the work has already been completed.
The design activity framework has already been formulated [@McKenna2014] and revised.
This work started several case studies in cyber security [@McKenna2015; @mckenna2016].
The case study in biology has also been completed [@mckenna2015s], but more thought will be spent reflecting on this project with respect to the design activity framework.
Lastly, the case study for data storytelling is ongoing, expected to be completed by this fall.
