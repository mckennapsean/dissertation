# Introduction {#sec:intro}

Design has many meanings, and visualization design is about the planning and
creation of a visualization or combined visualization system. Visualization
design is known to be messy, iterative, and complex [@Sedlmair2012b; @DIS2010;
@Tory2004; @Wassink2009; @Chee2011; @Moere2011], but existing theories in the
visualization community do not fully address these characteristics. As the field
of visualization matures, theories and models for visualization design have
become more prevalent, from evaluation strategies [@Plaisant2004; @Lam2011a;
@Carpendale2008a; @Isenberg2013a; @Shneiderman2006] to the design process itself
[@Tory2004; @Sedlmair2012b; @Lloyd2011; @Shneiderman2006; @Wassink2009;
@Chee2011]. These theories and models for the design process largely address the
*how* of visualization design; however, they fail to explicitly describe the
connections of those actions back to the *why* of visualization design decisions
--- these design decisions are described instead by separate design decision
models [@Munzner2009; @Meyer]. \al{what is the problem first? then how to solve
it} The visualization community needs a new framework that bridges the design
process with design decisions to enable a richer description of the
visualization design process and provide more actionable guidance for novice
visualization designers.


This dissertation centers around the formulation, use, and validation of a
user-centered framework for capturing and describing the interplay between the
visualization design process and design decisions. For data visualization,
design centers around the creation of a single visualization or more robust
visualization system. This design process takes place in a series of overlapping
*activities* which produce *artifacts*, like a new visualization encoding. These
artifacts are produced as a result of *decisions* that are made by a
visualization designer, such as how to evaluate a system. No previous work
exists that connects all three of these aspects for visualization design.


Many visualization designers reflect on the role and steps of the design process
for creating and building novel and useful visualizations [@Sedlmair2012b;
@Lloyd2011; @Wassink2009; @Chee2011]. In the field of visualization,
problem-driven research often involves design studies, where visualization
experts create visualization systems to support solving a real world problem. It
is helpful both for novice visualization designers and even expert ones to
provide guidance on how to achieve success in these projects and avoid common
pitfalls which can lead to failure. There are also many different design process
models out there, many from the design or HCI communities, and even several
within the visualization community. Focusing on the design process can enable
visualization designers to apply what they have learned to other problems,
saving time and making more effective visualizations.


Visualization designers constantly make decisions throughout the process in
order to refine their work. These design decisions play a crucial role in
stating assumptions, \al{do they? why? how?} identifying design opportunities,
and formalizing requirements of a system. One of the most common kind of design
decisions is to perform an evaluation of a system, \al{is evaluation really
design?} from informal to formal or qualitative to quantitative, in order to
justify the use of a specific encoding or interaction technique [@Brehmer2014;
@McCurdy2015; @Kerzner2015; @Quinan2015]. Another common design decision is to
utilize 2D position to encode the most important visual data, over less
perceptually effective channels such as radial size or color [@Cleveland1984].
\al{check resource for more than just position? VERIFY} Design decisions are
often rooted in various research and design methods that can enable both the
generation and creation of artifacts.


Visualization design artifacts are often crucial to the success of a project,
especially for the final desired outcome which is sought to be usable, useful,
and effective. Commonly, artifacts are tangible software tools, but the design
process can involve other kinds of artifacts, such as sketches, ideas, documents
of user needs, or a list of software requirements. Existing process models fail
to capture some of these kinds of design artifacts, and this is largely due to
how existing models consider evaluation as a separate step of the design process
rather than a part of every step. Artifacts for visualization design can serve
many purposes, from measuring success to reuse in future projects; thus, it is
often both beneficial and time-saving to capture many artifacts and link them
back to design decisions.


The design process, design decisions, and artifacts can all be connected through
the design activity framework. Without this connection, it is much harder for a
visualization designer to answer both the *how* and *why* questions of design,
which results in less useful design process descriptions and models which can
lead to failure for novice designers. The design activity framework breaks apart
steps of the design process into a series of four overlapping activities. Each
activity has a specific motivation for a visualization designer to ground
themselves in. Once an activity is identified, the expected kind of artifact to
produce becomes clear. This further empowers visualization designers to choose
from appropriate kinds of design methods to make and justify design decisions.
Lastly, this framework connects to other existing visualization design models
and theories to enable a richer and more complete description of the
visualization design process.






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

In Chapter 2, the necessary background for this dissertation is presented. It
includes a discussion of creativity in visualization design and user-centered
design. There is a discussion on the different theoretical models presented in
visualization design, both process and decision models. This work is largely
complete, but an additional section on the role of agile development will be
fleshed out in the full dissertation.


The core contribution of this dissertation is the design activity framework; an
overview is presented in Chapter 3. This framework addresses a lack of
connection between different kinds of design models, providing for a more
complete description of a design project. This framework presents steps of a
process through four design activities: understand, ideate, make, and deploy.
Each activity contains a motivation or goal, a list of methods, and target
artifacts, to connect back to design decisions and help novice designers utilize
the framework more easily. This work is already completed, but it may be
modified over time and with reflection on our projects.


The design activity framework came out of reflections of previous failed
projects, and these projects are explained in Chapter 4. The first project
involved creation of a novel technique for exploring correlation, but the
resulting tool strayed from solving real world problems due to its novelty. A
second project focused on redesigning a tool, and this work resulted in only
minor software changes since the development process was isolated. We found that
a common aspect of failure in these projects was less reflection and decreased
control of the entire design process. These reflections led to the formulation
of the \al{more meta / in brackets?} design activity framework.


Using the design activity framework, we conducted a successful design study to
create a cyber security visualization dashboard, discussed in Chapter 5. This
design study introduced significant challenges to user-centered design, such as
limited access to end users and data. We present several design methods that
were used to overcome these challenges, and we discuss the design and successful
evaluation and deployment of this dashboard.


A second validation of the design activity framework is discussed in Chapter 6:
the design of a data storytelling authoring tool. For this project, we have
studied how authors currently use data visualization in telling stories on the
web. Using the techniques we have observed, we will create an authoring tool to
support creation of data stories and for authors to explore different dimensions
of the reading experience. We plan to evaluate this tool with users to measure
its effectiveness and utility. This work is on-going and is not completed yet.


Lastly, Chapter 7 contains a timeline for the proposed remaining work, to
outline the completion of this dissertation.

