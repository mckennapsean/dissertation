# Background and Related Work {#sec:background}

Research in visualization design has explored many facets of design, from the
process and its steps to the design decisions made throughout. In this chapter,
we first investigate how visualization research on design utilizes the complex
and flexible nature of the creative process. On the theoretical side, we focus
on two types of visualization design models, process and decision models
[@Meyer]. For visualization design, we discuss the primary decision model used
in the field, the nested model [@Munzner2009; @Meyer]. For process models, the
human-computer interaction (HCI) community has identified two differing
approaches to the design process: creative and engineering [@Lowgren1995;
@Howard2008; @Wolf2006; @Moere2011]. Together, these approaches can complement
and enrich a design process. Furthermore, we reflect on the role and use of
human-centered design methods throughout visualization design. Following this,
we explore the role of design in the pedagogy of the data visualization and HCI
communities. In the next chapter, we will introduce the design activity
framework as a way to bridge design activities with the decisions a
visualization designer might make, supporting both an engineering and creative
approach for data visualization design.





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
steps. Linking a process model to a decision model enables visualization
designers to verify and validate the design decisions they make along each step
of the design process. This link is highlighted by Sch\mbox{\"{o}}n's
reflection-in-action concept [@Schon1983], which emphasizes that the processes
of doing and thinking are complementary to each other; thus, the design process
and its many design decisions are intricately interconnected.


### Design Decision Models

Many researchers have explored the general act of decision-making in design. A
detailed model by Christiaans and Almendra captures both the mindset and
strategies of designers, such as problem-driven (targeting a specific
description of a challenge, such as generating software requirements) versus
solution-driven (focusing on a small set of possible solutions, such as
repurposing an existing tool or technique) [@Christiaans2010]. These strategies
get combined with specific operationalizations of that mindset as well as with
how decisions get made by an individual or a team, such as autocratic versus
autonomic. Similarly, Tang et al. divide design decisions into three groups:
planning, problem space, and solution space decisions, in order to better
realize the effect decisions have on design [@Tang2010]. Through studying the
process of expert designers, Wu et al. identify three classes of design
strategies: forward working (from abstract to concrete), backward working (from
concrete to abstract), and problem switching (alternating between the two)
[@Wu2011]. Furthermore, several researchers have broken down decision-making
into different kinds of high-level design judgments, e.g., appearance,
compositional, navigational, etc. [@Nelson2003; @Wolf2006]. These decision
models are useful for analyzing and comparing general decisions and strategies
for design, but they do not capture the specific decisions that visualization
designers face when representing and encoding data in an interactive
visualization system.


Within the visualization community, the well-cited nested model [@Munzner2009]
is the de facto design decision model. This model characterizes visualization
design decisions as occurring at one of four levels: domain characterization,
data and task abstraction, visual encoding and interaction, and algorithm. A
recent extension to the model, called the nested blocks and guidelines model
[@Meyer], provides a more fine-grained characterization of individual design
decisions as blocks at each level, with guidelines describing the relationships
between blocks. Together, blocks and guidelines relate the visualization
decisions a designer makes, with regard to finding good blocks in the design of
a visualization. It is important to stress that the nested model, as well as the
nested blocks and guidelines model, are not process models; they do not describe
_how_ to design a visualization, only the types of decisions (_what_) and
rationale (_why_) that a visualization designer formulates along the way
[@Meyer].


### Design Process Models

Unlike a decision model, a design process model focuses on describing the
specific steps a designer takes over the course of designing a visualization. In
this regard, we consider design as a challenge that combines and mixes both
engineering and creative design processes [@Lowgren1995; @Howard2008; @Wolf2006;
@Moere2011], and this balanced mixture is what we sought in the synthesis of the
design activity framework. An **engineering design process** begins with a
problem definition, where the overall process is largely sequential and
convergent toward a single solution [@Lowgren1995]. On the other hand, a
**creative design process** begins with more gradual problem scoping, and the
process has many overlapping activities in which many different possibilities
are explored before choosing a single solution [@Lowgren1995]. An example of a
creative model is Pugh's process, a design funnel [@pugh1991total] that begins
with concept generation and controlled convergence iterating over time until a
final concept is reached [@buxton2010sketching]. Additionally, sketching is a
crucial aspect for creative design processes, as sketching is not about the
drawing but rather is an activity involving generation, brainstorming, learning,
reasoning, and design thinking [@buxton2010sketching]. As recognized by
researchers in the design [@Howard2008], HCI [@Wolf2006; @Lowgren1995], and
visualization [@Moere2011] communities, the combination and balanced mixture of
these two types of process models is useful for characterizing the design
process for visualization designers.


Visualization-specific design process models describe unique aspects for
designing and evaluating visualization systems; however, they largely do not
connect to visualization design decisions and do not explicitly incorporate
aspects of a creative design process. The seminal research method of
multidimensional longitudinal case studies [@Shneiderman2006] proposes a process
and specific methods for assessing and evaluating visualization systems deployed
in the wild. This model, however, does not cover the creation and development of
a visualization system. More abstracted design process models for visualization
have also been proposed in a variety of forms --- waterfall, cyclical, and
spiral --- to perform user-centered design [@Chee2011; @Tory2004; @Wassink2009],
but they emphasize convergence as in an engineering design process model. The
design process model used by both Lloyd et al. [@Lloyd2011] and Goodwin et al.
[@Goodwin2013a] is drawn from an international standard on human-centered
design, ISO13407, which has recently been updated, ISO9241-210 [@DIS2010]. This
standard's model describes different design activities as a cycle, emphasizing
an engineering approach. Goodwin et al. accompany this engineering process model
with specific methods for eliciting creativity from end users [@Goodwin2013a], a
step toward including aspects of a creative design process. Vande Moere and
Purchase further characterize the role of design in visualization, arguing for a
balanced approach that mixes both creative and engineering aspects [@Moere2011].
By embracing concepts from action design research (ADR), McCurdy et al. applied
ADR to a design study to illustrate how intervention with collaborators shaped
the final visualization design and how they reflected and learned throughout
this process [@McCurdy2016]. Although the visualization community is beginning
to embrace aspects of a creative design process, none of these process models
explicitly link back to visualization design decisions.


The model closest to the design activity framework is the nine-stage framework
for conducting design studies [@Sedlmair2012b] that captures the steps from
initial planning through the reflective analysis of a complete project. The
middle core stages of the model describe the steps involved with designing a
visualization system, with four stages that, at a high level, are similar in
motivation to the proposed design activity framework. In some of these middle
stages, the levels of the nested model are mentioned; however, an explicit
description of what types of artifacts should be expected at each step is not
provided. Furthermore, the model as a whole only loosely captures the
overlapping and iterative nature of visualization design, as well as the role of
evaluation throughout, which McCurdy et al. argue is crucial and should occur
concurrently with building a system [@McCurdy2016]. As such, we consider the
design activity framework as an extension of the four-core design stages in
Sedlmair's model for design studies, focused on helping conduct general
visualization design projects. The nine-stage framework, although the first
model of its kind to provide guidance for conducting design studies, provides
less actionable advice for visualization designers, such as knowing what design
stage they are in, what kinds of methods to employ, or the specific artifacts
and decisions they should make. The design activity framework is largely
inspired by the nine-stage framework but with a focus on providing more
actionable guidance for visualization designers that is not currently available
within the nine-stage framework.





## Incorporating Flexibility in Visualization Design

In a visualization design project where we worked with other types of designers
(discussed in [@sec:formulation]), we discovered a disparity with how other
visualization design models incorporate flexibility into the design process.
Although some visualization researchers argue that design and research methods
can elicit creativity in visualization design [@Lloyd2011; @Goodwin2013a;
@Moere2011], design research also tends to more explicitly emphasize and
highlight the complex nature of the design process [@Baker2010; @Cao2010] as
well as the role of design constraints [@Onarheim2010; @Savage1998]. It is not
clear, however, how this design research explicitly addresses or captures
well-established visualization design decisions, namely those described by the
levels of the nested model [@Munzner2009]. During this project, we struggled to
reconcile the visualization design decisions we wanted to make with these
various creative process models used by other types of designers.


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





## User-Centered Design for Visualization

User-centered design is a promising approach to build better and more effective
visualization tools. By focusing on users' needs, wants, and limitations,
user-centered design can result in more useful, usable, and enjoyable tools that
enable users to achieve their goals more effectively, efficiently, and with
increased satisfaction, thus providing benefits such as increased productivity,
better accessibility, reduced stress and risk of harm, and an improved sense of
well-being [@DIS2010]. User-centered design has become widely accepted within
the HCI community [@Tory2004] and has become more popular and accepted within
the visualization community as well. Many different visualization practitioners
have illustrated potential phases of a user-design process [@Chee2011;
@Tory2004; @Wassink2009; @Lloyd2011], but each lacks the connection to design
decisions and potential design methods. Many of these visualization models
contain differing phases, and researchers have even reflected on existing models
and extended them, such as adding a deployment phase as a result of utilizing
Lloyd and Dyke's user-centered design model in a design study with investigative
journalists [@Brehmer2014]. For visualization, user-centered design plays a
vital role in capturing elements of the design process, but there is no clear
definition of the phases of this process or how these phases connect to design
decisions or methods.


For visualization design, many publications report the use and benefit of
user-centered design methods, but a connection to the larger design process is
not always clear. In many design studies, researchers interview users to derive
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
testing or evaluation phase [@Chee2011; @Tory2004; @Wassink2009; @Lloyd2011].
However, design methods can be evaluative at any step or phase, to limit or
narrow the choice of potential artifacts going forward. This gap stems from a
lack of emphasis on evaluative methods in existing visualization design process
models, but there exist a plethora of design methods that get utilized in
real-world projects and that could be taught to visualization designers.





## Pedagogy of Data Visualization Design

For the past few decades, pedagogy for data visualization and human-computer
interaction has begun to shift from academic or theoretical foundations toward
including skills for design, critique, and critical analysis [@Reimer2003;
@Rushmeier2007; @Hearst2016b; @He2017]. Educators have come to realize that they
must rapidly adapt their teaching methods to the growing body of diverse students
[@Rheingans2016; @Domik2016], from undergraduates across disciplines to graduate
students in standard courses, flipped classrooms [@Rheingans2016; @He2017], and
online environments [@Beyer2016]. A recent approach among educators is to employ
active learning [@Beyer2016; @Godwin2016; @Hearst2016b], where techniques and
methods are used to encourage deeper analysis and synthesis as opposed to just
passively observing a lecture [@Beyer2016]. For example, a common approach
observed in most classroom settings is practical data visualization exercises,
to give students opportunities to critically analyze a data visualization or
existing visualization tool and work with their peers to analyze the outcomes
[@Kerren2008; @He2017].


When it comes to data visualization design, the core concepts of active learning
can help overcome some of the challenges faced by educators when teaching
concepts surrounding design thinking [@He2017], from considering broad divergent
visualization ideas [@Roberts2015], to evaluating based on visualization
principles, and leveraging existing designs to create something new. An
effective pedagogical methodology is the use of design studios incorporated into
the classroom setting [@Greenberg2009; @Reimer2003; @He2017], inspired by its
use in fields such as architecture, design, and art. For visualization,
educators often incorporate these studios as workshops or practical exercises
and also through real-world projects for students to learn about design outside
the classroom [@Kerren2008]. For example, VizItCards [@He2017] was created to
help novices practice, and it is used to reinforce visualization concepts during
workshops. Human-computer interaction educators have noted that computer science
students in a design studio tend to focus more on idea refinement rather than
broad idea generation and innovation [@Cennamo2011]. Other active learning
approaches include the use of design workshops [@He2017; @Huron2016; @Zoss2016],
rich discussions [@Johnson2016; @Craft2016], and design games [@Godwin2016].


Within the data visualization pedagogy, guidance for how to design data
visualizations, both generating and evaluating visualization artifacts, is
missing clear steps for novices. When teaching data visualization design,
educators often incorporate user interface principles [@Shneiderman2004], teach
taxonomies of data and encoding [@Munzner2014], illustrate ideal visual
principles [@Tufte1986; @cairo2012], explain perceptual principles [@Ware2010],
and generally empower students with the ability to evaluate, criticize, and
judge data visualizations. These principles and concepts often get applied in
courses through design critiques or encased within a cumulative project
[@Eggermont2016]. These cumulative projects are an alternative to in-class
design studios, where students must acquire their own datasets, come up with
ideas to visualize data for different tasks, and build an interactive, multiview
visualization system to support these tasks in the data. By providing novices
with realistic, hands-on experience, students can reapply these skills in their
own future projects. However, novices may struggle to conduct their own design
process, perhaps referring to textbooks that include their own design process
methodologies [@Ware2010; @Shneiderman2004] or research papers that detail the
design process or design decisions [@Munzner2014; @Sedlmair2012b], but often
these models are high level, terminology heavy, less actionable, and theoretical
in nature. For novices, it is often useful to have a clear set of guidelines or
instructions to walk through this process for the first time. However, no such
step-by-step guidance currently exists for the data visualization design
process.


Educators have worked on concretizing steps for the ideation process.
Specifically, the five design-sheet methodology [@Roberts2015] utilizes
worksheets to structure and guide visualization students through the ideation
process. This approach by Roberts et al. encourages engineering students to
think divergently and creatively and sketch out ideas on paper when first
designing a visualization. Their approach begins with brainstorming, followed by
three unique designs and a realization sheet for the final tool. The authors
evaluated this teaching methodology with master's-level students in information
visualization. Over several years, 53 students completed these design sheets
over the span of 2 hours to come up with different ways to visualize their own
chosen dataset, after which they received feedback and additional time to
finalize their designs [@Roberts2015]. After grading the sheets, the researchers
compared these grades with the students' project and final course grades, as
well as an anonymous survey, to gather feedback on the entire course including
the design sheets. Generally, they found that the design sheets aided students
in planning and organizing a design section for the project write-up, and it
also encouraged students to think divergently, which is a skill not often taught
in computer science. However, in a workshop at the 2016 IEEE VIS conference that
used these worksheets, we experienced a limitation by using this approach too
soon: many steps must occur first, such as data collection, identifying the
challenge, focusing on a target user, and finding tasks. Roberts et al. elude to
this limitation with different preparation steps [@Roberts2015], but these steps
can be nontrivial and tricky for novices. Thus, it would be beneficial to
establish and evaluate more worksheets beyond just ideation for data
visualization design pedagogy.


Educators also face several unique challenges, such as visualization
preconceptions, visual literacy, classroom time limits, and increasing class
sizes. First, students may have preconceived notions about data visualization
and principles that can affect the learning process and how they evaluate a
given data visualization [@Hearst2016b; @Mustafaraj2016]. Furthermore, the
concept of visualization literacy can be traced back to how we introduce, teach,
and incorporate visualizations throughout schooling, from elementary school
[@Alper2017] and beyond. In college-level courses, a key challenge can be tight
deadlines and schedules [@He2017; @Rheingans2016], with limited course time for
practical exercises, design studios, and cumulative projects, which often last
only a month or two and may include noncolocated learners [@Beyer2016]. As
course enrollments grow, it is important to think of how to scale visualization
design feedback and evaluation; one recommended approach is to utilize peers to
help scale this process and provide students with more practice on visualization
evaluation and critique in order to apply principles and concepts taught
throughout a course [@Willett2016; @Hearst2016b; @Johnson2016]. Additionally,
concepts that are heavily theoretical or mathematical in nature may be more
challenging to teach to novices. Instead, it may be ideal to simplify
terminology and focus on simpler, comprehensive aspects of the theory
[@Kindlmann2016] so that students can more readily grasp, apply, and build upon
these theoretical constructs. In our own experience, we have observed the
challenges of teaching theoretical design aspects such as the nested model
[@Munzner2009] to visualization novices. By simplifying these aspects into a
more step-driven process, students may be able to apply and learn these
visualization design concepts on their own more effectively.

