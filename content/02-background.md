# Background and Related Work {#sec:background}

While research in visualization design has explored many facets of design, the
main goals of the design activity framework originate from shortfalls in
existing visualization models: achievability, flexibility, justifiability,
discoverability, and actionability. In this chapter, we focus on two types of
visualization design models, decision and process models [@Meyer]. The nested
model [@Munzner2009; @Meyer] is the primary model for visualization design
decisions, which addresses justifiability unlike process models. On the other
hand, design process models can be grouped into two approaches based on research
in the human-computer interaction (HCI) community: creative and engineering
[@Lowgren1995; @Howard2008; @Wolf2006; @Moere2011], and together these two
approaches can complement and enrich a design process. Next, we investigate how
visualization design process models fail to capture the complex, actionable, and
flexible nature of the creative process. Furthermore, we reflect on the role and
use of human-centered design methods as a way to promote discoverability in
visualization design. Following this, we explore the achievability and
actionability of design process models with respect to how design pedagogy is
incorporated in the data visualization community. In the next chapter, we will
introduce the design activity framework as a way to bridge design activities
with the decisions a visualization designer might make, supporting all five
goals for an improved data visualization design process model.

<!-- ThesisOffice: REMOVE all figures and fig-refs in this chapter -->





## Types of Visualization Design Models

Visualization research often involves the creation of new visual encodings,
interaction techniques, and systems. This process of making something new is why
design plays an integral role in research [@Fallman2003a]. As such, there exist
a variety of theoretical models for visualization design and even more that have
been adapted, used, and taught by visualization designers. In this work, we
focus on two kinds of models for visualization design: decision models and
process models [@Meyer]. **Decision models** capture the _what_ and _why_ of
design by characterizing the rationale behind the decisions that a designer
makes. This rationale can be useful for tracking decisions with respect to the
project's context and for transferring design knowledge and guidelines to other
visualization projects. **Process models**, on the other hand, capture the _how_
of design, characterizing the actions that a designer takes as a series of
steps.


