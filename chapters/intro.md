
# Introduction

**_TODO:_**

  - low-level edits from Miriah
  - add citations (3-4 when necessary)
  - trim down overview: 3-4 sentences per chapter, more high-level, and what has been done

Design has many meanings,
and visualization design is about the planning and creation of a visualization or combined visualization system.
As the field of visualization matures, theories and models
that capture the *how* of visualization design have
become more prevalent, from evaluation
strategies [@Plaisant2004; @Lam2011a; @Carpendale2008a; @Isenberg2013a; @Shneiderman2006]
to the design process
itself [@Tory2004; @Sedlmair2012b; @Lloyd2011; @Shneiderman2006; @Wassink2009; @Chee2011].
Visualization design is known to be messy,
iterative, and complex [@Sedlmair2012b; @DIS2010; @Tory2004; @Wassink2009; @Chee2011; @Moere2011], characteristics that are not fully
described in existing visualization process models.
Furthermore, these theories and models for the design process largely
address the *how* of visualization design, but they fail
to explicitly describe the connections of those actions
back to the *why* of visualization design decisions
--- these design decisions are described instead by separate
design decision models [@Munzner2009; @Meyer].
If a process model existed to bridge the *how* with the *why*,
then such a framework would enable a richer description of the visualization design process
and provide more actionable guidance for others to follow.


This dissertation centers around the formulation, use, and validation of a user-centered framework
for capturing and describing the interplay between the visualization design process and design decisions.
For data visualization, design centers around the creation of a single visualization or more robust visualization system.
This design process takes place in a series of overlapping *activities* which produce *artifacts*, like a new visualization encoding.
These artifacts get produced as a result of *decisions* that get made by a visualization designer, such as how to evaluate a system.
No work previously exists that connects all three of these aspects for visualization design.


Many visualization designers reflect on the role and steps of the design process for creating and building novel and useful visualizations [@CITATION].
In the field of visualization, a good chunk of problem-driven visualization work conducts design studies,
where visualization experts create visualization systems to support solving some real world problem.
It is helpful both for novice visualization designers and even expert ones to provide guidance on how to achieve success in these projects and avoid common pitfalls which can lead to failure.
There are also many different design process models out there, many from the design or HCI communities, and even several within the visualization community.
Focusing on the design process can enable visualization designers to apply what they have learned to other problems, saving time and making more effective visualizations.


Visualization designers constantly make decisions throughout the process in order to focus their work.
These design decisions play a crucial role in stating assumptions, identifying design opportunities, and formalizing requirements of a system.
One of the most common kind of design decisions is to perform an evaluation of a system, from informal to formal or qualitative to quantitative, in order to justify the use of a specific encoding or interaction technique [@CITATION].
Another common design decision is to utilize 2D space to encode the most important visual data, over less perceptually effective channels such as radial size or color [@CITATION].
Design decisions are often rooted in various research and design methods that can enable both the generation and creation of artifacts.


Visualization design artifacts are often crucial to the success of a project, especially for the final desired outcome which is sought to be usable, useful, and effective.
Commonly, artifacts are tangible software tools,
but the design process can involve other kinds of artifacts,
such as sketches, ideas, user needs, or a list of software requirements.
Existing process models fail to capture some of these kinds of design artifacts,
and this is largely due to how existing models consider evaluation as a separate step of the design process rather than a part of every step.
Artifacts for visualization design can serve many purposes, from measuring success to reuse in future projects;
thus, it is often both beneficial and time-saving to capture many artifacts and link them back to design decisions.


The design process, design decisions, and artifacts can all be connected through the design activity framework.
Without this connection, it is much harder for a visualization designer to answer both the *how* and *why* questions of design,
which results in less useful design process descriptions and models which can lead to failure for novice designers.
The design activity framework breaks apart steps of the design process into a series of four overlapping activities.
Each activity has a specific motivation for a visualization designer to ground themselves in.
Once an activity is identified, the expected kind of artifact to achieve becomes clear.
This further empowers visualization designers to choose from appropriate kinds of design methods to make and justify design decisions.
Lastly, this framework connects to other existing visualization design models and theories to enable a richer and more complete description of the visualization design process.






## Contributions

This dissertation's primary contribution is a user-centered framework for visualization design: the design activity framework [@McKenna2014].
We present this framework as a validated methodology for visualization designers pursuing problem-driven work, such as design studies.
The key novelty to this framework is its specificity for visualization design by connecting steps of the design process to the design decisions made and artifacts achieved during this process.
Other novel aspects of this framework includes its flexibility for iteration, actionability to guide visualization designers, and connections to existing models across fields.
To strengthen the contribution of this framework, we have validated its use and application across several different visualization design projects.
We have utilized this framework to formulate, guide, and reflect on the design process of several case studies in the fields of
biology [@mckenna2015s], cyber security [@McKenna2014; @Staheli2014; @McKenna2015; @mckenna2016], and data storytelling [@mckenna2017].
For each of these projects, we have employed a variety of qualitative and quantitative design methods in order to validate the utility of these methods in real-world projects and reflect on using them in future projects.
Furthermore, we illustrate the importance of design artifacts and how they can play a useful and continued role in a project.
We conclude by reflecting on what we have learned about the visualization design process from our case studies to inform future problem-driven visualization research, design, and development.





