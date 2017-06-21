# Introduction {#sec:intro}

This dissertation introduces a new data visualization design process model to
guide and support visualization designers through the act of creating effective,
useful, and usable visualization systems. Existing visualization design process
models prove difficult to use in practice due to a disconnect with design
decisions, evaluation methods, design artifacts, and which step a designer is
in. We propose the design activity framework to more effectively guide
visualization designers through a series of design activities. Each design
activity has a descriptive motivation, a collection of generative or evaluative
design methods, and the goal of visualization artifacts, such as design
requirements, ideas, prototypes, and systems. The development of the design
activity framework is grounded in a series of formative and summative data
visualization projects, where we encountered limitations of existing models and
utilized this framework as a solution. The design activity framework is
validated through series of case studies in the fields of biology
[@mckenna2015s], cybersecurity [@McKenna2014; @McKenna2015; @mckenna2016], and
data storytelling [@mckenna2017] and also by an evaluation of design activity
worksheets taught in a data visualization classroom for use in a cumulative
project [@mckenna2017a].


In order to capture the challenges faced when using existing visualization
design process models, we identify five high-level goals for a model that, if
met, could effectively aid visualization designers: **achievability**,
**flexibility**, **justifiability**, **discoverability**, and **actionability**.
Specifically, existing models fail to clearly lay out goals for steps in the
design process, whereas our design activity framework includes achievable
artifacts and connections to justifiable design decisions. With an activity's
clear motivation, list of discoverable design methods, and flexible flow
principles, the design activity framework is also more actionable and could help
guide visualization designers effectively through the process. By working to
capture these five goals, the design activity framework is an improvement upon
existing models for data visualization design due to the model's increased
descriptive, evaluative, and generative power [@Beaudouin-Lafon2004].


To be _achievable_, a design process model should clearly highlight the desired
visualization outcomes. Existing models outline the design process as a series
of steps [@Sedlmair2012b; @Lloyd2011; @Wassink2009; @Chee2011], but the design
activity framework clearly defines and separates activities based on designers'
motivations. Additionally, visualization designers are given a clear end product
to work toward in each step: a visualization artifact. Commonly, visualization
artifacts are tangible software tools, but the visualization design process can
involve other kinds of artifacts, such as documents of user needs, a list of
software requirements, or sketches. Existing process models do not rigorously
capture some of these design artifacts, largely due to how these models consider
evaluation as a separate stage of the design process [@Lloyd2011; @Wassink2009;
@Chee2011] rather than a part of every activity. Artifacts for visualization
design can serve many purposes, from measuring success to being reused in future
projects; thus, it is often both beneficial and timesaving to capture and report
on a variety of design artifacts. By defining these steps and visualization
artifacts, the design activity framework increases achievability for designers
to produce visualization artifacts and progress to the next step.


A design process model should support _flexible_ iteration along with divergent
and convergent methodologies. The design activity framework meets this goal by
defining its four steps as activities. These activities can be conducted in
various orders, nested, and even conducted in parallel by different members of a
visualization design team. To capture the rich, complex, and flexible nature of
design [@Sedlmair2012b; @DIS2010; @Tory2004; @Wassink2009; @Chee2011;
@Moere2011; @Bigelow2014], this framing supports capturing the design process in
ways many existing visualization design process models fail to support.
Additionally, each step differentiates between generative and evaluative
methods, where generative methods allow for divergent approaches that encourage
exploration, novelty, creativity, and innovation [@Roberts2015], and the
evaluative methods winnow and narrow these artifacts to a smaller set.


