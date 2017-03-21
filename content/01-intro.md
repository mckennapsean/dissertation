# Introduction {#sec:intro}

<!-- problem: teaching design -->
The process of designing a visualization is known to be iterative, complex, and
occasionally messy [@Sedlmair2012b; @DIS2010; @Tory2004; @Wassink2009;
@Chee2011; @Moere2011]. Furthermore, pedagogical approaches for teaching the
visualization design process [@cairo2012; @Munzner2014; @Shneiderman2004;
@Ware2010; @Sedlmair2012b; @Munzner2009] can either be less concrete or quite
theoretical in nature so that these approaches may fail to effectively guide
novices toward building a visualization system. As the field of visualization
matures, theories and models for visualization design have become more
prevalent, from evaluation strategies [@Plaisant2004; @Lam2011a;
@Carpendale2008a; @Isenberg2013a; @Shneiderman2006] to the design process itself
[@Tory2004; @Sedlmair2012b; @Lloyd2011; @Shneiderman2006; @Wassink2009;
@Chee2011]. These theories and models for the visualization design process
largely address _how_ a novice can design a visualization; however, these
theories sometimes fail to explicitly distinguish or lay out specific steps for
a novice visualization designer because the models include rich but verbose
theoretical terminology. Additionally, none of these models describe the
connections of those actions back to _why_ a novice makes specific decisions,
such as relying on pre-existing visualization guidelines or through performing
evaluation methods. There is an opportunity here for creating a new approach to
teach the next generation of visualization designers, by equipping them not just
with theoretical knowledge but the practical steps for building better
visualization systems and tools. Furthermore with such a framework, the
visualization community could concretely report on their own design processes
for building visualization tools in a richer and more descriptive way.


<!-- overview of framework -->
This dissertation focuses on a new framework for teaching the visualization
design process to novice users. While design can mean many things to different
people, the **data visualization design process** is about the planning,
creation, and evaluation of a single data visualization or a multiview, robust
visualization system. The _data visualization design process_ takes place in a
series of overlapping **activities** which produce **artifacts**, such as a new
visualization encoding. These artifacts are produced as a result of
**decisions** that are made by a visualization designer, like guidelines that
are established through evaluating a system. No previous work exists that
connects all three of these aspects and describes the interplay between them for
visualization design. By simplifying terminology and laying out specific steps,
a new visualization process framework could help novices learn about the process
and conduct it more effectively.


<!-- design activities -->
Many visualization designers reflect on the role of _design activities_ as steps
of the design process for creating and building novel and useful visualizations
[@Sedlmair2012b; @Lloyd2011; @Wassink2009; @Chee2011]. In the field of
visualization, problem-driven research often involves design studies, where
visualization experts create visualization systems to support solving a real
world problem. It is helpful both for novice visualization designers and even
expert ones to provide guidance on how to achieve success in these projects and
avoid common pitfalls [@Sedlmair2012b] which can lead to wasted time, less
effective solutions, or even failure. There are also many different design
process models out there, many from the design or human-computer interaction
(HCI) communities, and several within the visualization community. The broad
range of and different steps showcased within each model make it challenging for
a novice visualization designer to learn how to design visualization systems on
their own.


<!-- design decisions -->
Visualization practitioners constantly make _design decisions_ throughout the
process in order to refine their work. These decisions play a crucial role in
justifying, validating, and challenging the use of artifacts that get generated
within a design activity. Others have used the term guidelines to describe this
same result of the decision-making process for visualization design [@Meyer].
Decisions and guidelines are connected with evaluation, where artifacts can be
compared and tested against each other. It is quite common to perform an
evaluation of a system, from informal to formal or qualitative to quantitative,
in order to justify the use or explore the effectiveness of a specific encoding
or interaction technique [@Brehmer2014; @McCurdy2015; @Kerzner2015;
@Quinan2015]. Other common design decisions stem from pre-existing guidelines in
the visualization community, such as using position along a common scale to
encode the most important data visually, over less perceptually effective
channels such as angle, area, and saturation of color [@Cleveland1984].
Currently, design decisions in the visualization community are commonly
described with respect to the nested model for visualization design
[@Munzner2009; @Meyer], but no visualization design process models bridge their
concepts to the levels of the nested model. If such a model existed, it could
help visualization novices make and track their design decisions based on which
guidelines or evaluation results they utilize as justification.


<!-- design artifacts -->
Visualization _design artifacts_ are often crucial to the success of a project,
especially for the final desired visualization system which should be usable,
useful, and effective. Commonly, artifacts are tangible software tools, but the
design process can involve other kinds of artifacts, such as sketches, ideas,
documents of user needs, or a list of software requirements. Existing process
models fail to rigorously capture some of these design artifacts, and this is
largely due to how existing models consider evaluation as a separate step of the
design process rather than a part of every activity. Artifacts for visualization
design can serve many purposes, from measuring success to being reused in future
projects; thus, it is often both beneficial and time-saving to capture and
report on a variety of design artifacts and link them back to the design
decisions or guidelines which motivated their selection. By identifying and
recognizing more kinds of design artifacts, novice visualization designers could
learn how to reuse not only what they know but what others know, and a more
descriptive approach for discussing design artifacts and associated decisions in
the visualization community could further aid contributions to this design
knowledge as well.


