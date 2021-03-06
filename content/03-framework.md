# Design Activity Framework {#sec:framework}

A design process consists of _activities_ or steps taken to achieve a given
outcome, such as a visualization system. Design _decisions_ are the reasons and
justification behind a choice made for a visualization, such as encoding with
either a pie or bar chart. Design _artifacts_, like a system prototype, are the
goal for each step of the design process and result from making design
decisions. As explained in [@sec:background], no work currently connects all
three of these aspects for visualization design. By connecting these components,
the design activity framework more comprehensively captures and describes the
design process with achievability through artifacts, flexibility in principles
of flow, justifiability by linking to design decisions, discoverability of
different user-centered design methods, and actionability for use by
visualization designers.


In this chapter, we present an overview of the **design activity framework**
[@McKenna2014], a flexible structure meant to guide a visualization designer
through the real-world, iterative, and multilinear process of developing a
visualization for a specific problem or application domain. We envision the
framework as a lens that visualization designers could use to orient themselves
within the design process, to choose useful methods, to make appropriate design
decisions, and to analyze and summarize the process itself. The design activity
framework makes use of the nested model [@Munzner2009] to explicitly link the
actions visualization designers take with the visualization decisions they make
along the way, leading to what we believe is a more actionable visualization
process model than those that currently exist.


We developed the framework over the course of several real-world design
processes, as a result of reflection on a previous research project
([@sec:reflections]) and more successful case studies ([@sec:formulation] and
[@sec:security]). Next, we discuss the methodology by which we initially
formulated the design activity framework. Then, we present the idea of a design
activity, which forms the basis of the new framework. Following that, we
describe the four activities contained in the framework: _understand_, _ideate_,
_make_, and _deploy_. For each activity, we articulate the motivation, possible
design methods, and the visualization artifacts that relate to decisions and
have an explicit link back to levels of the nested model. This framework
supports an iterative, human-centered visualization design process that we
characterize with the introduction of design timelines. Lastly, we provide
guidance on how to choose effective design methods with a table of 33 selected
design methods of interest to visualization designers to employ in their own
projects.





## Methodology

Through a series of reflective discussions, we formulated the groundwork for the
design activity framework [@McKenna2014]. Our design team was tasked with a
redesign of a cybersecurity visualization tool. Our team was composed of two
visualization practitioners, a psychologist, and several designers. During this
multidisciplinary project, we were cognizant of our design process,
visualization artifacts, motivations, and design methods. The two visualization
practitioners on the team attempted to use the nine-stage framework
[@Sedlmair2012b] to guide and model this process, but the model was unable to
capture and track our design constraints, artifacts, and decisions in such a way
that promoted team collaboration and the final project communication.


As a result, our team conducted a literature review of numerous design models,
presented in the previous chapter. This review utilized a characterization
between two types of design process models, creative and engineering models. Our
team recognized the importance of a visualization design process model to
incorporate both creative and engineering aspects to describe, capture, and
prescribe processes effectively, such as our redesign project and other past
experiences. However, in this literature review, we noted that no existing
visualization design process models had combined these types of models
comprehensively.


In order to create a new design process model for data visualization, we
utilized our team's combined experience in visualization design and general
design, in addition to terminology and concepts from existing models, as a guide
to identify different stages and components of the process. As a redesign team,
we iteratively codified the different stages performed, goals identified,
artifacts created, and methods employed in our own visualization projects. As a
result, we established a consensus for the terminology and these concepts which
comprise the design activity framework. Next, we introduce these concepts.





## A Design Activity


At the core of the design activity framework is the concept of a design
**activity**, a group of actions a visualization designer takes to work toward a
specific artifact or set of artifacts. Many creative process models tend to
avoid breaking a process into sequential steps, stages, or phases but, rather,
use the term activities [@Wu2011; @Atman2009; @Cardella2008; @Rudisill1995;
@Snider2013; @Wodehouse2010a], which are not necessarily linear, and they are
often overlapping. We characterize the composition of each activity using
several key components: a _motivation_; clear, tangible visualization
_artifacts_ related to design decisions; and a collection of design _methods_.
We illustrate an overview of a design activity in [@fig:activity].