Since steps can involve evaluative methods, it is important for a design process
model to include _justifiable_ design decisions as part of visualization
designers' rationale, and no existing models connect these design decisions
[@Munzner2009; @Meyer] with the design process. The design activity framework
includes evaluative methods in each step or activity to promote the validation,
justification, and formation of or building upon existing guidelines [@Meyer].
Such guidelines can help determine the effectiveness of a technique or encoding
[@Brehmer2014; @McCurdy2015; @Kerzner2015; @Quinan2015] and aid future designers
in avoiding common pitfalls [@Sedlmair2012b]. Other common design decisions stem
from preexisting guidelines in the visualization community, such as using
position along a common scale to encode the most important data visually, over
less perceptually effective channels such as angle, area, and saturation of
color [@Cleveland1984]. These methods and guidelines inform the design process
and potential visualization artifacts. It is important to capture visualization
designers' decisions and rationale for establishing rigor and transferability
[@Sedlmair2012b] of a visualization design process and its various artifacts.


With a broad range of generative and evaluative methods at their disposal,
visualization designers could benefit from a _discoverable_ approach for
finding, utilizing, and reflecting on the use of different user-centered design
methods. These design methods can be adopted from a wide variety of fields, from
human-computer interaction to design to software engineering. The design
activity framework specifically pulls from user-centered design methodologies
[@Kumar2012; @Martin2012] to organize, suggest, and promote new kinds of design
methods for visualization designers to employ. By emphasizing these design
methods that focus on identifying and designing for user needs, the methods in
this process model are useful for visualization designers conducting applied
research with domain experts, such as design studies [@Sedlmair2012b]. The
design activity framework was constructed to highlight, correlate, and promote
the discovery and inclusion of these user-centered design methods for a wide
array of different visualization design projects.


Lastly, a crucial aspect of a visualization design process model is how
_actionable_ it is, for it to be understood, taught, and utilized by
visualization designers. The design activity framework was created with succinct
terminology, which has the benefit of clarity for teaching the concepts to
visualization design novices [@Kindlmann2016]. Furthermore, by outlining four
concrete steps with evaluation throughout, the framework encourages novices to
think about the design rationale and reinforce their visualization knowledge by
practicing and applying guidelines across diverse situations and projects.
Visualization designers can learn to implement their own design process when
activities are further broken down into concrete steps [@Roberts2015], and
worksheets for this framework support such a walk-through approach. The notion
of iteration in design can also be emphasized, taught, and realized by novices
using these worksheets for real-world visualization projects. Moreover, existing
visualization models do not explore pedagogical approaches for teaching the
design process to visualization design novices.





## Contributions

The primary contribution of this dissertation is the **design activity
framework**: a structure for how to perform a human-centered, data visualization
design process while tracking design methods, visualization artifacts, and
design decisions for each design activity. We introduce this framework as a
methodology for visualization designers pursuing problem-driven work, such as
design studies, but we also recognize its potential usefulness for general
visualization design and data visualization pedagogy. The key novelty to this
framework is its specificity for visualization design by connecting steps of the
design process to the justifiable design decisions made and
visualization-specific artifacts obtained. Other novel aspects of this framework
include its flexibility for design iteration, actionability to guide
visualization designers, and discoverability of user-centered design methods


To strengthen the contribution of this framework, we evaluated its use and
application across several different visualization design projects.
Specifically, we utilized this framework to formulate, guide, and reflect on the
design process of design studies and research in the fields of biology
[@mckenna2015s], cybersecurity [@McKenna2014; @McKenna2015; @mckenna2016], and
data visualization storytelling [@mckenna2017]. For each of these projects, we
employed a variety of qualitative and quantitative design methods in order to
validate the utility of this framework in real-world projects and reflect on
their use in future visualization design projects. We describe two case studies
for visualization of cybersecurity datasets that illustrate examples of how to
use this framework and provide rich descriptions behind a variety of different
visualization design artifacts. To explore teaching and validating this
framework in the classroom, we created concrete, step-by-step worksheets for
each activity that we evaluated through a series of qualitative surveys and
interviews with novice visualization designers. As a result of this evaluation,
we discovered that students effectively learned how to design and develop a
visualization system while justifying their decisions using the design activity
worksheets.





## Overview

