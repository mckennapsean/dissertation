
# Background and Related Work {#sec:background}

<!--
**_TODO_**:

  - section on agile development

-->

Visualization design and research has explored many facets of design, from the process to decisions made throughout.
In this chapter, we will first explore how creativity has played a blossoming role in recent work.
On the theoretical side, we focus on two types of visualization models, process and decision models [@Meyer].
For visualization design, we discuss the primary decision model, the nested model [@Munzner2009; @Meyer].
For process models, the HCI field has identified two differing approaches to the design process: creative versus engineering [@Lowgren1995; @Howard2008; @Wolf2006; @Moere2011].
Together, these two approaches can complement and enrich a design process.
Furthermore, we reflect on the role and use of user-centered design throughout visualization design.
In the next chapter, we will introduce the design activity framework as a way to connect these design decisions to a design process which supports a combination of engineering and creative approaches for user-centered design.





## Bridging Creativity into Visualization Design

When working with other designers, we discovered a disparity with how other visualization designers incorporate creativity into the design process.
Although some visualization researchers
stress that design and creativity research methods can play
an effective role in visualization design
[@Lloyd2011; @Goodwin2013a; @Moere2011], design research also tends to
more explicitly emphasize and highlight the complex nature
of the design process [@Baker2010; @Cao2010], as well as
put an emphasis on constraints for design
[@Onarheim2010; @Savage1998]. It is not clear, however,
how this design research explicitly addresses or captures
well-established visualization design decisions, namely
those described by the levels of the nested
model [@Munzner2009]. We struggled to
reconcile the visualization design decisions we wanted to
make with these various creative process models.


By reflecting on our own design process in [@sec:formulation], we
identified a need for a process framework that balances
the flexibility and actionability of models from the design
community with the explicit artifacts and decisions necessary
for visualization design.
We developed the
design activity framework to overcome shortcomings in
existing visualization design process
models [@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011; @Goodwin2013a; @DIS2010; @Sedlmair2012b]
and to incorporate ideas from a broad range of models in
HCI [@Wolf2006; @Vredenburg2002; @Rudisill1995]
and
design [@Lowgren1995; @Howard2008; @Wolf2006; @Cardella2008; @Jones2008; @Brown2009; @Lidwell2010; @Ware2010; @Wodehouse2010a; @DaGandra2012; @Teal2010; @Wu2011; @Atman2009; @Snider2013].






## Types of Visualization Models

