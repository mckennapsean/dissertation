# Design Activity Framework {#sec:framework}

\sm{add table}
\sm{add timeline}
\sm{add more figures, micro and macro aspects}
\sm{flesh out content}
\sm{ideate, check definition}
\sm{watch out for make & deploy definitions for clarity, how relates for design?}

A design process consists of steps taken to achieve a given outcome, such as a
visualization system. Design decisions are the reasons and justification behind
a choice made for a visualization, such as choosing a pie or bar chart. Design
artifacts, like a system prototype, are the goal for each step of the design
process and from making design decisions. As explored in the previous chapter,
no such work exists which connects all three of these aspects for visualization
design. By connecting these components, the design activity framework more
completely captures and describes the design process, increasing its
actionability for use by other visualization designers.


In this chapter, we present an overview of the *design activity
framework*, a flexible structure meant to guide a designer
through the real-world, multilinear, and iterative  process
of developing a visualization for a specific problem or
application domain. We envision the framework as a lens that
designers can use to orient themselves within the design
process, to choose useful methods, to make appropriate
design decisions, and to analyze and summarize the process
itself. The design activity framework makes use of the
nested model [@Munzner2009] to explicitly link
the actions visualization designers take with the visualization
decisions they make along the way, leading to what we
believe is a more actionable visualization process model
than those that currently exist.


The concepts of this framework have developed over the course of several
real-world design processes, both as a result of less successful projects and
reflection upon successful case studies. Next, we present the idea of a *design
activity*, which forms the basis of the new framework. Following that, we
describe the four activities contained in the framework: *understand*, *ideate*,
*make*, and *deploy*. For each activity, we articulate the motivation,
artifacts, and the explicit link back to the levels of the nested model.


![
  We present the framework's breakdown of a *design activity:* motivation,
  outcomes, and methods, where methods can be generative or evaluative.
  Additionally, we provide four overlapping, multilinear activities that compose
  the design activity framework.
](figures/daf/framework.pdf){#fig:framework width="100%"}





## A Design Activity

At the core of this framework is the concept of an **activity**, a group of
actions a designer takes to work towards a specific artifact, or set of
artifacts. Many creative process models tend to avoid breaking a process into
sequential steps, stages, or phases, but, rather, they use the term activities
[@Wu2011; @Atman2009; @Cardella2008; @Rudisill1995; @Snider2013;
@Wodehouse2010a], which are not necessarily linear, and they are often
overlapping. Each activity is composed of several key components: a
*motivation*; clear, tangible *artifacts* related to design decisions; and a
collection of *methods*. We pictorially represent the design activity framework
in {*@fig:framework}.


<!--
The design activity framework consists of four different design activities:
*understand*, *ideate*, *make*, and *deploy*. Each of these activities consists
of a *motivation*, *design artifacts*, and *methods*. As shown in
{*@fig:activity}, the motivation places the designer within a specific activity
in the framework, with the goal of establishing a specific set of artifacts for
that activity. Artifacts are achieved using one or more design methods, both for
generative or evaluative purposes. The design activity framework supports
iterative, user-centered visualization design, and provides guidance about
effective methods for reaching a range of design goals. While the focus of this
paper is on three specific design methods, we ground these methods within the
design activity framework to provide guidance about how and when these methods
can be used most effectively.


![
  Overview of the design activity framework [@McKenna2014], showing how each
  design activity has a motivation, artifacts, and methods.
](figures/methods/framework.pdf){#fig:activity width="70%"}
-->


The **motivation** of an activity is the specific purpose behind the methods and
actions that are performed within that activity. For example, a motivation can
be to brainstorm new ideas to solve a specific problem or to test the efficacy
of an aspect of my chosen visualization for a specific task. By matching a
real-world motivation to those specified for each activity in the framework,
visualization designers can place themselves within a specific design activity,
which helps in choosing appropriate methods and identifying artifacts.


Next, **artifacts** are the specific, unique results of a design activity,
characterized by which level or levels of the nested model they address. There
is a close connection of artifacts with **methods**, which are actions or
techniques that a designer employs to either generate or evaluate artifacts. It
is the application of methods to the broad space of all visualization design
options, particularly methods for evaluation, where design decisions are made.


We highlight two distinct kinds of methods used in each design activity:
*generative* versus *evaluative*. Generative methods  are largely meant to be
divergent and create many artifacts, such as methods for brainstorming
[@Maiden2007; @Howard2008] or increasing creativity [@Maiden2004b;
@Goodwin2013a]. Evaluative methods, on the other hand, are convergent and filter
artifacts, such as methods that elicit feedback from domain experts [@Beyer1997;
@Lam2011a] or user studies [@Cairns2008; @Lazar2010]. This distinction between
generation and evaluation is common within the design community [@Brown2009;
@Hevner2008; @Hanington2003; @Christiaans2010; @Hevner2008]. Interestingly, some
methods can be both generative and evaluative, such as observation and
interviewing. In the design activity framework, we consider generative and
evaluative methods as vital components of each activity, unlike process models
that capture evaluation as a single, unique stage in the design process
[@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011; @Goodwin2013a; @DIS2010].


The design activity framework further characterizes the methods based on two
spectrums. First, generative methods can be used *narrowly to broadly*. For
example, a designer may narrowly consider only a single idea in the ideate
stage, as opposed to specifically applying brainstorming methods to generate
many different ideas broadly. Second, evaluative methods can be applied
*informally to formally*, such as a designer informally choosing a prototype
based on personal preferences versus formally comparing multiple prototypes
through a controlled user study. Characterizing the use of methods in each
activity is important for two reasons: 1) for elucidating missed opportunities
throughout the design process for further investigation and work; and 2) for
providing a mechanism to thoughtfully incorporate real-world project
constraints, such as time and budget considerations, into the design process.