## Overview

At the core of this framework is the concept of a step or design activity:
a group of actions a visualization designer takes to work towards a specific artifact or set of artifacts.
In the design activity framework, we have identified four kinds of activities:
e.g. understand, ideate, make, or deploy [@McKenna2014].
Each activity has a basic structure composed of: a motivation, methods, and artifacts.
The motivation is the specific purpose behind the methods and actions; this is intricately connected to the artifacts: the specific, unique results of a design activity such as a prototype, sketch, domain characterization, or data abstraction.
We achieve design artifacts through the use of design methods, which can be either generative or evaluative (or both) in nature and often result in forming a design decision when evaluative.
The design activity framework supports many flexible and iterative combinations of design activities to support the full range of possible design processes, including those from all of our case studies.
Through these case studies, we extended our framework by reflecting on how to evaluate the effectiveness of design methods, clarified the role of design artifacts as research contributions, and identified additional related activities for research, design, and development that connect to existing models across a variety of fields.
We found the design activity framework as a useful methodology for conducting user-centered problem-driven visualization design based on our own project failures,
and we validate the framework's usefulness and utility by discussing and reflecting on this framework through a series of successful case studies for cyber security and data storytelling.


The design activity framework was initially formulated from reflecting on previous failed projects;
this work has already been completed.
At first, we pursued a design study in the field of biology, working with a research lab studying mouse genetics through correlation.
With a statistics researcher, we created a new technique, the s-CorrPlot, to encode correlation of large datasets in a scatterplot [@mckenna2015s].
However, this project did not yield us with a successful design study, since our collaborators could not go beyond exploration or basic hypothesis generation with the tool.
Upon reflection, we realized that we were driven to build this tool for a novel technique, not to support the needs of the researchers.
This led into a second case study, in the field of cyber security,
where we worked with a team of designers, a psychologist, and visualization experts to formulate the beginnings of the design activity framework [@McKenna2014].
In this work, our team worked with a cyber security firm to redesign one of their visualization software tools.
We focused our redesign to create a series of sketches, wireframes, and mockups that visually communicated our ideas to the company's development team in order to improve their tool,
but the final artifacts and changes were limited by the company's development budget.
We found that a common aspect of failure in these projects and design studies was that less reflection and less control of the design process led to projects which were not as successful as they otherwise could have been.


A second but successful case study in the field of cyber security focused on a new investigation:
building a cyber security dashboard to support visual communication across multiple types of cyber users [@McKenna2015; @mckenna2016];
this work has already been completed.
One of the challenges in the domain of cyber security is limited access to end users.
We found certain methods to be effective with this limited access, such as personas and data sketches [@McKenna2015].
Through a collaboration with cyber security researchers and users, we were able to perform a design study between network analysts and network managers in order to study how cyber information is communicated and created a tool to aid that communication flow [@mckenna2016].
With the design activity framework as the backbone for this project, we had to delicately balance user-centered design methods when we had very limited access to end users.
We were also able to build off of and repurpose the design opportunities we had identified with existing users from our redesign project into this dashboard project [@mckenna2016].
Furthermore, we performed a formal usability study with a standardized quantitative questionnaire in order to validate the usability of our final dashboard tool.
By reflecting on this design process, we have found that artifacts play a critical role in communicating the design process,
and we have seen that design studies can be formed and reflected upon using the design activity framework. 
We have modified the design activity framework accordingly with these insights.


We are currently pursuing a case study in the field of data storytelling;
this work is currently on-going and is not complete.
For this investigation, we have begun to analyze various techniques used by authors on the web to convey data in a storytelling fashion using visualization.
From these techniques we observe, we will design a novel data storytelling authoring tool according to strategies we have seen.
For example, one such technique is the varying use of either scrolling or stepping for navigating a story with animated transitions.
We will employ several quantitative studies to evaluate the effectiveness of the storytelling techniques and the feasibility of this authoring tool to support them.
Finally, we plan to release the contents of this authoring tool for others to utilize these data storytelling techniques in their own work.
By reflecting on our design process of this authoring tool, this project will highlight the flexibility of the design activity framework by capturing and describing a project with more rigorous quantitative user evaluation of various visualization and interaction techniques.