![
  Breakdown of a _design activity_.
  The design activity framework is composed of a series of design activities,
  each with a motivation, visualization artifacts, and design methods. We
  characterize these three components to answer high-level questions about the
  design process, thus increasing the actionability of the framework.
](figures/daf/design-activity.pdf){#fig:activity width="100%"}


The **motivation** of an activity is the specific purpose behind the methods and
actions that are performed within that activity. For example, a motivation can
be to brainstorm new ideas to solve a specific problem or to test the efficacy
of an aspect of a specific visualization for a given task. By matching a
real-world motivation to those specified for each activity in the framework,
visualization designers can place themselves within a specific design activity,
which helps them choose appropriate methods and identify visualization
artifacts.


Next, visualization **artifacts** are the specific, unique results of a design
activity, characterized by which level or levels of the nested model they
address. Artifacts are closely connected with design **methods**, which
are actions or techniques that a designer employs to either generate or evaluate
artifacts. It is in the application of methods to the broad space of all
visualization design options, particularly methods for evaluation, that design
**decisions** are made between artifacts.


We highlight two distinct kinds of methods used in each design activity:
_generative_ versus _evaluative_, as shown in [@fig:genoreval]. Generative
methods are largely meant to be divergent and create many artifacts, such as
methods for brainstorming [@Maiden2007; @Howard2008] or increasing creativity
[@Maiden2004b; @Goodwin2013a]. Evaluative methods, on the other hand, are
convergent and filter artifacts, such as methods that elicit feedback from
domain experts [@Beyer1997; @Lam2011a] or user studies [@Cairns2008;
@Lazar2010]. This distinction between generation and evaluation is common within
the design community [@Brown2009; @Hevner2008; @Hanington2003; @Christiaans2010;
@Hevner2008]. For example, Pugh's design funnel includes both concept generation
and controlled convergence [@pugh1991total]. Interestingly, some methods can be
both generative and evaluative, such as observation and interviewing. In the
design activity framework, we consider generative and evaluative design methods
as vital components of each activity, unlike process models that capture
evaluation as a single, unique stage in the design process [@Chee2011;
@Tory2004; @Wassink2009; @Lloyd2011; @Goodwin2013a; @DIS2010]. This emphasis on
evaluation methods encourages visualization designers to consider evaluation
early, and often, for each design activity.


![
  Two types of design methods.
  For visualization design, these methods are typically generative (divergent)
  or evaluative (convergent) in nature as visualization artifacts get created
  and justified. Design decisions play a critical role in this process to select
  and winnow different visualization artifacts.
](figures/daf/design-methods.pdf){#fig:genoreval width="100%"}


The design activity framework further characterizes the methods based on two
spectrums. First, generative methods can be used _narrowly to broadly_. For
example, a novice visualization designer may narrowly consider only a single
idea in the ideate stage, as opposed to specifically applying brainstorming
methods to generate many different ideas broadly. Second, evaluative methods can
be applied _informally to formally_, such as a visualization designer informally
choosing a prototype based on personal preferences versus formally comparing
multiple prototypes through a controlled user study. Characterizing the use of
methods in each activity is important for two reasons: 1) for elucidating missed
opportunities throughout the design process for further investigation and work;
and 2) for providing a mechanism to thoughtfully incorporate real-world project
constraints, such as time and budget considerations, into the design process.


We identify four overlapping, critical activities for designing visualizations
for real-world problems and applications: _understand_, _ideate_, _make_, and
_deploy_. An overview of these activities, with the unique letter and coloring
scheme used throughout this dissertation, is shown in [@fig:framework]. Next, we
articulate these unique motivations and visualization artifacts for all four
design activities of the design activity framework.