## The Four Activities

We have identified four overlapping, critical activities for designing
visualizations for real-world problems and applications: understand, ideate,
make, and deploy. As shown in {*@fig:nm-comparison}, three of the four
activities map to several levels of the nested model, implying that a specific
design activity can be used to make different types of visualization design
decisions. Conversely, a designer focusing on just one type of design decision
will often move through different activities; thus, the culmination of a
complete visualization could involve moving through this framework in a complex,
iterative, and _multilinear_ fashion. By multilinear we mean that a process
combines forward, linear movement with cyclic, backwards, and parallel
movements. Next, we articulate the unique motivations and artifacts for each of
the four activities in the design activity framework.


![
  Here, we illustrate the overlap of the design activity
  framework with respect to the levels of the nested
  model [@Munzner2009]. It is important to note that each
  of the three inner levels of the nested model exists across
  two activities in the framework; thus, a visualization
  designer must think carefully about which levels of the
  nested model any process artifact corresponds with.
](figures/daf/nm-comparison.pdf){#fig:nm-comparison width="100%"}


### Understand

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


### Ideate

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


### Make

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


### Deploy

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





## Flow of the Framework

In our experience, a visualization design process never seems to progress
cleanly through a set of designated stages; this fact motivated our synthesis of
the design activity framework, which can be pieced together in many different
ways to best suit the needs of a project. This complex motion aligns with
creative process models from the design community that already emphasize that
design is messy, iterative, and multilinear [@Kumar2012; @Teal2010;
@Gandra2013a]. These creative process models advocate that there is no one right
way in which to engage in the activities of a framework.


There are two basic principles for the design activity framework when it comes
to the flow of the design process. First, the activities are ordered when moving
forward: understand, ideate, make, deploy. A project can start with any
activity, as with our cyber security redesign project, which started from a tool
in the deploy activity, but forward movement must happen in an ordered fashion,
even if the methods used are very narrow and informal. Backward movement,
however, can move to any previous activity. The second principle is that
activities can be nested or conducted in parallel, meaning that forward or
backward movement to a different activity can happen within an activity, such as
revisiting an understanding while brainstorming new ideas, or two activities
that occur concurrently. Taken together, these two  movement principles support
both iteration and multilinearity.

\al{example figures, more diagrams and examples of the framework is needed
here!}

<!--
Other visualization process models are also characterized in similar ways,
supporting ordered forward movement with iteration [@Chee2011; @Tory2004;
@Wassink2009; @Sedlmair2012b; @DIS2010], and others that suggest an overlap
between stages, such as the nine-stage framework [@Sedlmair2012b] and the
international standard for human-centred design activities [@DIS2010]. These
models, however, are often represented linearly or cyclically and imply the need
to start at the beginning of the process, making it difficult, for example, to
capture the process of a visualization redesign project.
-->





<!--
## Design Process Timelines


## Exemplar Methods (see DAF paper)


## Effective Design Methods
-->

We can use the framing of a design activity to find effective methods for
visualization design. We define effectiveness here as a reflection in two parts:
short-term and long-term. In the short-term, an effective design method must
successfully achieve the desired artifact for the design activity --- we argue
that this completed artifact is one way to validate a design method. The
long-term effectiveness of a method can be established when the method is used
within the development of a deployed visualization tool: one that is evaluated
with, and given to, real end users. Thus, we can determine if a design method
was effective within a project by reflecting on these two questions:

1. Did you achieve your desired artifacts?
1. Did you deploy a tool to users as a result of this method?

-->