Linking a process model to a decision model enables visualization designers to
verify and validate the design decisions they make along each step of the design
process, but existing models for visualization design have failed to do so. This
link between decision and process models is highlighted by Sch\mbox{\"{o}}n's
reflection-in-action concept [@Schon1983], which emphasizes that the processes
of doing and thinking are complementary to each other; thus, the design process
and its many design decisions are intricately interconnected. However, existing
visualization design process models fail to capture this link and thus do not
meet a goal of justifiability. Additionally, we encountered limitations from
existing models in terms of actionability since guidance, descriptions, and
definitions for steps of the design process are not always outlined.


### Design Decision Models

Many researchers have explored the general act of decision-making in design. A
detailed model by Christiaans and Almendra captures both the mindset and
strategies of designers, such as problem-driven (targeting a specific
description of a challenge, such as generating software requirements) versus
solution-driven (focusing on a small set of possible solutions, such as
repurposing an existing tool or technique), as shown in [@fig:design-decision]
[@Christiaans2010]. These strategies get combined with specific
operationalizations of that mindset as well as with how decisions get made by an
individual or a team, such as autocratic versus autonomic. Similarly, Tang et
al. divide design decisions into three groups: planning, problem space, and
solution space decisions, in order to better realize the effect decisions have
on design [@Tang2010]. Through studying the process of expert designers, Wu et
al. identify three classes of design strategies: forward working (from abstract
to concrete), backward working (from concrete to abstract), and problem
switching (alternating between the two) [@Wu2011]. Furthermore, several
researchers have broken down decision-making into different kinds of high-level
design judgments, e.g., appearance, compositional, navigational, etc.
[@Nelson2003; @Wolf2006]. These decision models are useful for analyzing and
comparing general decisions and strategies for design, but they do not capture
the specific decisions that visualization designers face when representing and
encoding data in an interactive visualization system.


![
  Decision-making framework in design.
  Christiaans and Almendra identified different forms of design strategies, both
  problem and solution driven [@Christiaans2010]. Many other design decision
  models, outside of the visualization field, have similarly identified this
  separation of the problem and the solution, including the aspects of
  creative processes, such as exploration and generation, which lead to
  decisions that produce solutions.
](figures/background/design-decision-making.pdf){#fig:design-decision width="80%"}


Within the visualization community, the well-cited nested model [@Munzner2009],
as seen in [@fig:nested-model], is the de facto design decision model. One of
the primary motivations of the nested model is to support effective evaluation
and validation of different types of decisions that visualization designers
make. This model characterizes visualization design decisions as occurring at
one of four levels: domain characterization, data and task abstraction, visual
encoding and interaction, and algorithm. A recent extension to the model, called
the nested blocks and guidelines model [@Meyer], provides a more fine-grained
characterization of individual design decisions as blocks at each level, with
guidelines describing the relationships between blocks, as illustrated in
[@fig:nested-model-guidelines]. Together, blocks and guidelines relate the
visualization decisions a designer makes, with regard to finding good blocks in
the design of a visualization.


![
  The nested model for visualization design.
  Munzner produced the nested model with four levels to capture the specific
  data visualization design decisions [@Munzner2009]. Another goal of the model
  is to guide visualization designers to find appropriate validation depending
  on where they are in the model, and this validation guidance can provide
  warnings about potential errors which can cascade into downstream or deeper
  levels.
](figures/background/nested-model.pdf){#fig:nested-model width="80%"}


![
  The nested blocks and guidelines model.
  Meyer et al. introduced an extension to the nested model to more finely
  capture guidelines [@Meyer]. These guidelines stem from design decisions made
  by visualization designers, and guidelines can be established within or
  between levels of the nested model. As a visualization system is designed and
  developed, blocks and guidelines get constructed, compared, and evaluated.
](figures/background/nested-blocks-guidelines-model.pdf){#fig:nested-model-guidelines width="65%"}


It is important to stress that the nested model, as well as the nested blocks
and guidelines model, are not process models; they do not describe _how_ to
design a visualization, only the types of decisions (_what_) and rationale
(_why_) that a visualization designer formulates along the way [@Meyer]. Design
decisions, rationale, and guidelines are formed from employed evaluation
methods. Existing visualization process models fail to incorporate this
justifiability without a link to decision models. Moreover, numerous existing
models capture evaluation as only a step of the design process [@Chee2011;
@Tory2004; @Wassink2009; @Lloyd2011] rather than a continuing role throughout
the process like in design decision models.


### Design Process Models

Unlike a decision model, a design process model focuses on describing the
specific steps a designer takes over the course of designing a visualization.
Whereas design can mean many things to different people, the **data
visualization design process** is about the planning, creation, and evaluation
of a single data visualization or a multiview, robust visualization system. In
this regard, we consider design as a challenge that combines and mixes both
engineering and creative design processes [@Lowgren1995; @Howard2008; @Wolf2006;
@Moere2011], and this balanced mixture is what we sought in the synthesis of the
design activity framework. An **engineering design process** begins with a
problem definition, where the overall process is largely sequential and
convergent toward a single solution [@Lowgren1995]. On the other hand, a
**creative design process** begins with more gradual problem scoping, and the
process has many overlapping activities in which many different possibilities
are explored before choosing a single solution [@Lowgren1995]. Howard et al.
created a design process model to utilize both creative and engineering aspects,
displayed in [@fig:process-howard] [@Howard2008].


![
  An integrated creative design process model.
  Howard et al. created a model to encompass both engineering and creative
  design processes [@Howard2008]. Components of a previous model are connected
  in their modification in order to emphasize and call out the specific stages
  of generation, evaluation, and analysis. A key aspect of this model is the
  incorporation of creative output, which is an idea that must be novel,
  invented but not obvious, and be of use to industry.
](figures/background/design-process-howard.pdf){#fig:process-howard width="100%"}


An example of a creative model is Pugh's process, a design funnel in
[@fig:funnel] [@pugh1991total] that begins with concept generation and
controlled convergence iterating over time until a final concept is reached
[@buxton2010sketching]. Additionally, ideation and design activities often
involve sketching as a method which is a crucial aspect for creative design
processes, as sketching is not simply the act of drawing but rather is an
activity involving generation, brainstorming, learning, reasoning, and design
thinking [@buxton2010sketching]. As recognized by researchers in the design
[@Howard2008], HCI [@Wolf2006; @Lowgren1995], and visualization [@Moere2011]
communities, the combination and balanced mixture of both creative and
engineering process models is useful for characterizing the design process for
visualization designers. Specifically, this combination supports goals of
flexibility and actionability.


![
  The design funnel model.
  For product engineering, Pugh laid out the popular notion of a design funnel
  [@pugh1991total], where concept generation (CG) is interspersed with
  controlled convergence (CC). This funnel is foundational to the concepts of
  generation and evaluation for design.
](figures/background/design-funnel-pugh.pdf){#fig:funnel width="70%"}


Visualization-specific design process models describe unique aspects for
designing and evaluating visualization systems; however, they largely do not
connect to visualization design decisions and do not explicitly incorporate
aspects of a creative design process, such as the goals of flexibility and
discoverability. The seminal research method of multidimensional longitudinal
case studies [@Shneiderman2006] proposes a process and specific methods for
assessing and evaluating visualization systems deployed in the wild. This model,
however, does not cover the creation and development of a visualization system.
More abstracted design process models for visualization have also been proposed
in a variety of forms --- waterfall, cyclical, and spiral --- to perform
user-centered design [@Chee2011; @Tory2004; @Wassink2009], but they emphasize
convergence as in an engineering design process model. The design process model
used by both Lloyd and Dykes [@Lloyd2011] (shown in [@fig:process-lloyd]) and
Goodwin et al. [@Goodwin2013a] is drawn from an international standard on
human-centered design, ISO13407, which has recently been updated, ISO9241-210
[@DIS2010]. This standard's model, presented in [@fig:process-iso], describes
different design activities as a cycle, emphasizing an engineering approach.


![
  A model for the human-centered design process.
  Lloyd and Dykes adapted a process model [@Lloyd2011] to illustrate traditional
  engineering design processes (left), as well as more creative processes
  (right, in red). This development cycle further highlights the need for a
  model that clearly emphasizes the flexibility of a creative design process
  instead of implying cyclical movement.
](figures/background/design-process-lloyd.pdf){#fig:process-lloyd width="100%"}


![
  Process model where design activities are interconnected.
  The standard ISO9241-210 includes this design process model [@DIS2010] which
  breaks apart the stages of the design process into overlapping, human-centered
  design activities. However, the iteration and interconnection of these
  activities is not as clearly illustrated in the model or the standard.
](figures/background/design-process-iso.pdf){#fig:process-iso width="80%"}


Goodwin et al. accompany this engineering process model with specific methods
for eliciting creativity from end users [@Goodwin2013a], a step toward including
aspects of a creative design process. Vande Moere and Purchase further
characterize the role of design in visualization [@Moere2011], and, while no
design process model is outlined, their assertions on design emphasize the
importance of creative aspects for visualization design. By embracing concepts
from action design research (ADR), McCurdy et al. applied ADR to a design study
to illustrate how intervention with collaborators shaped the final visualization
design and how they reflected and learned throughout this process
[@McCurdy2016]. Although the visualization community recognizes that creative
aspects and design decisions are important, none of the visualization process
models explicitly incorporate creative aspects or link back to visualization
design decisions.


The model closest to the design activity framework is the nine-stage framework
for conducting design studies [@Sedlmair2012b], illustrated in
[@fig:nine-stage-framework], that captures the steps from initial planning
through the reflective analysis of a complete project. The middle core stages of
the model describe the steps involved with designing a visualization system,
with four stages that, at a high level, are similar in motivation to the
proposed design activity framework. In some of these middle stages, the levels
of the nested model are mentioned; however, an explicit description of what
types of artifacts should be expected at each step is not provided. Furthermore,
the model as a whole only loosely captures the overlapping and iterative nature
of visualization design, as well as the role of evaluation throughout, which
McCurdy et al. argue is crucial and should occur concurrently with building a
system [@McCurdy2016]. As such, we consider the design activity framework as an
extension of the four-core design stages in Sedlmair's model for design studies,
focused on helping conduct general visualization design projects.


![
  The nine-stage framework process model for design studies.
  Sedlmair et al. introduced nine different stages of the design process,
  characterized by three high-level categories [@Sedlmair2012b]. The gray arrows
  indicate iterative and nonlinear aspects. The design activity framework
  extends upon the four core stages of this model: discover, design, implement,
  and deploy, in order to increase the model's achievability, flexibility,
  justifiability, discoverability, and actionability.
](figures/background/nine-stage-framework.pdf){#fig:nine-stage-framework width="100%"}


The nine-stage framework, although the first model of its kind to provide
guidance for conducting design studies, provides less actionable advice for
visualization designers, such as knowing what design stage they are in, what
kinds of methods to employ, or the specific artifacts and decisions they should
make. The design activity framework is largely inspired by the nine-stage
framework but with a focus on providing more actionable guidance for
visualization designers that is not currently available within the nine-stage
framework and linking to design decisions to support justifiability.





## Flexibility in Visualization Design

In a visualization design project where we worked with two general designers and
a psychologist (discussed in [@sec:formulation]), we discovered a disparity with
how existing visualization design models support flexibility throughout the
design process. Although some visualization researchers argue that design and
research methods can elicit creativity in visualization design [@Lloyd2011;
@Goodwin2013a; @Moere2011], design practitioners explicitly emphasize and
highlight the complex nature of the design process [@Baker2010; @Cao2010] as
well as the role of design constraints [@Onarheim2010; @Savage1998]. Baker and
van der Hoek observed designers from Intuit, AmberPoint, and Adobe [@Baker2010].
The researchers tracked the designers' ideas over time, as seen in
[@fig:ideas-baker], which shows the complex, iterative, and non-linear nature of
the design process. In addition, a model used by Kumar to demonstrate design
methods also shows the nonlinear nature of the design process, as in
[@fig:process-kumar], and he further cautions against models that imply
linearity [@Kumar2012]. Design constraints and complex ordering of design
activities were not explicitly captured in many existing visualization process
models, and this led to a lack of flexibility when trying to track, describe,
and document our own design processes. Furthermore, by failing to connect to
design decisions or levels of the nested model [@Munzner2009], these models did
not emphasize the importance of design rationale for decision-making which can
play a critical role in how a complex design process unfolds.


![
  Designer ideas tracked over time.
  Baker and van der Hoek captured key ideas that designers generated from three
  companies: Intuit, AmberPoint, and Adobe (top to bottom) [@Baker2010]. This
  visualization emphasizes that ideas played a nonlinear role throughout the
  process.
](figures/background/design-ideas-baker.pdf){#fig:ideas-baker width="100%"}


![
  Design innovation process model.
  Kumar presents this model with seven modes [@Kumar2012] and a highlighted
  design process which again shows the importance of capturing nonlinearity for
  design. This model's concept motivated the representation of the design
  activity framework, to embrace creative process models by steering away from a
  linear or cyclic diagram.
](figures/background/design-process-kumar.pdf){#fig:process-kumar width="60%"}


By reflecting on our own design process in [@sec:formulation], we identify a
need for a process framework that balances the flexibility and actionability of
models from the design community with the explicit artifacts and decisions
necessary for visualization design. We developed the design activity framework
to overcome shortcomings in existing visualization design process models
[@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011; @Goodwin2013a; @DIS2010;
@Sedlmair2012b] and to incorporate ideas from a broad range of models in HCI
[@Wolf2006; @Vredenburg2002; @Rudisill1995] and design [@Lowgren1995;
@Howard2008; @Wolf2006; @Cardella2008; @Jones2008; @Brown2009; @Lidwell2010;
@Ware2010; @Wodehouse2010a; @DaGandra2012; @Teal2010; @Wu2011; @Atman2009;
@Snider2013].


Several creative design process models emphasize the importance of a design
funnel, where ideas and concepts are generated and evaluated over time
[@pugh1991total; @Brown2009]. These concepts are illustrated in [@fig:funnel]
and [@fig:funnel2], and we incorporated aspects of these models into the design
activity framework. By utilizing this design funnel and providing succinct
definitions, activity motivations, and desired visualization artifacts, such as
design constraints, the design activity framework achieves greater actionability
and flexibility over existing visualization design process models. Additionally,
principles that show a flow of activities that is complex, iterative and
multilinear increase the flexibility supported by the design activity framework.


![
  The design thinking funnel.
  For design thinking, Brown emphasizes the importance of a design funnel
  [@Brown2009], which diverges and converges choices over time. First, divergent
  thinking creates many choices or possible solutions. Brown emphasizes that
  analysis is an important step for convergent thinking, and we incorporated
  this concept in the design activity framework.
](figures/background/design-funnel-brown.pdf){#fig:funnel2 width="60%"}





## User-Centered Design Methods

User-centered design methods provide a promising approach to build better and
more effective visualization tools, and thus promoting the discoverability of
such design methods can benefit visualization design process models. By focusing
on users' needs, wants, and limitations, user-centered design methods can result
in more useful, usable, and enjoyable tools that enable users to achieve their
goals more effectively, efficiently, and with increased satisfaction, thus
providing benefits such as increased productivity, better accessibility, reduced
stress and risk of harm, and an improved sense of well-being [@DIS2010].
User-centered design and its methods have become widely accepted within the HCI
community [@Tory2004] and have become more popular and accepted within the
visualization community as well. Many different visualization practitioners have
illustrated potential phases and methods of a user-design process [@Chee2011;
@Tory2004; @Wassink2009; @Lloyd2011], but each lacks the connection to design
decisions or justifiability. Furthermore, these phases do not list a broad set
of possible set of design methods to support discoverability of new methods to
employ. To further complicate matters, many process models contain differing
phases of visualization design without a clear definition of the phases of this
process and how they connect to specific design methods for generation or
evaluation.


For visualization design, many publications report the use and benefit of
user-centered design methods, but connections to the larger design process is
not always stated which limits both the discoverability and actionability of
these methods. In many design studies, researchers interview users to derive
requirements for a visualization tool [@Goodall2005; @Erbacher2012;
@Brehmer2014; @McCurdy2015; @Kerzner2015; @Quinan2015]. There are other methods
for deriving user requirements, such as the personas design method [@Stoll2008a]
or qualitative coding and data sketches [@McKenna2015]. Others promote similar
design-first, co-creation, or creative approaches to help find innovative
visualization solutions, emphasizing visual concepts before user requirements
[@Paul2015; @Goodwin2013a; @Landstorfer2014]. Several researchers have used
iterative usability studies and user feedback to improve upon the design of a
visualization prototype [@Komlodi2005; @Hao2013a; @mckenna2016]. Many of the
visualization models capture more of an engineering design process, with a
testing or evaluation phase [@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011]
that does not support the role of evaluation and decisions throughout the
process. User-centered design methods can be evaluative at any step or phase, to
limit or narrow the choice of potential artifacts going forward. This gap stems
from a lack of emphasis on evaluative methods in existing visualization design
process models, but there exist a plethora of design methods that get utilized
in real-world projects and that could be introduced to visualization designers
if a model supported their discoverability.





## Pedagogy of Data Visualization Design

Another crucial aspect for visualization design models is how easily they can be
introduced, taught, and understood by novice visualization designers. Few
visualization process models have been studied and reported on their use in a
classroom setting. Existing process models for visualization could be improved
to more clearly outline the desired, achievable visualization artifacts.
Furthermore, the actionability of such models has not been studied or explored.
For example, actionable guidance might provide a more step-by-step walk through
[@Roberts2015] for the design process, and illustrative examples of the design
process can further add to the actionability of a model.


Over time, pedagogy for data visualization has shifted from more theoretical
concepts to emphasizing more actionable skills, such as design critique and
critical analysis [@Rushmeier2007; @Hearst2016b; @He2017]. As educators
incorporate aspects such as active learning [@Beyer2016; @Godwin2016;
@Hearst2016b] and design workshops [@He2017; @Huron2016; @Zoss2016] into the
classroom, it is important to teach concepts like design thinking to students
[@He2017]. To this purpose, He and Adar utilized a card-based toolkit,
highlighted in [@fig:vizitcards], to teach visualization design thinking to
students in class workshops [@He2017]. Moreover, teaching design thinking to
students emphasizes how to generate ideas broadly and how to avoid refining
ideas too early [@Roberts2015].


![
  Example VizItCards for use in design workshops.
  He and Adar incorporated a variety of cards into the classroom to teach and
  reiterate core visualization concepts [@He2017], such as the importance of
  identifying domain tasks, finding inspiration, and selecting appropriate
  abstractions and encodings. These cards and this workshop approach could work
  in tandem with the design activity framework and worksheets when designing a
  visualization.
](figures/background/vizitcards.pdf){#fig:vizitcards width="100%"}


However, novices may struggle in visualization design projects since existing
design models outlined in textbooks [@Ware2010; @Shneiderman2004] and research
papers [@Munzner2014; @Sedlmair2012b] utilize high-level terminology that is
often theory-based and less actionable out of context. Simplifying such
terminology and focusing on comprehensive aspects [@Kindlmann2016] can aid
students to understand and apply concepts more readily. Furthermore, steps for
the ideation process have been outlined by the five design-sheet methodology
with worksheets shown in [@fig:design-sheets] [@Roberts2015], but broader steps
beyond just ideation would be beneficial for visualization design pedagogy. The
design activity framework and worksheets provide such a step-by-step description
that increases not only its achievability but actionability as a visualization
design process model.


![
  Five design-sheet methodology worksheets.
  Roberts et al. present a method for teaching the ideation process to students
  using five worksheets [@Roberts2015] that encourage sketching visualization
  ideas and comparing them before realizing a final visualization design. This
  work motivated the creation of design activity worksheets for students to
  utilize and guide their design process for a cumulative project.
](figures/background/five-design-sheets.pdf){#fig:design-sheets width="90%"}

