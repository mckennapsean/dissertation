# Background and Related Work {#sec:background}

While research in visualization design has explored many facets of design, the
main goals of the design activity framework originate from shortfalls in
existing visualization models: achievability, flexibility, justifiability,
discoverability, and actionability. In this chapter, we focus on two types of
visualization design models, decision and process models [@Meyer]. The nested
model [@Munzner2009; @Meyer], the primary model for visualization design
decisions, addresses justifiability unlike process models. On the other hand,
design process models can be grouped into two approaches based on research in
the human-computer interaction (HCI) community: creative and engineering
[@Lowgren1995; @Howard2008; @Wolf2006; @Moere2011]. Together, these two
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
repurposing an existing tool or technique)
[@Christiaans2010]. These strategies are combined with specific
operationalizations of that mindset as well as with how decisions get made by an
individual or a team, such as autocratic versus autonomic. Similarly, Tang et
al.\ divide design decisions into three groups: planning, problem space, and
solution space decisions, in order to better realize the effect decisions have
on design [@Tang2010]. Through studying the process of expert designers, Wu et
al.\ identify three classes of design strategies: forward working (from abstract
to concrete), backward working (from concrete to abstract), and problem
switching (alternating between the two) [@Wu2011]. Furthermore, several
researchers have broken down decision-making into different kinds of high-level
design judgments, e.g., appearance, compositional, navigational, etc.
[@Nelson2003; @Wolf2006]. These decision models are useful for analyzing and
comparing general decisions and strategies for design, but they do not capture
the specific decisions that visualization designers face when representing and
encoding data in an interactive visualization system.


Within the visualization community, the well-cited nested model [@Munzner2009],
is the de facto design decision model. One of
the primary motivations of the nested model is to support effective evaluation
and validation of different types of decisions that visualization designers
make. This model characterizes visualization design decisions as occurring at
one of four levels: domain characterization, data and task abstraction, visual
encoding and interaction, and algorithm. A recent extension to the model, called
the nested blocks and guidelines model [@Meyer], provides a more fine-grained
characterization of individual design decisions as blocks at each level, with
guidelines describing the relationships between blocks.
Together, blocks and guidelines relate the
visualization decisions a designer makes, with regard to finding good blocks in
the design of a visualization.


It is important to stress that the nested model, as well as the nested blocks
and guidelines model, are not process models; they do not describe _how_ to
design a visualization, only the types of decisions (_what_) and rationale
(_why_) that a visualization designer formulates along the way [@Meyer]. Design
decisions, rationale, and guidelines are formed from employed evaluation
methods. Existing visualization process models fail to incorporate this
justifiability because they have no link to decision models. Moreover, numerous
existing models capture evaluation as only a step of the design process
[@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011] rather than a continuing role
throughout the process as in design decision models.


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
are explored before choosing a single solution [@Lowgren1995].
Howard et al.\ created a design process model to utilize both creative and
engineering aspects [@Howard2008].


An example of a creative model is Pugh's process, a design funnel
[@pugh1991total] that begins with concept generation and
controlled convergence iterating over time until a final concept is reached
[@buxton2010sketching]. Additionally, ideation and design activities often
involve sketching as a method that is a crucial aspect for creative design
processes, as sketching is not simply the act of drawing but rather is an
activity involving generation, brainstorming, learning, reasoning, and design
thinking [@buxton2010sketching]. As recognized by researchers in the design
[@Howard2008], HCI [@Wolf2006; @Lowgren1995], and visualization [@Moere2011]
communities, the combination and balanced mixture of both creative and
engineering process models is useful for characterizing the design process for
visualization designers. Specifically, this combination supports goals of
flexibility and actionability.


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
used by both Lloyd and Dykes [@Lloyd2011] and
Goodwin et al.\ [@Goodwin2013a] is drawn from an international standard on
human-centered design, ISO13407, which has recently been updated, ISO9241-210
[@DIS2010]. This standard's model describes
different design activities as a cycle, emphasizing an engineering approach.


