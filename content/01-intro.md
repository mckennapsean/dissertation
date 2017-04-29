# Introduction {#sec:intro}

This dissertation introduces the design activity framework for capturing and
describing the interplay between the human-centered visualization design process
and design decisions. Whereas design can mean many things to different people,
the **data visualization design process** is about the planning, creation, and
evaluation of a single data visualization or a multiview, robust visualization
system. The _data visualization design process_ takes place in a series of
**activities** that produce visualization **artifacts**, such as a new encoding
or interaction. These artifacts are produced as a result of **decisions** that
are made by a visualization designer, such as guidelines that are established
through evaluating a system. No previous work exists that connects all three
aspects and describes the interplay among them for visualization design, and
bridging these concepts in a design model increases not only its actionability
and applicability across projects but also the model's descriptive, evaluative,
and generative power [@Beaudouin-Lafon2004]. Moreover, existing visualization
models have not explored pedagogical approaches for teaching the design process
and all three aspects to visualization design novices.

<!-- TODO clean up one reference here! -->


Although several proposed visualization models capture the steps of the design
process for creating and building new and useful visualizations [@Sedlmair2012b;
@Lloyd2011; @Wassink2009; @Chee2011], the novelty of the design activity
framework is how it describes these steps as overlapping, iterative, and even
nested _design activities_. As a result, the design activity framework captures
the complex, iterative, and occasionally messy nature [@Sedlmair2012b; @DIS2010;
@Tory2004; @Wassink2009; @Chee2011; @Moere2011] of visualization design, which
supports greater reflection on a project's progress and can facilitate more
complete and richer descriptions of the visualization design process. In
visualization design projects, problem-driven research often involves design
studies, in which visualization experts create visualization systems to support
solving a real-world problem [@Sedlmair2012b]. It can be helpful to provide
guidance to visualization designers on how to achieve success in their
visualization design projects and avoid common pitfalls [@Sedlmair2012b] that
can lead to wasted time, less effective solutions, or even failure. To help
guide design projects, many different design process models have been developed,
some by the design or human-computer interaction (HCI) communities, and several
within the visualization community as well, and the design activity framework
pulls in useful aspects from these models and tailors its terminology and
connections to increase its usefulness and actionability as a visualization
design process model.


Visualization practitioners constantly make _design decisions_ throughout the
process in order to refine their work. These design decisions play a crucial
role in justifying, validating, and challenging the use of visualization
artifacts that get generated within a design activity. Researchers have used the
term guidelines to describe this same result of the decision-making process for
visualization design [@Meyer]. Decisions and guidelines are related through
evaluation, via which visualization artifacts can be compared and tested against
each other. It is quite common to perform an evaluation of a system, from
informal to formal or qualitative to quantitative, in order to justify the use
or explore the effectiveness of a specific encoding or interaction technique
[@Brehmer2014; @McCurdy2015; @Kerzner2015; @Quinan2015]. Other common design
decisions stem from preexisting guidelines in the visualization community, such
as using position along a common scale to encode the most important data
visually, over less perceptually effective channels such as angle, area, and
saturation of color [@Cleveland1984]. Currently, design decisions in the
visualization community are commonly described with respect to the nested model
for visualization design [@Munzner2009; @Meyer], but no visualization design
process models bridge their concepts to the levels of the nested model. The
design activity framework fills this gap by connecting design activities to the
levels of the nested model and through recognizing the relationship between
design methods and visualization artifacts.


Visualization _design artifacts_ are often crucial to the success of a project,
especially for the final desired visualization system, which should be usable,
useful, and effective. Commonly, visualization artifacts are tangible software
tools, but the visualization design process can involve other kinds of
artifacts, such as documents of user needs, a list of software requirements, or
sketches. Existing process models fail to rigorously capture some of these
design artifacts, largely due to how existing models consider evaluation as a
separate stage of the design process [@Lloyd2011; @Wassink2009; @Chee2011]
rather than a part of every activity. Artifacts for visualization design can
serve many purposes, from measuring success to being reused in future projects;
thus, it is often both beneficial and timesaving to capture and report on a
variety of design artifacts and link them back to the design decisions or
guidelines that motivated their selection. The design activity framework can
support visualization designers in identifying new kinds of visualization design
artifacts and, by capturing this design knowledge, encourages the reuse of these
design artifacts across the visualization community.


One class of visualization designer is composed of novices, who may struggle to
grasp the complexities of the visualization design process. Unlike previous
design models, the design activity framework contains worksheets that guide
novices with a series of actionable steps toward generating visualization
artifacts and making design decisions. By prescribing activities, artifacts, and
their associated design decisions, the design activity worksheets could present
a pedagogical benefit for teaching visualization novices. Although existing
design theories and models for the visualization design process largely address
_how_ designers create a visualization, none of these models trace designers'
actions back to _why_ they make specific decisions, such as relying on
preexisting visualization guidelines, or selecting certain evaluation methods.
Without this connection, it is much harder for visualization designers, both
experts and novices, to answer the _how_ and _why_ questions of design using
existing visualization models. The design activity worksheets break apart
high-level activities into succinct definitions and descriptive step-by-step
actions for novice visualization designers to follow, which bridges the created
artifacts to the decisions that get made about them. Furthermore, worksheet
examples of an iterative, real-world design process can illustrate how to
generate and evaluate visualization artifacts across design activities. The
design activity worksheets are one new approach to teach the next generation of
visualization designers about the data visualization design process, by
equipping them with not only the theoretical knowledge but also the practical
skills for building better visualization systems and tools.





## Contributions