[@sec:background] presents the necessary background for this dissertation. As
the field of visualization matures, theories and models for visualization design
have become more prevalent, from evaluation strategies [@Plaisant2004;
@Lam2011a; @Carpendale2008a; @Isenberg2013a; @Shneiderman2006] to the design
process itself [@Tory2004; @Sedlmair2012b; @Lloyd2011; @Shneiderman2006;
@Wassink2009; @Chee2011]. We discuss these different theoretical design models
across communities, including models for visualization that focus separately on
either the design process or decisions. Lastly, we investigate various
pedagogical approaches for teaching the visualization design process
[@cairo2012; @Munzner2014; @Shneiderman2004; @Ware2010; @Sedlmair2012b;
@Munzner2009].


A core contribution of this dissertation is the design activity framework; we
present an overview in [@sec:framework]. This framework addresses a missing
connection between different kinds of visualization design models, providing for
a more complete description of a design project in visualization. This framework
presents steps of a visualization design process through four design activities:
_understand_, _ideate_, _make_, and _deploy_. Each activity contains a
motivation or goal, a list of methods, and target visualization artifacts. These
concise definitions support novice designers in learning and utilizing the
framework to connect their design decisions to visualization artifacts. We
include a table of possible design methods that visualization designers can
employ to generate and evaluate visualization artifacts. Lastly, a showcase of
design timelines illustrates how to track and report on activities with their
associated artifacts.


The design activity framework came out of reflections of the successful design
project explained in [@sec:formulation]. This project focused on redesigning a
cybersecurity tool, resulting in updates to the underlying system as a result
of this separate design process. This isolation of the design and development
enabled us to reflect on how to best describe and explain our visualization
design process to collaborators from different fields. As a result, we describe
this project as a case study for how to use the design activity framework, and
this chapter presents a variety of design methods, visualization artifacts, and
a design timeline.


In [@sec:security], we conducted a successful design study to create a cyber
security visualization dashboard using the design activity framework. This
design study highlights significant challenges for user-centered design, such as
limited access to end users and data. We present several design methods that we
used to overcome these challenges and produce useful visualization design
artifacts. We include a discussion on the design decisions, evaluation, and
deployment of this visualization system as a case study that shows the
descriptive and generative power of the design activity framework.


To tailor the design activity framework to visualization novices and increase
the model's actionability and achievability, we created concise design
worksheets for the framework, described in [@sec:worksheets]. By reflecting on
our own experience using a variety of design methods, we identified descriptive
steps for each design activity of visualization design. These steps served as a
checklist that we taught and utilized in a visualization course with students.
We performed a qualitative evaluation of the use of these visualization design
worksheets in a cumulative project for which students had to design and develop
their own web-based visualization system from scratch. This qualitative
evaluation included survey feedback from 32 students and 11 in-depth,
semistructured interviews. The design activity worksheets are one new approach
to teach the next generation of visualization designers about the data
visualization design process, by equipping them with not only the theoretical
knowledge but also the practical skills for building better visualization
systems and tools.


[@sec:reflections] explores different applications of the design activity
framework for visualization through a perspective on the role of the design
process across different kinds of visualization research. For example, a project
we encountered before we had the knowledge of this framework involved the
creation of a novel technique for exploring correlation, but the resulting
technique and tool failed to adequately solve the larger real-world problems
faced by our biology collaborators. Another project we conducted was an
exploration and evaluation of a design space for interactive, visual data
stories, and through this project we tested how readers interact with these
stories by building different visual experiences to compare. We recognize that
this work was very formative and exploratory, the beginning step in shaping an
understanding and setting guidelines for future decisions made by visualization
designers in this space. Our reflections on these two projects demonstrate how
design can play a subtle yet pivotal role in both technique-driven and
evaluation-driven research.


We provide a discussion of the design activity framework for visualization
design and outline future work in [@sec:discussion]. In this discussion, we
include a call for more pedagogical work and materials for novice visualization
designers, based on the results of our evaluation of the design activity
worksheets. We explore the connection between visualization design and
development, specifically agile software engineering approaches. Additionally,
we explore the notion of broader process models, for both research and
development, as ways to extend and connect these design models to more
effectively guide and support building better visualization tools and systems.
Lastly, we conclude this dissertation in [@sec:conclusion] with a summary of the
work.