Goodwin et al.\ accompany this engineering process model with specific methods
for eliciting creativity from end users [@Goodwin2013a], a step toward including
aspects of a creative design process. Vande Moere and Purchase further
characterize the role of design in visualization [@Moere2011], and, although no
design process model is outlined, their assertions on design emphasize the
importance of creative aspects for visualization design. By embracing concepts
from action design research (ADR), McCurdy et al.\ applied ADR to a design study
to illustrate how intervention with collaborators shaped the final visualization
design and how they reflected and learned throughout this process
[@McCurdy2016]. Although the visualization community recognizes that creative
aspects and design decisions are important, none of the visualization process
models explicitly incorporate creative aspects or link back to visualization
design decisions.


The model closest to the design activity framework is the nine-stage framework
for conducting design studies [@Sedlmair2012b]
that captures the steps from initial planning
through the reflective analysis of a complete project. The middle core stages of
the model describe the steps involved with designing a visualization system,
with four stages that, at a high level, are similar in motivation to the
proposed design activity framework. In some of these middle stages, the levels
of the nested model are mentioned; however, an explicit description of what
types of artifacts should be expected at each step is not provided. Furthermore,
the model as a whole only loosely captures the overlapping and iterative nature
of visualization design, as well as the role of evaluation throughout, which
McCurdy et al.\ argue is crucial and should occur concurrently with building a
system [@McCurdy2016]. As such, we consider the design activity framework as an
extension of the four-core design stages in Sedlmair's model for design studies,
focused on helping conduct general visualization design projects.


The nine-stage framework, although the first model of its kind to provide
guidance for conducting design studies, provides less actionable advice for
visualization designers, such as knowing what design stage they are in, what
kinds of methods to employ, or the specific artifacts and decisions they should
make. The design activity framework is largely inspired by the nine-stage
framework but focuses on providing more actionable guidance for visualization
designers, which is not currently available within the nine-stage framework, and
linking to design decisions to support justifiability.





## Flexibility in Visualization Design

In a visualization design project in which we worked with two general designers
and a psychologist (discussed in [@sec:formulation]), we discovered a disparity
with how existing visualization design models support flexibility throughout the
design process. Although some visualization researchers argue that design and
research methods can elicit creativity in visualization design [@Lloyd2011;
@Goodwin2013a; @Moere2011], design practitioners explicitly emphasize and
highlight the complex nature of the design process [@Baker2010; @Cao2010] as
well as the role of design constraints [@Onarheim2010; @Savage1998]. Baker and
van der Hoek observed designers from Intuit, AmberPoint, and Adobe [@Baker2010].
The researchers tracked the designers' ideas over time,
which shows the complex, iterative, and nonlinear nature of
the design process. In addition, a model used by Kumar to demonstrate design
methods also shows the nonlinear nature of the design process,
and he further cautions against models that imply
linearity [@Kumar2012]. Design constraints and complex ordering of design
activities were not explicitly captured in many existing visualization process
models which led to a lack of flexibility when trying to track, describe,
and document our own design processes. Furthermore, by failing to connect to
design decisions or levels of the nested model [@Munzner2009], these
visualization models do not emphasize the importance of design rationale for
decision-making, which can play a critical role in how a visualization design
process unfolds.


By reflecting on our own design process in [@sec:formulation], we identify a
need for a process framework that balances the flexibility and actionability of
models from the design community with the explicit artifacts and decisions
necessary for visualization design. Bigelow et al.\ further emphasize this need
that designers have for design flexibility, specifically for using visualization
systems to broadly explore visual encodings [@Bigelow2014]. We developed the
design activity framework to overcome shortcomings in existing visualization
design process models [@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011;
@Goodwin2013a; @DIS2010; @Sedlmair2012b] and to incorporate ideas from a broad
range of models in HCI [@Wolf2006; @Vredenburg2002; @Rudisill1995] and design
[@Lowgren1995; @Howard2008; @Wolf2006; @Cardella2008; @Jones2008; @Brown2009;
@Lidwell2010; @Ware2010; @Wodehouse2010a; @DaGandra2012; @Teal2010; @Wu2011;
@Atman2009; @Snider2013].


