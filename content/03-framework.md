# Design Activity Framework {#sec:framework}

\sm{ideate, check definition}
\sm{watch out for make \& deploy definitions for clarity, how relates for design?}
\sm{check definitions, matched with figures?}

<!-- \sm{would be nice to have a concise macro-level fig. of the framework} -->

A design process consists of _activities_ or steps taken to achieve a given
outcome, such as a visualization system. Design _decisions_ are the reasons and
justification behind a choice made for a visualization, such as choosing a pie
or bar chart. Design _artifacts_, like a system prototype, are the goal for each
step of the design process and from making design decisions. As explored in the
previous chapter, no such work exists which connects all three of these aspects
for visualization design. By connecting these components, the design activity
framework more completely captures and describes the design process, increasing
its actionability for use by novice visualization designers.


In this chapter, we present an overview of the **design activity framework**, a
flexible structure meant to guide a novice designer through the real-world,
multilinear, and iterative  process of developing a visualization for a specific
problem or application domain. We envision the framework as a lens that a novice
designer could use to orient themselves within the design process, to choose
useful methods, to make appropriate design decisions, and to analyze and
summarize the process itself. The design activity framework makes use of the
nested model [@Munzner2009] to explicitly link the actions visualization
designers take with the visualization decisions they make along the way, leading
to what we believe is a more actionable visualization process model than those
that currently exist.


The concepts of this framework have developed over the course of several
real-world design processes, as a result of reflection on less successful
projects and more successful case studies. Next, we present the idea of a design
activity, which forms the basis of the new framework. Following that, we
describe the four activities contained in the framework: _understand_, _ideate_,
_make_, and _deploy_. For each activity, we articulate the motivation, possible
design methods, and the visualization artifacts which relate to decisions and
have an explicit link back to levels of the nested model. This framework
supports an iterative, human-centered visualization design process which we
characterize with the introduction of design timelines. Lastly, we provide
guidance on how to choose effective design methods with a table of 40 selected
design methods of interest to novice visualization designers to employ in their
own projects.


![
  We present the framework's breakdown of a _design activity_: motivation,
  artifacts, and methods, where methods can be generative or evaluative.
](figures/daf/design-activity.pdf){#fig:activity width="100%"}


![
  Design methods for visualization design are typically generative (divergent)
  or evaluative (convergent) in nature as artifacts get created and justified.
  Design decisions play a critical role in this process to select and winnow
  different visualization artifacts.
](figures/daf/design-methods.pdf){#fig:genoreval width="100%"}





## A Design Activity

At the core of the design activity framework is the concept of a design
**activity**, a group of actions a designer takes to work towards a specific
artifact, or set of artifacts. Many creative process models tend to avoid
breaking a process into sequential steps, stages, or phases, but, rather, they
use the term activities [@Wu2011; @Atman2009; @Cardella2008; @Rudisill1995;
@Snider2013; @Wodehouse2010a], which are not necessarily linear, and they are
often overlapping. Each activity is composed of several key components: a
_motivation_; clear, tangible _artifacts_ related to design decisions; and a
collection of _methods_. We illustrate an overview of a design activity in
[@fig:activity].


The **motivation** of an activity is the specific purpose behind the methods and
actions that are performed within that activity. For example, a motivation can
be to brainstorm new ideas to solve a specific problem or to test the efficacy
of an aspect of my chosen visualization for a specific task. By matching a
real-world motivation to those specified for each activity in the framework,
novice visualization designers can place themselves within a specific design
activity, which helps in choosing appropriate methods and identifying
visualization artifacts.


Next, visualization **artifacts** are the specific, unique results of a design activity,
characterized by which level or levels of the nested model they address. There
is a close connection of artifacts with design **methods**, which are actions or
techniques that a designer employs to either generate or evaluate artifacts. It
is the application of methods to the broad space of all visualization design
options, particularly methods for evaluation, where design **decisions** are made.


We highlight two distinct kinds of methods used in each design activity:
_generative_ versus _evaluative_, as shown in [@fig:genoreval]. Generative
methods are largely meant to be divergent and create many artifacts, such as
methods for brainstorming [@Maiden2007; @Howard2008] or increasing creativity
[@Maiden2004b; @Goodwin2013a]. Evaluative methods, on the other hand, are
convergent and filter artifacts, such as methods that elicit feedback from
domain experts [@Beyer1997; @Lam2011a] or user studies [@Cairns2008;
@Lazar2010]. This distinction between generation and evaluation is common within
the design community [@Brown2009; @Hevner2008; @Hanington2003; @Christiaans2010;
@Hevner2008]. Interestingly, some methods can be both generative and evaluative,
such as observation and interviewing. In the design activity framework, we
consider generative and evaluative design methods as vital components of each
activity, unlike process models that capture evaluation as a single, unique
stage in the design process [@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011;
@Goodwin2013a; @DIS2010]. This further encourages novice visualization designers
to consider evaluation early, and often, for each of the design activities they
complete.


The design activity framework further characterizes the methods based on two
spectrums. First, generative methods can be used _narrowly to broadly_. For
example, a novice visualization designer may narrowly consider only a single
idea in the ideate stage, as opposed to specifically applying brainstorming
methods to generate many different ideas broadly. Second, evaluative methods can
be applied _informally to formally_, such as a novice informally choosing a
prototype based on personal preferences versus formally comparing multiple
prototypes through a controlled user study. Characterizing the use of methods in
each activity is important for two reasons: 1) for elucidating missed
opportunities throughout the design process for further investigation and work;
and 2) for providing a mechanism to thoughtfully incorporate real-world project
constraints, such as time and budget considerations, into the design process.