Visualization research often involves the creation of new
visual encodings, interaction techniques, and systems. This
process of making something new is why design plays an
integral role in research [@Fallman2003a]. As such,
there exist a variety of theoretical models for
visualization design and even more that have been adapted
and used by visualization designers. In this work, we focus
on two kinds of models for visualization design: decision
models and process models [@Meyer]. **Decision
models** capture the *what* and *why* of design
by characterizing the rationale behind the decisions that a
designer makes. **Process models**, on the other hand,
capture the *how* of design, characterizing the
actions that a designer takes as a series of steps. Linking
a process model to a decision model enables visualization
designers to verify and validate the design decisions they
make along each step of the design process. This link is
highlighted by Sch\mbox{\"{o}}n's reflection-in-action concept,
which emphasizes that the processes of doing and thinking are
complementary to each other [@Schon1983]; thus, the
design process and its many design decisions are intricately
interconnected.


### Design Decision Models

Many researchers have explored the general act of
decision-making in design. A detailed model by Christiaans and
Almendra captures both the mindset and strategies of
designers, such as problem-driven versus solution-driven,
along with specific operationalization of that mindset, or
how decisions get made by an individual or a team, such as
autocratic versus autonomic [@Christiaans2010].
Similarly, Tang et al. divide design decisions into
three groups: planning, problem space, and solution space
decisions, in order to better realize the effect decisions
have on design [@Tang2010]. Through studying the process
of expert designers, Wu et al. identify three classes of
design strategies: forward working, problem switching, and
backward working strategies [@Wu2011]. Furthermore,
several researchers have broken down decision-making into
different kinds of high-level design judgments: e.g.
appearance, compositional, navigational, etc.
[@Nelson2003; @Wolf2006]. These many models have a
utility to analyze and compare general decisions and
strategies for design, but they do not capture the
specific decisions that visualization designers face when
representing and encoding data in an interactive
visualization system.


Within the visualization community, the well-cited nested
model [@Munzner2009] is the de facto design decision
model. This model characterizes visualization design
decisions as occurring at one of four levels: domain
characterization, data and task abstraction, visual encoding
and interaction, and algorithm. A recent extension to the
model, called the nested blocks and guidelines model [@Meyer],
provides a more fine-grained 
characterization of individual design decisions as blocks at
each level, with guidelines describing the relationships
between blocks. Together, blocks and guidelines relate the
visualization decisions a designer makes, with regard to
finding good blocks in the design of a visualization. It is
important to stress that the nested model, as well as the
nested blocks and guidelines model, are not process models; they do
not describe 
*how* to design a visualization, only the types of
decisions (*what*) and rationale (*why*) that
a visualization designer needs to make along the way
[@Meyer].


### Design Process Models

Unlike a decision model, a design process model focuses on
describing the specific steps a designer takes  over the
course of designing a visualization. In this regard, we
consider design as a challenge that combines and mixes both
engineering and creative design processes
[@Lowgren1995; @Howard2008; @Wolf2006; @Moere2011], and this balanced
mixture is what we sought in the synthesis of the design
activity framework. An **engineering design process**
begins with a problem definition, where the overall process
is largely sequential and convergent towards a single
solution [@Lowgren1995]. On the other hand, a
**creative design process** begins with more gradual
problem scoping, and the process has many overlapping
activities where many different possibilities are explored
before choosing a single solution [@Lowgren1995]. As
recognized by researchers in the design [@Howard2008],
HCI [@Wolf2006; @Lowgren1995], and visualization [@Moere2011]
communities, the combination and balanced mixture of these
two types of process models is useful for characterizing the
design process. 


Visualization-specific design process models describe unique aspects for
designing and evaluating visualization systems; however,
they largely do not connect back to visualization design decisions
and do not explicitly incorporate aspects of a
creative design process. 
The seminal research
method of multidimensional longitudinal case
studies [@Shneiderman2006] proposes a process and
specific methods for assessing and evaluating visualization
systems deployed in the wild. This model, however, does not
cover the creation and
development of a visualization system. More abstracted design process
models for 
visualization have also been proposed in a variety of forms ---
waterfall, cyclical, and spiral --- to perform
user-centered design [@Chee2011; @Tory2004; @Wassink2009],
but they are solely engineering design process
models. The design process model used by both Lloyd
et al. [@Lloyd2011] and Goodwin et al. [@Goodwin2013a]
is drawn from an international standard on human-centered
design, ISO13407, which has recently been updated,
ISO9241-210 [@DIS2010]. This standard's model
describes different design activities as a cycle, emphasizing an
engineering approach. Goodwin et al. accompany this engineering
process model with specific methods for eliciting creativity
from end users [@Goodwin2013a], a step towards including
aspects of a creative design process.
Vande Moere and Purchase further characterize the role of
design in visualization, arguing for a balanced approach
that mixes both creative and engineering aspects [@Moere2011].
Although the
visualization community is beginning to embrace aspects of
a creative design process, none of these process models
explicitly link back to visualization design decisions.


The model closest to the design activity framework is the nine-stage
framework for conducting
design studies [@Sedlmair2012b], which captures the  steps from initial
planning through the reflective analysis of a complete
project.  The middle core stages of the model describe the
steps involved with designing a visualization system, with
four stages that, at a high level, are similar in motivation
to the proposed design activity framework. In some of these
middle stages, the levels of the nested model are mentioned;
however, an explicit description of what types of artifacts
should be expected at each step is not provided.
Furthermore, the model as a whole only loosely captures the
overlapping and iterative nature of visualization design, as
well as the role of evaluation throughout. The
nine-stage framework, although the first model of its kind to
provide guidance for conducting design studies, does not
give actionable advice for knowing what stage a designer is
in, what kinds of methods to employ, or the specific
artifacts and decisions a designer should make, particularly
in the middle four design stages. The design activity
framework is largely inspired by the nine-stage framework,
in particular to provide actionable guidance not currently
available within this process model.





##  User-Centered Design for Visualization

User-centered design is a promising approach to build better and more effective visualization tools.
By focusing on the needs, wants, and limitations of users, user-centered design enables users to achieve their goals more effectively, efficiently, and with increased satisfaction, thus providing benefits such as increased productivity, better accessibility, reduced stress and risk of harm, and an improved user well-being [@DIS2010].
User-centered design has become widely accepted within the HCI community [@Tory2004] and slowly become more popular and accepted within the visualization community as well.
Many different visualization practitioners have illustrated potential phases of a user-design process [@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011],
but each of these lacks the connection to design decisions and potential design methods.
Many of these visualization models contain differing phases,
and others have even reflected on existing models and extended them, such as adding a deployment phase as a result of utilizing Lloyd and Dyke's user-centered design model in a design study with investigative journalists [@Brehmer2014].
For visualization, user-centered design plays a vital role to capturing elements of the design process,
but there is no clear definition of the phases of this process nor how this connects to design decisions or methods.


For visualization design, many papers report use and benefit of user-centered design methods, but a connection back to the larger design process is not always clear.
In many design studies, researchers often interview users to derive requirements for a visualization tool [@Goodall2005; @Erbacher2012; @Brehmer2014; @McCurdy2015; @Kerzner2015; @Quinan2015].
There are other methods for deriving user requirements, such as the personas design method [@Stoll2008a] or qualitative coding and data sketches [@McKenna2015].
Others promote similar design-first, co-creation, or creative approaches to help find innovative visualization solutions, emphasizing visual concepts before user requirements [@Paul2015; @Goodwin2013a; @Landstorfer2014].
Several researchers have used iterative usability studies and user feedback to improve upon the design of a visualization prototype [@Komlodi2005; @Hao2013a; @mckenna2016].
Many of the visualization models capture more of an engineering design process, with a testing or evaluation phase [@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011].
However, design methods can be evaluative at any step or phase, to limit or narrow the choice of potential artifacts going forward.
This points to another gap between existing visualization design process models and the plethora of design methods that get utilized.