<!-- back to the solution -->
The activities of a visualization design process, with each of its artifacts and
associated design decisions, could all be connected through a new type of
visualization design framework. Without this connection, it is much harder for a
novice visualization designer to answer both the _how_ and _why_ questions of
design using existing models. Even expert visualization designers can struggle
with these models due to lack of useful step-by-step descriptions or no steps
altogether but focusing on just the decisions. If such a framework could
describe these steps of the visualization design process as series of
overlapping activities, then perhaps the iterative nature of a design process
would be immediately clear for novice designers. By prescribing each activity
with a simple, encompassing definitions, a novice could easily determine which
activity they are currently in, what visualization design artifacts they should
produce, and how to evaluate them. By providing a novice designer with specific
steps to perform, they can learn to design a visualization and perhaps learn and
grow on to using new design methods over time. The goal of such a framework
would be to empower novice visualization designers with the knowledge, tools,
and techniques available for them to effectively design a useful and usable
visualization system.





## Contributions

The primary contribution of this dissertation is the **design activity
framework**: a structure for how to teach novices to perform a human-centered
visualization design process while tracking their design decisions. We introduce
this framework as a methodology for visualization designers pursuing
problem-driven work, such as design studies. The key novelty to this framework
is its specificity for visualization design by connecting steps of the design
process to the design decisions made and visualization-specific artifacts
obtained. Other novel aspects of this framework includes its flexibility for
iteration, actionability to guide novice visualization designers, and
connections to existing models across fields. To strengthen the contribution of
this framework, we have evaluated its use and application across several
different visualization design projects. Specifically, we have utilized this
framework to formulate, guide, and reflect on the design process of design
studies and research in the fields of biology [@mckenna2015s], cyber security
[@McKenna2014; @Staheli2014; @McKenna2015; @mckenna2016], and data visualization
storytelling [@mckenna2017]. For each of these projects, we have employed a
variety of qualitative and quantitative design methods in order to validate the
utility of these methods in real-world projects and reflect on their use for
future projects. We also include rich descriptions behind a variety of different
visualization design artifacts used in a case study on cyber security as one
example of how to use this framework. To further simplify and validate this
framework, we created concrete, step-by-step worksheets for each activity that
we evaluated through a series of qualitative surveys and interviews with novice
visualization designers. As a result of this evaluation, we discovered that
novices effectively learned how to design and develop a visualization system
while justifying their decisions using the design activity worksheets.
<!--\sm{thoughts on we vs i here?}-->
<!--\sm{miriah suggested we over i, and formal over that if possible. stylistic decision}-->





## Overview

<!-- \sm{should I highlight which papers go where?} -->
In [@sec:background], we present the necessary background for this dissertation.
We begin by highlighting the various approaches used for design pedagogy in both
the visualization and human-computer interaction communities. The chapter
includes a discussion of different types of theoretical design models across
communities, including models for visualization that focus separately on either
the design process or decisions. Then we explore the relation of design to
development in a discussion on agile software engineering approaches.


A core contribution of this dissertation is the design activity framework; we
present an overview in [@sec:framework]. This framework addresses a missing
connection between different kinds of visualization design models, providing for
a more complete description of a design project. This framework presents steps
of a visualization design process through four design activities: _understand_,
_ideate_, _make_, and _deploy_. Each activity contains a motivation or goal, a
list of methods, and target visualization artifacts. These concise definitions
support novice designers in learning and utilizing the framework to connect
their design decisions to visualization artifacts. We include a table of
possible design methods that novices can employ to generate and evaluate
visualization artifacts. Lastly, a showcase of design timelines illustrates how
to track and report on activities with their associated visualization design
artifacts.


The design activity framework came out of reflections of a successful design
project explained in [@sec:formulation]. This project focused on redesigning a
cyber security tool, and this work resulted in updates to the underlying system
as a result of this separate design process. This isolation of the design and
development enabled us to reflect with other collaborators with novice
visualization experience on how to best describe and explain our visualization
design process. As a result, we used this project as an example use-case for how
to use the design activity framework, and this chapter showcases a variety of
design methods, visualization artifacts, and design timelines.


To tailor the design activity framework to visualization novices, we created
concise design worksheets for the framework, in [@sec:worksheets]. By reflecting
on our own experience using a variety of design methods, we identified simple
but descriptive steps for each design activity of visualization design. These
steps served as a checklist, which we taught and utilized in a visualization
course with real novices. We performed a qualitative evaluation of the use of
these visualization design worksheets for a cumulative project where students
had to design and develop their own web-based visualization system from scratch.
This qualitative evaluation included survey feedback from 32 students and 11
in-depth, semi-structured interviews.


In [@sec:security], we conducted a successful design study to create a cyber
security visualization dashboard using this framework. This design study
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
creation of a novel technique for exploring correlation, but the resulting tool
we designed strayed away from solving real world problems of our biology
collaborators due to its novelty. Another project we conducted was an
exploration and evaluation of a design space for interactive, visual data
stories, and through this project we designed a tool to explore the design space
and help create conditions studied in our user studies. While the overall work
was less driven by a design process, we recognize that this work was very
formative and exploratory, beginning to shape an understanding and setting
guidelines for future decisions made by visualization designers in this space.
Our reflections on these two projects showcase how design can play a subtle yet
pivotal role in both technique-driven and evaluation-driven research.


We provide a discussion of this framework and outline future work in
[@sec:discussion]. In this discussion, we include a call for more pedagogical
work and materials for novice visualization designers, based on results of our
framework and worksheet evaluations. Additionally, we explore the notion of
broader process models, for both research and development, as ways to extend and
connect these models to better guide novices to build better visualization tools
and systems. Lastly, we conclude this dissertation in [@sec:conclusion] with a
summary of our contributions, findings, and recommendations.