We have identified four overlapping, critical activities for designing
visualizations for real-world problems and applications: _understand_, _ideate_,
_make_, and _deploy_. An overview of these activities, with unique letter and
coloring scheme used throughout this dissertation, is shown in [@fig:framework].
Next, we articulate these unique motivations and visualization artifacts for all
four design activities of the design activity framework.


![
  Here we present the design activity framework's four core design activities:
  _understand_, _ideate_, _make_, and _deploy_, which we refer to in following
  figures as the first initial of each activity and its associated color. We
  also include the motivation and expected artifacts for each activity.
](figures/daf/activities.pdf){#fig:framework width="100%"}





## Visualization Artifacts and the Nested Model

\sm{I think we need to include more of a discussion on this!}
\sm{I forgot that this was the 2nd paragraph in each activity... perhaps that is too much? we could separate out the nested model discussion into its own subsection. the sections on each activity would be smaller but that is okay, we could even flesh it out more there. I will read it and think about this!}

As shown in [@fig:nm-comparison], three of the four
activities map to several levels of the nested model, implying that a specific
design activity can be used to make different types of visualization design
decisions. Conversely, a designer focusing on just one type of design decision
will often move through different activities; thus, the culmination of a
complete visualization could involve moving through this framework in a complex,
iterative, and _multilinear_ fashion. By multilinear we mean that a process
combines forward, linear movement with cyclic, backwards, and parallel
movements.


![
  Here, we illustrate the overlap of the design activity
  framework with respect to the levels of the nested
  model [@Munzner2009]. It is important to note that each
  of the three inner levels of the nested model exists across
  two activities in the framework; thus, a visualization
  designer must think carefully about which levels of the
  nested model any process artifact corresponds with.
](figures/daf/nm-comparison.pdf){#fig:nm-comparison width="100%"}





## Understand Design Activity

The first activity in the framework is to **understand** the problem domain and
target users. The motivation for this activity is: *to gather, observe, and
research available information to find the needs of the user.* The artifacts of
this activity are commonly referred to as design requirements [@Jones2008;
@Royce1970; @Lloyd2011; @Goodwin2013a; @McLachlan2008; @DIS2010]. We
specifically characterize requirements into one of three classes:
*opportunities*, *constraints*, and *considerations*. **Opportunities**
encompass the data and task abstraction artifacts that have a potential to
impact the work and field of the  target users. They may also include higher
level themes discovered through the domain characterization, such as workflow
inefficiencies. **Constraints** are rigid limitations from the project itself
that the visualization designer must work with, such as tight deadlines or
display limitations. **Considerations**, however, are a looser, more flexible
form of constraints that a designer should strive to consider, such as the
importance of aesthetics or usability. Together, these three classes of
artifacts for the understand activity play a crucial role in all following
activities, and they often get reconsidered, adjusted, and prioritized
throughout the design process.


Artifacts for the understand activity fall into the outer two levels of the
nested model, the domain characterization and abstraction levels. These artifact
consist of acquired knowledge about the target set of users, their
domain-specific questions and goals, their workflows, and the types of
measurements or data they have acquired --- these artifacts are referred to as
situation blocks in the nested blocks and guidelines model [@Meyer].
Furthermore, the artifacts also include contextual information about the project
itself, such as real-world project considerations, i.e. time, budget, expertise,
etc. Artifacts can touch on the abstraction level of design decisions through an
identification of the tasks that users need to perform to reach their goals, as
well as an initial data abstraction that describes the users' measurements in a
structured way.





## Ideate Design Activity

The second activity in the framework is the **ideate** activity, which has the
motivation: *to generate good ideas for supporting the artifacts from the
*Understand* activity. \al{not clear on this being a previous activity... is
this really the best definition?} The artifact of the ideate activity is a set
of ideas that can be externalized in a variety of forms, from sketches to
wireframes to low-fidelity prototypes. It is important to note that the act of
externalizing an idea onto some medium often results in the generation of
additional ideas as they become more concrete [@Fallman2003a]. \al{unclear
sentence?}


These ideas encompass design decisions made at both the abstraction and
technique levels of the nested model. More specifically, at the abstraction
level ideas reflect decisions made about how to structure the data or derive new
data types that will support the *understand* artifacts. At the technique level,
the ideas reflect high-level design decisions about visual encoding and
interaction technique choices based on the abstraction decisions, such as
choosing a specific  visualization technique, while ignoring lower level
decisions about the details of that technique; exploring these low-level
decisions is the function of the make activity described in the next section.
Thus, the ideate activity supports very broad exploration of the high-level
design space for supporting a specific problem, leaving more detailed design
decisions to later activities.  Ideation is commonly considered as a separate
activity in the design community [@Brown2009; @Cardella2008; @Sedlmair2012b;
@Lidwell2010; @Vredenburg2002; @Ware2010; @Wodehouse2010a], and this separation
highlights the different kinds of design decisions made within the visualization
design process.





## Make Design Activity

The **make** activity is the third activity in the framework. This activity's
motivation is: *to concretize ideas into tangible prototypes.* The artifact from
the make activity is a set of prototypes, where prototypes are "approximations
of a product along some dimensions of interest" [@Hartmann2006a]. These
prototypes test aspects of design decisions made at the inner two levels of the
nested model, the technique and algorithm levels. These prototypes explicitly
explore the design decisions related to actualizing a specific visualization or
interaction technique. Whereas low-fidelity prototypes can exist in the ideate
activity, prototypes for the make activity are of a higher fidelity and
typically involve encoding of real data in order to evaluate the efficacy of the
visualization technique for a specific problem. This activity is not just
implementing a given design; rather, the activity, including development or
coding, also involves critical visualization design decisions [@Moere2011].


Most engineering design process models couple the ideate and make activities
together. We believe that these two activities have related, but different,
motivations and artifacts for visualization design, making their separation
important for a careful consideration of all types of visualization design
decisions. The ideate activity is meant to free the designer from focusing on
low-level design decisions in order to broadly consider more abstract ones. The
make activity, on the other hand, focuses the designer on the low-level design
decisions necessary to actualize an idea into a concrete, testable prototype,
such as the details of how to encode a data item or which algorithms to utilize.





## Deploy Design Activity

The fourth activity in the framework is the **deploy** activity, with the
motivation: *to bring a prototype into effective action in a real-world setting
in order to support the target users' work and goals.* The overall artifact of
this activity is a usable visualization system. This activity and its methods
are largely dominated by those from software engineering, with the focus of
supporting target users utilizing the tool. Thus, the artifacts of the deploy
stage touch on decisions made at the algorithm level of the nested model, as
well as other decisions that are not necessarily about the visualization design
itself, such as integration with existing software, databases, etc. This
activity is the ultimate goal of problem-driven visualization design since it
supports real-world users in their own work environments.





## Timelines of the Design Process

In our experience, a visualization design process never seems to progress
cleanly through a set of designated stages; this fact motivated our synthesis of
the design activity framework, which can be pieced together by a novice in many
different ways to best suit the needs of their visualization design project.
This complex motion aligns with creative process models from the design
community that already emphasize that design is messy, iterative, and
multilinear [@Kumar2012; @Teal2010; @Gandra2013a]. These creative process models
advocate that there is no one right way in which to engage in the design
activities of a framework.


![
  For conducting the design activity framework in real-world visualization
  projects, we have synthesized two basic movement ordering principles to the
  design activity. The first principle is that moving forward must only move to
  the adjacent activity (backwards movement is unrestricted), and the second
  principle is that activities may be conducted in parallel or in a hierarchical
  fashion based on the design team's focus and division of work. This supports
  flexible, iterative, and multilinear design across each of the different
  activities.
](figures/daf/activity-timeline.pdf){#fig:order width="100%"}


We identified two basic principles for the design activity framework when it
comes to the flow of the visualization design process. First, the activities are
ordered when moving forward: _understand_, _ideate_, _make_, _deploy_. A project
can start with any activity, as with some of our own projects which have begun
with a tool already deployed to end users, but forward movement must happen in
an ordered fashion, even if the design methods used are very narrow and
informal. Backward movement, however, can move to any previous design activity.
The second principle is that activities can be nested or conducted in parallel,
meaning that forward or backward movement to a different activity can happen
within an activity, such as revisiting an understanding while brainstorming new
ideas, or two activities that occur concurrently across a visualization design
team. Taken together, these two movement principles support both iteration and
multilinearity. Furthermore, we illustrate these principles in [@fig:order].


Other visualization process models are also characterized in similar ways,
supporting ordered forward movement with iteration [@Chee2011; @Tory2004;
@Wassink2009; @Sedlmair2012b; @DIS2010], and others that suggest an overlap
between stages, such as the nine-stage framework [@Sedlmair2012b] and the
international standard for human-centred design activities [@DIS2010]. These
models, however, are often represented linearly or cyclically and imply the need
to start at the beginning of the process, making it difficult, for example, to
capture the process of a more complex visualization redesign project. We wanted
to ensure flexibility of this framework to maximize its teaching potential for
novice visualization designers.


To further showcase these two movement principles, we provide several design
process timelines from different visualization projects in [@fig:timelines],
where design activities are represented as colored boxes. We include a detailed
discussion and annotation of the bottom timeline in [@sec:formulation]. These
timelines show the flow of a project across multiple activities, from nested and
parallel activities to backward movement.
<!-- \sm{is this the right timeline here? perhaps link to later chapter?} -->


![
  To illustrate the complex, iterative, and multilinear nature of the
  visualization design process, we constructed several different timelines
  from real-world visualization projects. Each colored box corresponds to an
  activity of the design activity framework, and these different timelines
  emphasize the flexibility of backward movement plus the parallel and nested
  support of these activities for a multi-focused approach. Lastly, these design
  timelines serve as concise communication materials that could help both novice
  and expert visualization designers track the progress of a project.
](figures/daf/timelines.pdf){#fig:timelines width="100%"}

<!-- \sm{could clean up these timeline figures, perhaps include some aspects of building or tools to create these in supplemental materials as well?} -->
<!-- \sm{note to self: you could reuse arrow from bubblenet project instead, cleaner...} -->


Other researchers have shown the feasibility and usefulness of a design process
timeline as an effective way to communicate a design process [@McLachlan2008;
@Walz1993], to foster collaboration [@Bohøj2010], and to highlight some aspects
of the multilinear nature of a design process [@Atman2009; @Wolf2006].
Communication of the design process is important not only for understanding and
evaluating the visualization research process itself, but also for supporting
replicability of problem-driven work. For novices, this communication can be
vital as this can improve team communication of concepts and facilitate faster
onboarding across skillsets. Visualization models such as the nested model
[@Munzner2009] are now widely used to communicate design decisions made over the
course of a visualization process, and we advocate for the design activity
framework as a way to structure the communication and reporting of a
visualization design process in a similar way.

<!-- \sm{nice start, but I feel like we could talk more about the timelines I show here too, perhaps flesh out some more detail. makes me wonder if it wouldn't be better to put in its own chapter though.} -->





## Choosing Effective Design Methods

To help novice users tackle a real-world design project, we present a list
of exemplar methods that can be used throughout the design
activity framework. This list contains methods commonly
found in the visualization literature, as well as many more
that come from the design, human-computer interaction,
software engineering, sociology, and anthropology
literature.
We present a shortened list of 40 methods in [@tbl:methods],
and a more extensive list of 100 methods is available in the Appendix.
We shortened to these 40 methods by picking those that
were mentioned within the framework and redesign project,
along with both commonly used and potentially novel or
interesting methods for visualization design.
<!-- \sm{TODO: add appendix and link here?} -->


Each method is characterized
by which activities of the design activity framework it
could be used in --- understand (**_u_**), ideate
(**_i_**), make (**_m_**), and
deploy (**_d_**). It is important to note that
many methods can and often are used in different design
activities. The methods are also categorized as being
either generative (**_g_**), evaluative
(**_e_**), or both in nature. There are several
methods, e.g. graffiti walls (_M-43_), interviewing
(_M-51_), and observation (_M-58_), that have
more complex characterizations than presented in this table;
please see the Appendix for a more complete
and detailed characterization. Some methods are also marked
as appearing within the visualization literature
(**_v_**). Finally, each method includes a
definition and reference to aid novice visualization designers in
bringing these methods into practice.
As the design activity framework targets novices performing problem-driven
visualization work, it is worth noting that many of the listed
methods involve collaboration with domain experts, such as bull's-eye diagramming
(_M-12_), contextual inquiry (_M-27_), paper
prototyping (_M-61_), and speed dating (_M-80_).


The list is by no means a complete compendium of
methods for visualization design, but rather a step towards
understanding the large space of actions a novice designer can take
throughout the design process.  Our goal in creating this list of
methods is two-fold: first, the table serves as additional
guidance for real-world, actionable usage of the design
activity framework by finding potential methods within a
specific design activity; and second, the table contains many
methods that are not commonly, if at all, found in the
visualization literature, and therefore provides new design methods to
potentially enhance the visualization design process. For
example, Goodwin et al. introduce several novel creativity
techniques for visualization design such as generating ideas using the
method of
constraint removal (_M-26_) [@Goodwin2013a].


![
  This table presents several
  exemplar methods and where they fit within the framework;
  we provide a more extensive list of 100 methods in the Appendix.
  We coded each method into one or more of the four design
  activities: understand (**_u_**), ideate (**_i_**),
  make (**_m_**), and deploy (**_d_**).
  Additionally, we tagged whether each method was largely
  generative (**_g_**) or evaluative (**_e_**), or both.
  Lastly, we tagged the methods we have seen commonly reported within the
  visualization community (**_v_**) and also present succinct
  definitions for each method to assist novices in trying each method out.
](figures/daf/table.pdf){#tbl:methods width="100%"}

<!-- \sm{we should probably explain a bit more about this coding process in the text somewhere?} -->
<!-- \sm{does this need to be a table instead of a figure?} -->
<!-- \sm{this is labeled as a figure here, can we change?} -->
<!-- \sm{TODO check with table vs figure caption differences in template?} -->


We can use the framing of a design activity to help novice visualization
designers find effective design methods. We define effectiveness here as a
reflection in two parts: short-term and long-term. In the short-term, an
effective design method must successfully achieve the desired visualization
artifact for the design activity --- we argue that this completed artifact is
one way to validate a design method. The long-term effectiveness of a method can
be established when the method is used within the development of a deployed
visualization tool: one that is evaluated with, and given to, real end users.
Thus, we can determine if a design method was effective within a visualization
project by reflecting on these two questions:

1. Did you achieve your desired visualization artifacts?
1. Did you successfully deploy a visualization tool to users as a result of this method?

