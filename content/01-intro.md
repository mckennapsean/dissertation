# Introduction {#sec:intro}

\sm{refocus on teaching vis design}

<!--\sm{thoughts on we vs i?}-->

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

This dissertation's primary contribution is a user-centered framework for
visualization design: the design activity framework [@McKenna2014]. We present
this framework as a validated methodology for visualization designers pursuing
problem-driven work, such as design studies. The key novelty to this framework
is its specificity for visualization design by connecting steps of the design
process to the design decisions made and artifacts achieved during this process.
Other novel aspects of this framework includes its flexibility for iteration,
actionability to guide visualization designers, and connections to existing
models across fields. To strengthen the contribution of this framework, we have
validated its use and application across several different visualization design
projects. We have utilized this framework to formulate, guide, and reflect on
the design process of several case studies in the fields of biology
[@mckenna2015s], cyber security [@McKenna2014; @Staheli2014; @McKenna2015;
@mckenna2016], and data storytelling [@mckenna2017]. For each of these projects,
we have employed a variety of qualitative and quantitative design methods in
order to validate the utility of these methods in real-world projects and
reflect on using them in future projects. Furthermore, we illustrate the
importance of design artifacts and how they can play a useful and continued role
in a project. We conclude by reflecting on what we have learned about the
visualization design process from our case studies to inform future
problem-driven visualization research, design, and development.





## Overview

In [@sec:background], the necessary background for this dissertation is presented. It
includes a discussion of creativity in visualization design and user-centered
design. There is a discussion on the different theoretical models presented in
visualization design, both process and decision models. This work is largely
complete, but an additional section on the role of agile development will be
fleshed out in the full dissertation.


The core contribution of this dissertation is the design activity framework; an
overview is presented in [@sec:framework]. This framework addresses a lack of
connection between different kinds of design models, providing for a more
complete description of a design project. This framework presents steps of a
process through four design activities: understand, ideate, make, and deploy.
Each activity contains a motivation or goal, a list of methods, and target
artifacts, to connect back to design decisions and help novice designers utilize
the framework more easily. This work is already completed, but it may be
modified over time and with reflection on our projects.


The design activity framework came out of reflections of previous failed
projects, and these projects are explained in [@sec:formulation]. The first project
involved creation of a novel technique for exploring correlation, but the
resulting tool strayed from solving real world problems due to its novelty. A
second project focused on redesigning a tool, and this work resulted in only
minor software changes since the development process was isolated. We found that
a common aspect of failure in these projects was less reflection and decreased
control of the entire design process. These reflections led to the formulation
of the \al{more meta / in brackets?} design activity framework.


Using the design activity framework, we conducted a successful design study to
create a cyber security visualization dashboard, discussed in [@sec:security]. This
design study introduced significant challenges to user-centered design, such as
limited access to end users and data. We present several design methods that
were used to overcome these challenges, and we discuss the design and successful
evaluation and deployment of this dashboard.


A second validation of the design activity framework is discussed in Chapter ?:
the design of a data storytelling authoring tool. For this project, we have
studied how authors currently use data visualization in telling stories on the
web. Using the techniques we have observed, we will create an authoring tool to
support creation of data stories and for authors to explore different dimensions
of the reading experience. We plan to evaluate this tool with users to measure
its effectiveness and utility. This work is on-going and is not completed yet.


Lastly, Chapter ? contains a timeline for the proposed remaining work, to
outline the completion of this dissertation.