![
  Four core design activities.
  We identified four visualization design activities: _understand_, _ideate_,
  _make_, and _deploy_. Additionally, we detail the motivation and expected
  visualization artifacts within each activity. Throughout this dissertation, we
  refer to activities using the first initial of each activity and its
  associated color.
](figures/daf/activities.pdf){#fig:framework width="100%"}





## Understand Activity

The first activity in the design activity framework for visualization projects
is to **understand** the problem domain and target users. The motivation for
this activity is _to gather, observe, and research available information to find
the needs of the user._ The artifacts of this activity are commonly referred to
as design requirements [@Jones2008; @Royce1970; @Lloyd2011; @Goodwin2013a;
@McLachlan2008; @DIS2010]. These design requirements are often tailored to help
users solve the problems or challenges they face in visualizing data. Not all
challenges that users or domain collaborators may face will use or need a
visualization system. For example, sometimes statistics, machine learning, or
existing visualization tools such as Microsoft Excel or Tableau can help solve
certain problems. In a visualization project, it is important for a
visualization designer to identify early on if there is a need and a set of
design requirements that cannot easily be solved using existing tools.


We break down visualization design requirements of the _understand_ activity
into three classes: _opportunities_, _constraints_, and _considerations_.
Visualization design **opportunities** encompass the data and task abstraction
artifacts that have a potential to impact the work and field of the target
users. It is important to uncover data and task abstractions that cannot or
cannot easily be solved using existing visualization tools. These opportunities
may also include higher level themes discovered through the domain
characterization, such as workflow inefficiencies when a collaborator may use
static visualization tools in a pipeline that is slow and not interactive, thus
making comparison tasks more difficult. Design **constraints** are rigid
limitations from the project that the visualization designer must work with,
such as rigid deadlines, limited hardware or computing systems, and access to
expert users and their time. **Considerations**, however, are a looser, more
flexible form of constraints that a designer should strive to consider, such as
the importance of a final visualization tool's aesthetics, usability, or
adherence to a set of domain visualization standards. These considerations may
and sometimes should be discounted, but careful analysis and justification need
to underlie such design decisions. Together, these three classes of
visualization artifacts for the _understand_ activity play a crucial role in all
following activities, and they often get reconsidered, adjusted, and prioritized
throughout the design process. For example, data and task abstractions can be
changed based on new data needed by a collaborator or a user expressing a need
for a new type of task not previously considered when performing an evaluation
of a deployed visualization system.





## Ideate Activity

The second activity in the framework is the **ideate** activity, which has the
motivation _to generate a plethora of concepts and then winnow these into good
ideas that meet the needs of a user._ The visualization artifacts of the
_ideate_ activity are a set of ideas often externalized in a variety of forms,
from sketches to wireframes to low-fidelity prototypes. Generation and
evaluation are two very important steps for ideation. For example, many creative
designers strive to generate ideas free of limitations, constraints, or
considerations because early judgment and decision-making can limit the range of
possible ideas and concepts produced. Divergent design thinking is valued and
recommended here, especially with visualization design, because such thinking is
where innovation occurs and new visualization designs, techniques, and
algorithms are created.


Beyond the creation of ideas, it is also important to compare, evaluate, and
winnow the broad set of ideas into ones that have a greater potential for impact
on a visualization tool. For example, a common choice faced by visualization
designers is whether to encode a network graph as a set of nodes and links drawn
between them or as a matrix to organize and restrict their position. Commonly,
this decision can be motivated by the types of tasks a user wants to perform,
but it could also be influenced by other factors such as the characteristics of
the data (e.g., how many nodes or links?) or what role this tool needs to play
in a larger system. Furthermore, to communicate and share ideas within a design
team or to evaluate them with users, it is often necessary to externalize these
ideas by sketching them on paper or through more refined versions such as
wireframes or low-fidelity prototypes. As a designer externalizes these ideas
onto some medium such as paper, it is common that more details of an idea must
be fleshed out and concretized [@Fallman2003a]. Another suggested technique in
the visualization community is data sketching [@Lloyd2011], which incorporates
data into the ideation process, to discover the results and limitations
encountered when using real data to realize an idea. For both concept sketching
and data sketching, it is also possible that more ideas may spin out of this
process, as a variation upon an existing idea or new idea combining several
together, so it is often recommended for visualization designers to externalize
their ideas early and often to help them generate more and better ideas.





## Make Activity

Next, a visualization designer must start to build a visualization system in the
**make** activity. This activity's motivation is _to concretize ideas into
tangible prototypes._ The visualization artifacts from the _make_ activity are a
set of prototypes, with prototypes defined as _"approximations of a product
along some dimensions of interest"_ [@Hartmann2006a]. These prototypes must be
built to handle and visualize real datasets, and it is common that, as
prototypes get constructed, more design requirements or ideas may be explored
and discovered, highlighting the iterative nature of visualization design.
Another aspect of the _make_ activity goes beyond design: visualization
designers need to employ software engineering and development techniques for
writing code and programs to build visualizations to meet the needs of the
users. This could be as simple as writing scripts or automating processes for
generating visualizations and tying them together using a variety of existing
tools, but designers can also use other visualization frameworks (e.g., D3.js,
Vega, Processing) or graphics toolkits (e.g., OpenGL, WebGL, Canvas) to build
and generate interactive visualizations from the ground up.


Most engineering design process models couple the ideate and make activities. We
believe that these two activities have related, but different, motivations and
artifacts for visualization design, making their separation important for a
careful consideration of all types of visualization design decisions. Although
low-fidelity prototypes can exist in the _ideate_ activity, prototypes for the
_make_ activity are of a higher fidelity and typically involve encoding of real
data in order to evaluate the efficacy of the visualization technique for a
specific problem. The _ideate_ activity is meant to free the designer from
focusing on low-level design decisions in order to broadly consider more
abstract ones. The _make_ activity, on the other hand, focuses the designer on
the low-level design decisions necessary to actualize an idea into a concrete,
testable prototype, such as the details of how to encode a data item or which
algorithms to utilize.





## Deploy Activity

The final design activity in the visualization framework is the **deploy**
activity, with the motivation _to construct a visualization system and bring it
into effective action in a real-world setting in order to support the target
users' work and goals._ The overall visualization artifact of this activity is a
usable visualization system. This activity is the ultimate goal of
problem-driven visualization design since it supports real-world users in their
own work environments. Constructing a visualization system often involves
considerations and steps not necessary for early visualization prototypes. For
example, it is less common to focus on usability, aesthetics, or scalability
issues in a prototype system, but these critical aspects of a final system can
impact domain collaborators' ability or desire to effectively use the produced
visualization tool for their set of tasks.


Another important step in the _deploy_ activity is to consider optimizations
needed by users to use a tool to solve their problems efficiently. As an
example, imagine domain collaborators generate their data using an industry
standard tool and want to be able to use that specific data format inside a
newly designed visualization system. For building an initial prototype of the
system, visualization designers may require the collaborators to export their
data or use a script to get it into a standard format in order to visualize it.
However, for daily tasks, this data process would be cumbersome, require
significant training, and limit the ability of the collaborators to use the
tool. A key aspect of deploying a visualization system is improving these
challenging aspects by having the system support domain collaborators' native
data formats once the tool is deployed, so that no special steps are needed for
them to use the visualization tool to solve their domain tasks.





## Justifying Design Decisions

![
  Connections to the nested model.
  We illustrate the overlap of the design activity framework with respect to the
  levels of the nested model [@Munzner2009]. It is important to note that each
  of the three inner levels of the nested model exists across two activities in
  the framework; thus, a visualization designer must think carefully about with
  which levels of the nested model any process artifact corresponds.
](figures/daf/nm-comparison.pdf){#fig:nm-comparison width="100%"}


Both novice and expert visualization designers can utilize the design activity
framework to reflect on the design decisions they made by tracking the
visualization artifacts they produce in each activity. As shown in
[@fig:nm-comparison], three of the four design activities and their associated
visualization artifacts map to two levels of the nested model, implying that a
specific visualization artifact can result from different types of visualization
design decisions. Conversely, a designer focusing on just one type of design
decision (e.g., which data abstraction to use) will often move through different
design activities to pick the right one; thus, the culmination of a complete
visualization could involve moving through this framework in a complex,
iterative, and _multilinear_ fashion. By multilinear, we mean that a process
combines forward, linear movement with cyclic, backward, and parallel movements.
We discuss more about movement and design timelines in the following section.


Artifacts for the _understand_ activity fall into the outer two levels of the
nested model, the domain characterization and abstraction levels. These
visualization artifacts of design requirements consist of acquired knowledge
about the target set of users, their domain-specific questions and goals, their
workflows, and the types of measurements or data they have acquired --- these
artifacts are referred to as situation blocks in the nested blocks and
guidelines model [@Meyer]. Furthermore, design requirements can also include
contextual information about the project itself, such as real-world project
considerations, i.e., time, budget, expertise, etc. Visualization artifacts can
touch on the abstraction level of design decisions through an identification of
the tasks that users need to perform to reach their goals, as well as an initial
data abstraction that describes the users' measurements in a structured way.


In the _ideate_ activity, ideas encompass design decisions made at both the
abstraction and technique levels of the nested model. More specifically, at the
abstraction level, ideas reflect decisions made about how to structure the data
or derive new data types that will best support the needs of the users. At the
technique level, the visualization artifacts reflect high-level design decisions
about visual encoding and interaction technique choices based on the abstraction
decisions, such as choosing a specific  visualization technique, while ignoring
lower level decisions about the details of that technique; exploring these
low-level decisions is the function of the _make_ activity described next. Thus,
the _ideate_ activity supports a very broad exploration of the high-level design
space for investigating a specific problem, leaving more detailed design
decisions to later activities.  Ideation is commonly considered as a separate
activity in the design community [@Brown2009; @Cardella2008; @Sedlmair2012b;
@Lidwell2010; @Vredenburg2002; @Ware2010; @Wodehouse2010a], and this separation
highlights the different kinds of design decisions made within the visualization
design process.


Visualization prototypes from the _make_ activity can explore aspects of design
decisions made at the inner two levels of the nested model, the technique and
algorithm levels. Visualization prototypes explicitly explore the design
decisions related to actualizing a specific visualization or interaction
technique using code, so they typically involve implementing a given
visualization encoding or interaction technique and the necessary algorithms
that make the prototype work. This activity is not just about implementing a
given design; rather, the activity, including development or coding, also
involves critical visualization design decisions [@Moere2011]. For example, when
using a map-based encoding for a dataset, a visualization designer might
discover that several data points are right on top of each other and has to
make low-level decisions on how the algorithm or encoding handles these
overlapping points so that they are shown completely and without error to the
user.


The _deploy_ activity and its final visualization system are often constructed
using methods from the field of software engineering and user experience
engineering, with a focus on supporting target users utilizing the tool in a
real-world situation. Thus, the visualization system must touch on decisions
made at the algorithm level of the nested model, in addition to other decisions
that are not necessarily about the visualization design itself, such as
integration with existing software, databases, etc. As such, these additional
decisions are not captured by the nested model. However, the algorithm level is
important to consider, since there may be issues of scalability or the
interactive speeds of the system when using the real, potentially larger
datasets that collaborators use in their day-to-day workflows. These types of
optimizations can even be published on their own as an algorithm improvement to
speed up the visualization encoding or interactive technique in other
visualization systems and tools.





## Timelines of the Design Process

In our experience, a visualization design process rarely progresses neatly
through a set of designated stages; this fact motivated our synthesis of the
design activity framework, which can be pieced together by designers in many
different ways to best suit the needs of their visualization design project.
This complex motion aligns with creative process models from the design
community that already emphasize that design is messy, iterative, and
multilinear [@Kumar2012; @Teal2010; @Gandra2013a]. These creative process models
advocate that there is no one right way in which to engage in the design
activities of a framework.


We identified two basic principles for the design activity framework when it
comes to the flow of the visualization design process. First, the activities are
ordered when moving forward: _understand_, _ideate_, _make_, _deploy_. A project
can start with any activity, as with some of our own projects that have begun
with a tool already deployed to end users, but forward movement must happen in
an ordered fashion, even if the design methods used are very narrow and
informal. Backward movement, however, can move to any previous design activity.
The second principle is that activities can be nested or conducted in parallel,
meaning that forward or backward movement to a different activity can happen
within an activity, such as revisiting an understanding while brainstorming new
ideas, or two activities that occur concurrently across a visualization design
team. Taken together, these two movement principles support both iteration and
multilinearity. We illustrate these principles in [@fig:order].


![
  Two movement principles for visualization design.
  We synthesized two ordering principles for design activities. The first
  principle is that moving forward must advance only to the adjacent activity
  (backward movement is unrestricted), and the second principle is that
  activities may be conducted in parallel or in a hierarchical fashion based on
  the design team's focus and division of work. These principles support
  flexible, iterative, and multilinear design across each of the different
  activities.
](figures/daf/activity-timeline.pdf){#fig:order width="100%"}


Many visualization process models are also characterized in similar ways,
supporting ordered forward movement with iteration [@Chee2011; @Tory2004;
@Wassink2009; @Sedlmair2012b; @DIS2010]; and researchers in visualization and
design suggest an overlap between stages, such as the nine-stage framework
[@Sedlmair2012b] and the international standard for human-centered design
activities [@DIS2010]. However, researchers often represent their design models
linearly [@Sedlmair2012b] or cyclically [@DIS2010] and thus imply the need to
start at the beginning of the process, making it difficult, for example, to
capture the process of a more complex visualization redesign project. We want to
ensure flexibility of the design activity framework to maximize its utility for
a wide variety of visualization design projects.


To establish and showcase these two movement principles, we provide several
design process timelines from different visualization projects and design
studies [@Ferstay2013; @Kerzner2015; @McKenna2014] in [@fig:timelines]. In these
timelines, design activities are represented with color boxes as in
[@fig:framework]. We created the top-most timeline in [@fig:timelines] from the
Variant View design study using the researchers' description of their design
process [@Ferstay2013]. We constructed the middle timeline with the creator of
Shotviewer [@Kerzner2015] to capture the parallel nature of that design study.
We include a detailed discussion and annotation of the bottom process timeline
[@McKenna2014] in [@sec:formulation]. These timelines show the flow of a project
across multiple activities, from nested and parallel activities to backward
movement.


![
  Examples of real-world design timelines.
  To identify the movement principles, we summarized several design studies into
  concise, communicative design process timelines that capture the flexibility
  of backward movement plus parallel and nested activities. Each colored box
  corresponds to a design activity. At the top, this timeline represents the
  Variant View design study process [@Ferstay2013]. In the middle, we illustrate
  the design process for Shotviewer [@Kerzner2015]. At the bottom, we present
  our redesign project's process [@McKenna2014], detailed in [@sec:formulation].
](figures/daf/timelines.pdf){#fig:timelines width="100%"}


Other researchers have shown the feasibility and usefulness of a design process
timeline as an effective way to communicate a design process [@McLachlan2008;
@Walz1993], foster collaboration [@Bohoj2010], and highlight some aspects of the
multilinear nature of a design process [@Atman2009; @Wolf2006]. Communication of
the design process is important not only for understanding and evaluating the
visualization research process itself, but also for supporting replicability of
problem-driven work. For novices, this communication can be vital as it can
improve team communication of concepts and facilitate faster onboarding across
skillsets. Visualization models such as the nested model [@Munzner2009] are now
widely used to communicate design decisions made over the course of a
visualization process, and we advocate for the design activity framework as a
way to structure the communication and reporting of a visualization design
process in a similar way.


Another unique aspect of the design activity framework is its merging of the
creative arts with engineering approaches. The design timeline is one example of
this concept, with complex and flexible aspects, such as the nested and parallel
activity support, coupled inside a linear timeline to show project progression
in an engineering mindset. By enabling this fluid coupling of design activities,
the design activity framework supports many complex paths of the design process
such as those in the creative arts. However, the timelines also encourage a
linear focus on producing artifacts and completing methods in order to meet
deadlines, which are engineering aspects. This dynamic and dual nature of the
design activity framework provides additional benefits to visualization
designers with a broad range of expertise and experience, since they can
practice and experiment with either of these aspects they are less familiar with
to gain experience and grow their skill set.





## Discovering Design Methods

\input{templates/methods-table-subset}

<!--
![
  Numerous exemplar methods within the framework.
  We coded methods into each design activity: _understand_ (**_u_**), _ideate_
  (**_i_**), _make_ (**_m_**), and _deploy_ (**_d_**). We tagged generative
  (**_g_**) and evaluative (**_e_**) methods, along with those commonly reported
  within the visualization community (**_v_**). We present definitions to assist
  designers employing methods. [Appendix @sec:app-methods] contains a more
  extensive list of 100 methods.
](figures/daf/table.pdf){#tbl:methods width="100%"}
-->


To help visualization designers tackle a real-world design project, we present a
list of exemplar methods that designers can use throughout the design activity
framework. This list contains methods commonly found in the visualization
literature, as well as many more that come from the design, human-computer
interaction, software engineering, sociology, and anthropology literature. We
present a list of 33 methods in [@tbl:methods] and a more extensive list of 100
methods in [Appendix @sec:app-methods]. We shortened the list by picking those
that were mentioned within the framework and redesign project we present in the
next chapter, along with both commonly used and potentially novel or interesting
methods for visualization design.


We informally coded and characterized each method by the activities of the
design activity framework in which it can be used --- _understand_ (**_u_**),
_ideate_ (**_i_**), _make_ (**_m_**), and _deploy_ (**_d_**). It is important to
note that many methods can and often are used in different design activities. We
also categorized the methods as being generative (**_g_**), evaluative
(**_e_**), or both in nature. Several methods, e.g., graffiti walls (_M-43_),
interviewing (_M-51_), and observation (_M-58_), have more complex
characterizations than presented in this table; please see [Appendix
@sec:app-methods] for a more complete and detailed characterization.
Additionally, we marked methods as appearing within the visualization literature
(**_v_**). Finally, each method includes a definition and reference to aid
visualization designers in bringing these methods into practice. As the design
activity framework targets designers performing problem-driven visualization
work, it is worth noting that many of the listed methods involve collaboration
with domain experts, such as bull's-eye diagramming (_M-12_), contextual inquiry
(_M-27_), paper prototyping (_M-61_), and speed dating (_M-80_).


The list is by no means a complete compendium of methods for visualization
design, but rather a step toward understanding the large space of actions a
designer can take throughout the visualization design process. Our goal in
creating this list of methods is twofold: first, the table serves as additional
guidance for real-world, actionable usage of the design activity framework by
finding potential methods within a specific design activity; and second, the
table contains many methods that are not commonly, if at all, found in the
visualization literature, and therefore provides new design methods that more
experienced visualization designers could utilize to potentially enhance their
design process. For example, Goodwin et al.\ introduce several novel creativity
techniques for visualization design such as generating ideas using the method of
constraint removal (_M-26_) [@Goodwin2013a].


We can use the framing of a design activity to help visualization designers find
effective design methods. We define effectiveness here as a reflection in two
parts: short-term and long-term effectiveness. For short-term effectiveness, a
design method must successfully achieve the desired visualization artifact for
the design activity --- we argue that this completed artifact is one way to
validate a design method. The long-term effectiveness of a method can be
established when the method is used within the development of a deployed
visualization tool: one that is evaluated with, and given to, real end users.
Thus, visualization designers can determine if a design method was effective
within their visualization project by reflecting on these two questions:

1. Did you achieve your desired visualization artifacts?
1. Did you successfully deploy a visualization tool to users as a result of this method?


Furthermore, we acknowledge that this methods table provides another benefit to
using the design activity framework in real-world projects. Specifically,
tagging methods as generative or evaluative is useful for visualization
designers in practice. Primarily generative design methods may be commonly
utilized in creative art and design for producing many artifacts. Conversely,
evaluative methods may be more common in engineering approaches to winnow
visualization artifacts into a smaller set. Thus, the design activity framework
flexibly supports visualization designers picking and choosing appropriate
design methods that can merge these creative and engineering design aspects.
Along these lines, visualization designers can push themselves to use more
generative or more evaluative methods, or new design methods in general, as they
grow and enhance their abilities for and expertise at creating and comparing
visualization tools and systems.





## Summary

In this chapter, we have introduced the design activity framework as a new
process model for visualization design. This model identifies four activities
for visualization design: _understand_, _ideate_, _make_, and _deploy_. Within
each of these activities, we specify succinct definitions, motivations, and
expected visualization artifacts to be achieved. Furthermore, visualization
designers can justifiably link design decisions they make with the visualization
artifacts they produce through the levels of the nested model. These decisions
highlight potential validation or evaluative methods to perform, and we provide
a table of user-centered design methods for further discoverability of new
methods to utilize. We also showcase the flexibility of the design activity
framework with generalized flow principles illustrated in several design
timelines for tracking and documenting the visualization design process.
Together, these contributions improve upon existing design process models due to
the design activity framework's overall increased achievability, flexibility,
justifiability, discoverability, and actionability.


The design activity framework is specific to visualization in a variety of ways.
First, this process model was formulated through reflection on many
visualization design projects, so we cannot claim that the stages, components,
artifacts, and methods will generalize to other kinds of design. The four design
activities, while they have generalized names, do have descriptive motivations
that are specific to the creation of a visualization tool or system. Similarly,
the design artifacts are defined as being specific to visualization, such as
task abstractions or visualization encodings. Some of the general principles of
the design activity framework may be useful to other kinds of design, but we
have used and validated the framework only for visualization design in a series
of case studies and in an external validation with novice visualization
designers.


Unlike previous design models for visualization, the design activity framework
more clearly lays out multiple elements of a design stage: its motivation,
visualization artifacts, and design methods. Additionally, the connection to
design decisions, through the nested model, is not included in any previous
visualization design process model. The design activity framework does have many
parallels with the nine-stage framework, and the four design activities could be
considered an extension upon the four core design phases of
Sedlmair et al.\ [@Sedlmair2012b]. However, the design activity framework is
based on the concept of a design activity with clear, descriptive definitions
and numerous possible design methods to employ, and it supports flexible and
dynamic timelines. We also carefully constructed this framework to incorporate
and merge the creative art and design aspects with an engineering approach to
provide a more comprehensive snapshot of the visualization design process. For
all these reasons, the design activity framework is a novel and useful design
process model for the visualization community.