Several creative design process models emphasize the importance of a design
funnel, where ideas and concepts are generated and evaluated over time
[@pugh1991total; @Brown2009]. These concepts are illustrated in design funnel
models, and we incorporated aspects of these models into the design
activity framework. By utilizing this design funnel and providing succinct
definitions, activity motivations, and desired visualization artifacts, such as
design constraints, the design activity framework achieves greater actionability
and flexibility over existing visualization design process models. Additionally,
principles that show a flow of activities that is complex, iterative, and
multilinear increase the flexibility supported by the design activity framework.





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
user-centered design methods, but they do not always state the connections to
the larger design process which limits both the discoverability and
actionability of these methods. In many design studies, researchers interview
users to derive requirements for a visualization tool [@Goodall2005;
@Erbacher2012; @Brehmer2014; @McCurdy2015; @Kerzner2015; @Quinan2015]. Other
methods for deriving user requirements include the personas design method
[@Stoll2008a], qualitative coding, and data sketches [@McKenna2015]. Others
promote similar design-first, co-creation, or creative approaches to help find
innovative visualization solutions, emphasizing visual concepts before user
requirements [@Paul2015; @Goodwin2013a; @Landstorfer2014]. Several researchers
have used iterative usability studies and user feedback to improve upon the
design of a visualization prototype [@Komlodi2005; @Hao2013a; @mckenna2016].
Many of the visualization models capture more of an engineering design process,
with a testing or evaluation phase [@Chee2011; @Tory2004; @Wassink2009;
@Lloyd2011] that does not support the role of evaluation and decisions
throughout the process. User-centered design methods can be evaluative at any
step or phase, to limit or narrow the choice of potential artifacts going
forward. This gap stems from a lack of emphasis on evaluative methods in
existing visualization design process models, but there exist a plethora of
design methods that get utilized in real-world projects and that could be
introduced to visualization designers if a model supported their
discoverability.





## Pedagogy of Data Visualization Design

Another crucial aspect for visualization design models is how easily they can be
introduced, taught, and understood by novice visualization designers. Few
visualization process models have been studied and reported on their use in a
classroom setting, which is one approach to evaluate a model. Existing process
models for visualization could be improved to more clearly outline the desired,
achievable visualization artifacts. Furthermore, the actionability of such
models has not been studied or explored. For example, actionable guidance might
provide a more step-by-step walk-through [@Roberts2015] for the design process,
and illustrative examples of the design process can further add to the
actionability of a model.


Over time, pedagogy for data visualization has shifted from more theoretical
concepts to emphasizing more actionable skills, such as design critique and
critical analysis [@Rushmeier2007; @Hearst2016b; @He2017]. As educators
incorporate aspects such as active learning [@Beyer2016; @Godwin2016;
@Hearst2016b] and design workshops [@He2017; @Huron2016; @Zoss2016] into the
classroom, it is important to teach concepts like design thinking to students
[@He2017]. To this purpose, He and Adar utilized a card-based toolkit
to teach visualization design thinking to
students in class workshops [@He2017]. Moreover, teaching design thinking to
students emphasizes how to generate ideas broadly and how to avoid refining
ideas too early [@Roberts2015].


However, novices may struggle in visualization design projects since existing
design models outlined in textbooks [@Ware2010; @Shneiderman2004] and research
papers [@Munzner2014; @Sedlmair2012b] utilize high-level terminology that is
often theory-based and less actionable out of context. Simplifying such
terminology and focusing on comprehensive aspects [@Kindlmann2016] help students
understand and apply concepts more readily. Furthermore, steps for the ideation
process have been outlined by the five design-sheet methodology with worksheets
[@Roberts2015], but broader steps beyond just
ideation would be beneficial for visualization design pedagogy. The design
activity framework and worksheets provide such a step-by-step description that
increases not only its achievability but actionability as a visualization design
process model.