The primary contribution of this dissertation is the **design activity
framework**: a structure for how to perform a human-centered, data visualization
design process while tracking design methods, visualization artifacts, and
design decisions for each design activity. We introduce this framework as a
methodology for visualization designers pursuing problem-driven work, such as
design studies, but we also recognize its potential usefulness for general
visualization design, teaching novice visualization designers, and data
visualization pedagogy. The key novelty to this framework is its specificity for
visualization design by connecting steps of the design process to the design
decisions made and visualization-specific artifacts obtained. Other novel
aspects of this framework include its flexibility for iteration, actionability
to guide novice visualization designers, and connections to existing
visualization models.


To strengthen the contribution of this framework, we evaluated its use and
application across several different visualization design projects.
Specifically, we utilized this framework to formulate, guide, and reflect on the
design process of design studies and research in the fields of biology
[@mckenna2015s], cyber security [@McKenna2014; @Staheli2014; @McKenna2015;
@mckenna2016], and data visualization storytelling [@mckenna2017]. For each of
these projects, we employed a variety of qualitative and quantitative design
methods in order to validate the utility of this framework in real-world
projects and reflect on their use in future visualization design projects. We
describe two case studies for visualization of cyber security datasets that
illustrate examples of how to use this framework and provide rich descriptions
behind a variety of different visualization design artifacts. To explore
teaching and validating this framework in the classroom, we created concrete,
step-by-step worksheets for each activity that we evaluated through a series of
qualitative surveys and interviews with novice visualization designers. As a
result of this evaluation, we discovered that novices effectively learned how to
design and develop a visualization system while justifying their decisions using
the design activity worksheets.





## Overview

[@sec:background] presents the necessary background for this dissertation. As
the field of visualization matures, theories and models for visualization design
have become more prevalent, from evaluation strategies [@Plaisant2004;
@Lam2011a; @Carpendale2008a; @Isenberg2013a; @Shneiderman2006] to the design
process itself [@Tory2004; @Sedlmair2012b; @Lloyd2011; @Shneiderman2006;
@Wassink2009; @Chee2011]. We discuss these different theoretical design models
across communities, including models for visualization that focus separately on
either the design process or decisions. Next, we investigate various pedagogical
approaches for teaching the visualization design process [@cairo2012;
@Munzner2014; @Shneiderman2004; @Ware2010; @Sedlmair2012b; @Munzner2009].
Lastly, we explore the connection between visualization design and development
through an exploration on agile software engineering approaches.


A core contribution of this dissertation is the design activity framework; we
present an overview in [@sec:framework]. This framework addresses a missing
connection between different kinds of visualization design models, providing for
a more complete description of a design project in visualization. This framework
presents steps of a visualization design process through four design activities:
_understand_, _ideate_, _make_, and _deploy_. Each activity contains a
motivation or goal, a list of methods, and target visualization artifacts. These
concise definitions support novice designers in learning and utilizing the
framework to connect their design decisions to visualization artifacts. We
include a table of possible design methods that novices can employ to generate
and evaluate visualization artifacts. Lastly, a showcase of design timelines
illustrates how to track and report on activities with their associated
artifacts.


The design activity framework came out of reflections of the successful design
project explained in [@sec:formulation]. This project focused on redesigning a
cyber security tool, resulting in updates to the underlying system as a result
of this separate design process. This isolation of the design and development
enabled us to reflect on how to best describe and explain our visualization
design process to other collaborators who had novice visualization experience.
As a result, we describe this project as a case study for how to use the design
activity framework, and this chapter presents a variety of design methods,
visualization artifacts, and a design timeline.


To tailor the design activity framework to visualization novices, we created
concise design worksheets for the framework, described in [@sec:worksheets]. By
reflecting on our own experience using a variety of design methods, we
identified descriptive steps for each design activity of visualization design.
These steps served as a checklist that we taught and utilized in a visualization
course with students. We performed a qualitative evaluation of the use of these
visualization design worksheets in a cumulative project for which students had
to design and develop their own web-based visualization system from scratch.
This qualitative evaluation included survey feedback from 32 students and 11
in-depth, semistructured interviews.


In [@sec:security], we conducted a successful design study to create a cyber
security visualization dashboard using our framework. This design study
highlights significant challenges for user-centered design, such as limited
access to end users and data. We present several design methods that we used to
overcome these challenges and produce useful visualization design artifacts. We
include a discussion on the design decisions, evaluation, and deployment of this
visualization system as a case study on the descriptive and generative power of
the design activity framework.


[@sec:reflections] explores different applications of the design activity
framework for visualization through a perspective on the role of design and the
process across different kinds of visualization research. For example, a project
we encountered before we had the knowledge of this framework involved the
creation of a novel technique for exploring correlation, but the resulting
technique and tool failed to adequately solve the larger real-world problems
faced by our biology collaborators. Another project we conducted was an
exploration and evaluation of a design space for interactive, visual data
stories, and through this project we designed a tool to explore the design space
that helped create conditions for our user studies. Even though this research
was less driven by a visualization design process, we recognize that this work
was very formative and exploratory, the beginning step in shaping an
understanding and setting guidelines for future decisions made by visualization
designers in this space. Our reflections on these two projects demonstrate how
design can play a subtle yet pivotal role in both technique-driven and
evaluation-driven research.


We provide a discussion of the design activity framework for visualization
design and outline future work in [@sec:discussion]. In this discussion, we
include a call for more pedagogical work and materials for novice visualization
designers, based on the results of our framework and worksheet evaluations.
Additionally, we explore the notion of broader process models, for both research
and development, as ways to extend and connect these design models to more
effectively guide novices to build better visualization tools and systems.
Lastly, we conclude this dissertation in [@sec:conclusion] with a summary of our
contributions, findings, and recommendations.
